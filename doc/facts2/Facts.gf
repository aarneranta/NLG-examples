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

  NameObject : Name -> Object ;
  NameValue : Name -> Value ;
  IntValue : Int -> Value ;

}