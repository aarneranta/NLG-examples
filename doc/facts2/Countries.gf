abstract Countries = Facts, CountryNames ** {
fun
-- basic properties
  capital_Attribute : Attribute ;
  area_Attribute : Attribute ;
  population_Attribute : Attribute ;
  continent_Attribute : Attribute ;
  currency_Attribute : Attribute ;

-- specialized expressions for properties
  populationFact : Object -> Int -> Fact ;
  continentFact : Object -> Name -> Fact ;
}
