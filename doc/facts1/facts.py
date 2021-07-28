import pgf
from collections import namedtuple

pgf_file = 'Facts.pgf'
country_file = '../data/countries.tsv'

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
  object = pgf.Expr('NameObject', [mkName(c.country)])
  return [
    pgf.Expr('AttributeFact',[pgf.Expr(attr,[]),object,val])
      for (attr,val) in [
        ('capital_Attribute',    pgf.Expr('NameValue',[mkName(c.capital)])),
        ('area_Attribute',       pgf.Expr('IntValue', [mkInt(c.area)])),
        ('population_Attribute', pgf.Expr('IntValue', [mkInt(c.population)])),
        ('continent_Attribute',  pgf.Expr('NameValue',[mkName(c.continent)])),
        ('currency_Attribute',   pgf.Expr('NameValue',[mkName(c.currency)]))
        ]
    ]

def mkInt(s):
    return pgf.readExpr(str(s))

def mkName(s):
    return pgf.Expr('StringName',[pgf.readExpr(str('"' + s + '"'))])

def main():
    gr = pgf.readPGF(pgf_file)
    countries = get_countries(country_file)
    langs = list(gr.languages.values())
    for lang in langs:
        text = []
        for c in countries:
            for t in country_facts(c):
                text.append(lang.linearize(t))
        print('\n'.join(text))
    
if __name__ == "__main__":
    main()

