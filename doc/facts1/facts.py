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
  object = pgf.Expr('StringObject',[string_expr(c.country)])
  return [
    pgf.Expr('AttributeFact',
             [pgf.Expr(attr,[]),object,pgf.Expr('StringValue',[string_expr(val)])])
      for (attr,val) in [
        ('capital_Attribute', c.capital),   
        ('area_Attribute', c.area),
        ('population_Attribute', c.population),
        ('continent_Attribute', c.continent),
        ('currency_Attribute', c.currency)
        ]
    ]

def string_expr(s):
    return pgf.readExpr(str('"' + s + '"'))

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

