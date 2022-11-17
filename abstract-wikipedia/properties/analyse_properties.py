import json
import pgf

"""
assuming: gf-wordnet$ gf -make ParseEng.gf ParseSwe.gf ParseBul.gf
run first with parse_labels(), saving in a file (I had to save to separate files) 

then with combine_labels():
  python3 analyse_properties.py | grep 'fun ' >Properties.gf
  python3 analyse_properties.py | grep 'lin ' | grep '\-\-en ' | grep -v '\?' >PropertiesEng.gf

the latter for every language separately.
Some unknown functions have to be filtered out
"""

PROPERTY_FILE = 'wikidata_properties.json'
GRAMMAR_FILE = 'Parse.pgf'

def parse_labels():
  props = {}

  with open(PROPERTY_FILE) as file:
    for line in file:
        prop = json.loads(line)
        id = prop['id']
        del prop['id']
        props[id] = prop

    
  gr = pgf.readPGF(GRAMMAR_FILE)

  eng = gr.languages['ParseEng']
  swe = gr.languages['ParseSwe']
  bul = gr.languages['ParseBul']

  for p in props:
    data = {'id': p}
    for (cnc, code) in [
          #    (eng, 'en')
          #  ,
           (swe, 'sv')
          #(bul, 'bg')
            ]:
        if code in props[p]['labels']:
            s = props[p]['labels'][code]
            data[code] = {}
            data[code]['label'] = s
            try:
                pr = cnc.parse(s, cat=pgf.readType("Utt"))
                _, tree = pr.__next__()
                f, xs = tree.unpack()
                data[code]['cat'] = f[3:]
                data[code]['tree'] = str(xs[0])
            except pgf.ParseError:
                pass
    j = json.dumps(data, ensure_ascii=False)
    print(j)

def join_dicts(dicts):
    master = dicts[0]
    for k in master:
        for d in dicts[1:]:
            for p in d.get(k, {}):
                master[k][p] = d[k][p]
    return master


def gf_rules(id, data, langs = ('en', 'bg', 'sv')):
    en = langs[0]
    rules = []
    if en in data and 'cat' in data[en] and 'tree' in data[en]:
        cat = data[en]['cat']
        funid = id + '_' + cat
        label = data[en]['label']
        rules.append(' '.join(['fun', funid, ':', cat, ';', '--', label]))
        tree = data[en]['tree']
        for lang in langs:
            if lang in data and 'cat' in data[lang] and data[lang]['cat'] == cat:
                llabel = data[lang]['label']
                ltree = data[lang]['tree']
            else:
                llabel = label + ' ' + 'ENG'
                ltree = tree
            rules.append(' '.join(['lin', funid, '=', ltree, ';', '--'+lang, llabel]))
    return rules
        

def combine_labels(jsonfiles, jdump=False):
    rawdata = {}
    for file in jsonfiles:
        with open(file) as lines:
            rawdata[file] = {}
            for line in lines:
                dump = json.loads(line)
                id = dump['id']
                rawdata[file][id] = dump
                del rawdata[file][id]['id']
    data = join_dicts(list(rawdata.values()))
    if jdump:
        print(json.dumps(data, ensure_ascii=False, indent=2))

    for id, data in data.items():
        for rule in gf_rules(id, data):
            print(rule)


TREE_FILES = [lang + '_trees.json' for lang in ['eng', 'bul', 'swe']]

combine_labels(TREE_FILES)

