concrete FactsEng of Facts = {

lincat
  Fact = Str ;
  Object = Str ;
  Attribute = Str ;
  Value = Str ;
  Name = Str ;

lin
  AtomicFact prop obj val = "the" ++ prop ++ "of" ++ obj ++ "is" ++ val ;

  capital_Attribute = "capital" ;
  area_Attribute = "area" ;
  population_Attribute = "population" ;
  continent_Attribute = "continent" ;
  currency_Attribute = "currency" ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = int.s ;

  StringName str = str.s ;

}