import json
import pgf

# assuming: gf-wordnet$ gf -make ParseEng.gf ParseSwe.gf ParseBul.gf

PROPERTY_FILE = 'wikidata_properties.json'
GRAMMAR_FILE = 'Parse.pgf'

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
              (eng, 'en')
          # , (swe, 'sv')
          # , (bul, 'bg')
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

