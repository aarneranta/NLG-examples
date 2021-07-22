from data_facts import *

pgffile = 'Countries.pgf'
datafile = 'countries.tsv'

def country_facts(factsys,c):
  cname = factsys.mkCatName(c.country)
  object = mkApp('NameObject', [factsys.mkName(c.country)])
  return [
    mkApp('AtomicFact',[mkApp('capital_Attribute',[]),object,mkApp('NameValue',[factsys.mkName(c.capital)])]),
    mkApp('AtomicFact',[mkApp('area_Attribute',[]),object,mkApp('IntValue',[mkInt(c.area)])]),
    mkApp('populationFact', [cname,mkInt(c.population)]),
    mkApp('continentFact', [cname,factsys.mkCatName(c.continent)]),
    mkApp('AtomicFact',[mkApp('currency_Attribute',[]),object,mkApp('NameValue',[factsys.mkName(c.currency)])])
    ]

def countries_facts(factsys,cs):
    return [t for c in cs for t in country_facts(factsys,c)]

def main():
    factsys = FactSystem(
      'Country',
      'country capital area population continent currency',
      'CName', 'cName',
      lambda t: t.country
      )
    factsys.run(pgffile,datafile, countries_facts)
    
if __name__ == "__main__":
    main()

