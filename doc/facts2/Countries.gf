abstract Countries = Facts, CountryNames ** {
fun
-- basic properties
  capital_Property : Property ;
  area_Property : Property ;
  population_Property : Property ;
  continent_Property : Property ;
  currency_Property : Property ;

-- specialized expressions for properties
  populationFact : Object -> Int -> Fact ;
  continentFact : Object -> Name -> Fact ;
}
