abstract Countries = Facts, CountryNames ** {
fun
  cName : CName -> Name ;
  cdName : CDName -> Name ;
  cdProperty : CDName -> Property ;

-- basic properties
  capital_Attribute : Attribute ;
  area_Attribute : Attribute ;
  population_Attribute : Attribute ;
  continent_Attribute : Attribute ;
  currency_Attribute : Attribute ;

-- kinds
  country_Kind : Kind ;
  city_Kind : Kind ;
  currency_Kind : Kind ;
  inhabitant_Kind : Kind ;

-- specialized expressions for properties
  populationFact : CName -> Int -> Fact ;
  continentFact : CName -> CName -> Fact ;
}
