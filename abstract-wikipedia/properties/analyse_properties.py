import sys
import json
import pgf

"""
assuming: 

   gf-wordnet$ gf -make ParseEng.gf ParseSwe.gf

run first 

   python3 analyse_properties PARSE >parsed_properties.json

then 

  python3 analyse_properties.py GF parsed_properties.json

to produce a set of GF files.
"""

PROPERTY_FILE = 'wikidata_properties.json'
PARSE_MODULE = 'Parse'
PARSED_FILE = 'parsed_properties.json'
GF_MODULE = 'Properties'

# from ISO-2 codes used in Wikidata to ISO-3 in RGL
LANGUAGE_CODES = {'en': 'Eng', 'sv': 'Swe'}


def parse_labels(filename=PROPERTY_FILE, langs=LANGUAGE_CODES):

    with open(filename) as file:
        props = [json.loads(line) for line in file]
   
    gr = pgf.readPGF(PARSE_MODULE + '.pgf')
    startcat = pgf.readType("Utt")

    cncs = {code2: gr.languages['Parse' + code3] for (code2, code3) in langs.items()} 

    for p in props:
        data = {'id': p['id']}
        for (code, cnc) in cncs.items():
            if code in p['labels']:
                s = p['labels'][code]
                code = langs[code]  # switch from ISO-2 to ISO-3
                data[code] = {}
                data[code]['label'] = s
                try:
                    pr = cnc.parse(s, startcat)
                    _, tree = pr.__next__()
                    f, xs = tree.unpack()
                    data[code]['cat'] = 'VP' if f[3:] == 'VPShort' else f[3:]
                    data[code]['tree'] = str(xs[0])
                except pgf.ParseError as e:
                    pass
        j = json.dumps(data, ensure_ascii=False)
        print(j)
      

def gf_rules(datas, eng='Eng'):
    langs = [k for k in datas[0].keys() if k != 'id']
    rules = {lang: [] for lang in langs}
    rules['Abstract'] = []
    for data in datas:
        id = data['id']
        if 'cat' in data[eng] and 'tree' in data[eng]:
            cat = data[eng]['cat']
            funid = id + '_' + cat
            label = data[eng]['label']
            rules['Abstract'].append(' '.join(['fun', funid, ':', cat, ';', '--', label]))
            tree = data[eng]['tree']
            for lang in langs:
                if lang in data:
                    llabel = data[lang]['label']
                    if 'cat' in data[lang] and data[lang]['cat'] == cat:
                        ltree = data[lang]['tree']
                    else:
                        llabel += ' NOT PARSED, REPLACED BY ' + label + ' FROM ' + eng 
                        ltree = tree
                    rules[lang].append(' '.join(['lin', funid, '=', ltree, ';', '--'+lang, llabel]))
    return rules


def write_gf(source=PARSED_FILE, target=GF_MODULE):
    with open(source) as lines:
        datas = [json.loads(line) for line in lines]
        rules = gf_rules(datas)
    langname = lambda lang: '' if lang == 'Abstract' else lang 
    for lang in rules:
        with open(target + langname(lang) + '.gf', 'w') as file:
            file.write('--# -path=.:gf-wordnet\n\n')
            if langname(lang):
                header = ('concrete Properties{lang} of Properties = Parse{lang} ' +
                         '[CN, VP, AP, VPS, S, NP, QS, Card, Adv] ' +
                         '** open Parse{lang} in')
                header = header.format(lang=langname(lang)) + ' {\n'
            else:
                header = 'abstract Properties = Parse [CN, VP, AP, VPS, S, NP, QS, Card, Adv] ** {\n'
            file.write(header)
            
            for rule in rules[lang]:
                file.write(rule + '\n')
                
            file.write('}\n')


# all possible values of the 'datatype' field of Wikidata properties
datatypes = {
    'math',
    'globe-coordinate',
    'tabular-data',
    'wikibase-lexeme',
    'wikibase-form',
    'external-id',
    'url',
    'wikibase-sense',
    'monolingualtext',
    'wikibase-property',
    'wikibase-item',
    'time',
    'commonsMedia',
    'quantity'
    'geo-shape'
    'string',
    'musical-notation'
    }


# prints only the json objects with one of given datatypes; default all
def filter_properties(types=datatypes):
  with open(PROPERTY_FILE) as file:
    typs = {}
    for line in file:
        prop = json.loads(line)
        dt = prop['datatype']
        dtc = typs.get(dt, 0)
        if dt in types:
            print(json.dumps(prop, ensure_ascii=False))
        typs[prop['datatype']] = dtc + 1

MODE = 'HELP'
        
if __name__ == '__main__':
    if sys.argv[1:]:
        MODE = sys.argv[1]
    if sys.argv[2:]:
        file = sys.argv[2]
    if MODE=='FILTER':
        types = set(sys.argv[2:])
        filter_properties(types)
    elif MODE=='PARSE':
        parse_labels(file)
    elif MODE=='GF':
        write_gf(file)
    else:
        print("usage: analyse_properties (FILTER <type>* | PARSE <propertyfile>? | GF <parsedfile>?)")

