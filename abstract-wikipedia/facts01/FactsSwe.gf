concrete FactsSwe of Facts = {

lincat
  Fact = Str ;
  Object = Str ;
  Attribute = Str ;
  Value = Str ;

lin
  AttributeFact attr obj val = obj ++ Predef.BIND ++ "s" ++ attr ++ "är" ++ val ;
--  AttributeFact attr obj val = obj ++ "har" ++ val ++ "som" ++ attr ;

  capital_Attribute = "huvudstad" ;
  area_Attribute = "yta" ;
  population_Attribute = "befolkning" ;
  continent_Attribute = "världsdel" ;
  currency_Attribute = "valuta" ;

  StringObject str = str.s ;
  StringValue str = str.s ;

}