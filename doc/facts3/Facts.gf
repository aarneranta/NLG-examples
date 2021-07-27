abstract Facts = {

flags startcat = Doc ;

cat
  Doc ;
  Sentence ;
  Fact ;
  Object ;
  Property ;
  Attribute ;
  Modifier ;
  Kind ;
  Value ;
  Name ;

fun
  OneSentenceDoc : Sentence -> Doc ;
  AddSentenceDoc : Doc -> Sentence -> Doc ;

  ConjSentence : Sentence -> Sentence -> Sentence ;
  FactSentence : Fact -> Sentence ;

  KindFact : Object -> Kind -> Fact ;
  PropertyFact : Object -> Property -> Fact ;
  AttributeFact : Attribute -> Object -> Value -> Fact ;

  PropertyKind : Property -> Kind -> Kind ;
  ModifierKind : Kind -> Modifier -> Kind ;

  NumberKindModifier : Int -> Kind -> Modifier ;

  NameObject : Name -> Object ;
  PronObject : Name -> Object ;

  NumberKindValue : Int -> Kind -> Value ;
  NameValue : Name -> Value ;
  IntValue : Int -> Value ;

--------------------
-- data aggregation

  CountKindFact : Int -> Kind -> Fact ;
  CountKindModifierFact : Int -> Kind -> Modifier -> Fact ;
  MaxObjectAttributeFact : Object -> Attribute -> Fact ;
  MinObjectAttributeFact : Object -> Attribute -> Fact ;
  SumAttributeFact : Attribute -> Object -> Int -> Fact ;

  UniqueInKindFact : Object -> Kind -> Fact ;

}