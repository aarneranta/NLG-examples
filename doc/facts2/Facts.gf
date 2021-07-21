abstract Facts = {

flags startcat = Fact ;

cat
  Fact ;
  Object ;
  Attribute ;
  Value ;
  Name ;

fun
  AtomicFact : Attribute -> Object -> Value -> Fact ;

  NameObject : Name -> Object ;
  NameValue : Name -> Value ;
  IntValue : Int -> Value ;

}