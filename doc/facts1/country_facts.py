import pgf
import json

pgf_file = 'Countries.pgf'
country_file = '../data/idcountries.tsv'


def name_expr(name):
    return pgf.Expr('name' + 'Name', [])


def string_expr(s):
    return pgf.readExpr(str('"' + s + '"'))

  
def country_facts(c):
  object = pgf.Expr('NameObject', [name_expr(c.country)])
  return [
    pgf.Expr('AttributeFact', [pgf.Expr(attr,[]), object, val])
      for (attr, val) in [
        ('capital_Attribute', name_expr(c.capital)),   
        ('area_Attribute', string_expr(c.area)),
        ('population_Attribute', string_expr(c.population)),
        ('continent_Attribute', name_expr(c.continent)),
        ('currency_Attribute', name_expr(c.currency))
        ]
    ]


def get_countries(filename):
    with open(filename) as file:
        countries = json.loads(file)
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

