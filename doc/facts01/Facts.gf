abstract Facts = {

cat
  Fact ;
  Object ;
  Attribute ;
  Value ;
  Name ;

fun
  AttributeFact : Attribute -> Object -> Value -> Fact ;

  NameObject : Name -> Object ;
  NameValue : Name -> Value ;
  StringValue : String -> Value ;

}