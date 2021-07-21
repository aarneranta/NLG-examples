import pgf
from extract_names import mkFun
from collections import namedtuple

pgf_file = 'Countries.pgf'
country_file = 'countries.tsv'

def get_countries(filename):
    countries = []
    Country = namedtuple('Country',
                'country capital area population continent currency')
    file = open(filename)
    for line in file:
        fields = Country(*line.split('\t'))
        countries.append(fields)
    return countries
     
def country_facts(c):
  cname = mkCName(c.country)
  object = mkApp('NameObject', [mkName(c.country)])
  return [
    mkApp('AtomicFact',[mkApp('capital_Attribute',[]),object,mkApp('NameValue',[mkName(c.capital)])]),
    mkApp('AtomicFact',[mkApp('area_Attribute',[]),object,mkApp('IntValue',[mkInt(c.area)])]),
    mkApp('populationFact', [cname,mkInt(c.population)]),
    mkApp('continentFact', [cname,mkCName(c.continent)]),
    mkApp('AtomicFact',[mkApp('currency_Attribute',[]),object,mkApp('NameValue',[mkName(c.currency)])])
    ]

def mkApp(f,xs):
    return pgf.Expr(f,xs)

def mkInt(s):
    return pgf.readExpr(str(s))

def mkCName(s):
    return mkApp(mkFun(s.strip(),'CName'),[])

def mkName(s):
    return mkApp('cName', [mkCName(s)])
#    return mkApp('StringName',[pgf.readExpr(str('"' + s + '"'))])

def main():
    gr = pgf.readPGF(pgf_file)
    countries = sorted(list(get_countries(country_file)))
    langs = list(gr.languages.values())
    for lang in langs:
        text = []
        for c in countries:
            for t in country_facts(c):
                text.append(lang.linearize(t))
        print('\n'.join(text))
    
if __name__ == "__main__":
    main()

