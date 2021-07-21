from data_facts import *

pgffile = 'Countries.pgf'
datafile = 'countries.tsv'
tuplename = 'Country'
fieldnames = 'country capital area population continent ccode cname'
cat = 'CName'
coercion = 'cName'
     
def country_facts(ct_,co_,fs_,c):
  cname = mkCatName(cat,c.country)
  object = mkApp('NameObject', [mkName(cat,coercion,c.country)])
  return [
    mkApp('AtomicFact',[mkApp('capital_Attribute',[]),object,mkApp('NameValue',[mkName(cat,coercion,c.capital)])]),
    mkApp('AtomicFact',[mkApp('area_Attribute',[]),object,mkApp('IntValue',[mkInt(c.area)])]),
    mkApp('populationFact', [cname,mkInt(c.population)]),
    mkApp('continentFact', [cname,mkCatName(cat,c.continent)]),
    mkApp('AtomicFact',[mkApp('currency_Attribute',[]),object,mkApp('NameValue',[mkName(cat,coercion,c.cname)])])
    ]

def main():
    run(pgffile,datafile,tuplename,fieldnames,cat,coercion,facts = country_facts)
    
if __name__ == "__main__":
    main()

