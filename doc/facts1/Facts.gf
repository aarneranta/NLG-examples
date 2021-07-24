abstract Facts = {

flags startcat = Fact ;

cat
  Fact ;
  Object ;
  Attribute ;
  Value ;
  Name ;

fun
  AttributeFact : Attribute -> Object -> Value -> Fact ;

  capital_Attribute : Attribute ;
  area_Attribute : Attribute ;
  population_Attribute : Attribute ;
  continent_Attribute : Attribute ;
  currency_Attribute : Attribute ;

  NameObject : Name -> Object ;
  NameValue : Name -> Value ;
  IntValue : Int -> Value ;

  StringName : String -> Name ;

}