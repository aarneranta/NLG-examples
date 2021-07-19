concrete FactsEnglish of Facts = {

lincat
  Fact = Str ;
  Object = Str ;
  Property = Str ;
  Value = Str ;
  Name = Str ;

lin
  AtomicFact prop obj val = "the" ++ prop ++ "of" ++ obj ++ "is" ++ val ;

  capital_Property = "capital" ;
  area_Property = "area" ;
  population_Property = "population" ;
  continent_Property = "continent" ;
  currency_Property = "currency" ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = int.s ;

  StringName str = str.s ;

}