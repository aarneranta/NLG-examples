from data_facts import *

pgffile = 'Countries.pgf'
datafile = '../data/countries.tsv'

def country_facts(factsys,tuple):
    countr = factsys.str2exp("CName",factsys.datakey(tuple))
    cap    = factsys.str2exp('Name',tuple.capital)
    cont   = factsys.str2exp('CName',tuple.continent)
    curr   = factsys.str2exp('Name',tuple.currency)
    pop    = mkInt(tuple.population)
    are    = mkInt(tuple.area)

    factsys.grammar.embed("G")
    import G
    object = G.NameObject(G.cName(countr))
    
    return [
      G.AttributeFact(G.capital_Attribute, object, G.NameValue(cap)),
      G.AttributeFact(G.area_Attribute, object, G.IntValue(are)),
      G.populationFact(countr, pop),
      G.continentFact(countr, cont),
      G.AttributeFact(G.currency_Attribute, object, G.NameValue(curr))
      ]

def countries_facts(factsys,cs):
    return [t for c in cs for t in country_facts(factsys,c)]

def mkInt(s):
    return pgf.readExpr(str(s))

def main():
    gr = pgf.readPGF('Countries.pgf')

    factsys = FactSystem(
      'country capital area population continent currency',
      lambda t: t.country,
      gr,
      'CountriesEng'
      )
    factsys.run(datafile, countries_facts)
    
if __name__ == "__main__":
    main()

