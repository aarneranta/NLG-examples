import pgf
from extract_names import mkFun
from collections import namedtuple

pgf_file = 'Countries.pgf'
country_file = 'countries.tsv'

def get_countries(filename):
    countries = []
    Country = namedtuple('Country',
                'country capital area population continent ccode cname')
    file = open(filename)
    for line in file:
        fields = Country(*line.split('\t'))
        countries.append(fields)
    return countries
     
def country_facts(c):
  object = mkApp('NameObject', [mkName(c.country)])
  return [
    mkApp('AtomicFact',[mkApp('capital_Attribute',[]),object,mkApp('NameValue',[mkName(c.capital)])]),
    mkApp('AtomicFact',[mkApp('area_Attribute',[]),object,mkApp('IntValue',[mkInt(c.area)])]),
    mkApp('populationFact', [object,mkInt(c.population)]),
    mkApp('continentFact', [object,mkName(c.continent)]),
    mkApp('AtomicFact',[mkApp('currency_Attribute',[]),object,mkApp('NameValue',[mkName(c.cname)])])
    ]

def mkApp(f,xs):
    return pgf.Expr(f,xs)

def mkInt(s):
    return pgf.readExpr(str(s))

def mkName(s):
    return mkApp(mkFun(s.strip(),'Name'),[])
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

