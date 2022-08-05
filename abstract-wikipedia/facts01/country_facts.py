import pgf
import json
from extract_names import abbreviate

pgf_file = 'Countries.pgf'
country_file = '../data/idcountries.json'


def name_expr(name):
    return pgf.Expr(abbreviate(name) + '_Name', [])


def string_value(s):
    return pgf.Expr('StringValue', [pgf.readExpr(str('"' + s + '"'))])

def name_value(s):
    return pgf.Expr('NameValue', [name_expr(s)])
  
  
def country_facts(c):
  object = pgf.Expr('NameObject', [name_expr(c['country'])])
  return [
    pgf.Expr('AttributeFact', [pgf.Expr(attr,[]), object, val])
      for (attr, val) in [
        ('capital_Attribute', name_value(c['capital'])),   
        ('area_Attribute', string_value(c['area'])),
        ('population_Attribute', string_value(c['population'])),
        ('continent_Attribute', name_value(c['continent'])),
        ('currency_Attribute', name_value(c['currency']))
        ]
    ]


def get_countries(filename):
    with open(filename) as file:
        countries = json.load(file)
    return countries


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

