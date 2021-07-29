abstract Facts = {

flags startcat = Fact ;

cat
  Fact ;
  Object ;
  Attribute ;
  Value ;

fun
  AttributeFact : Attribute -> Object -> Value -> Fact ;

  capital_Attribute : Attribute ;
  area_Attribute : Attribute ;
  population_Attribute : Attribute ;
  continent_Attribute : Attribute ;
  currency_Attribute : Attribute ;

  StringObject : String -> Object ;
  StringValue : String -> Value ;

}