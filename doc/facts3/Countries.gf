abstract Countries = Facts, CountryNames ** {

flags startcat = Doc ;

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

-- the world
  the_world_CName : CName ;

-- specialized expressions for properties
  populationFact : CName -> Int -> Fact ;
  continentFact : CName -> CName -> Fact ;

-- location as modifier
  inCNameModifier : CName -> Modifier ;
  inCDNameModifier : CDName -> Modifier ; --- feels superfluous
}
