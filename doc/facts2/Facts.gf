abstract Facts = {

flags startcat = Fact ;

cat
  Fact ;
  Object ;
  Property ;
  Value ;
  Name ;

fun
  AtomicFact : Property -> Object -> Value -> Fact ;

  capital_Property : Property ;
  area_Property : Property ;
  population_Property : Property ;
  continent_Property : Property ;
  currency_Property : Property ;

  NameObject : Name -> Object ;
  NameValue : Name -> Value ;
  IntValue : Int -> Value ;

}