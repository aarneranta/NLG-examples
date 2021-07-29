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
  Numeric ;

fun
  OneSentenceDoc : Sentence -> Doc ;           -- S.
  AddSentenceDoc : Doc -> Sentence -> Doc ;    -- D. S.

  ConjSentence : Sentence -> Sentence -> Sentence ; -- S and S
  FactSentence : Fact -> Sentence ;                 -- F

  KindFact : Object -> Kind -> Fact ;               -- O is a K
  PropertyFact : Object -> Property -> Fact ;       -- O is P
  AttributeFact : Attribute -> Object -> Value -> Fact ; -- the A of O is V

  PropertyKind : Property -> Kind -> Kind ;  -- P K
  ModifierKind : Kind -> Modifier -> Kind ;  -- K M

  NumericKindModifier : Numeric -> Kind -> Modifier ; -- with N K

  NameObject : Name -> Object ;  -- N
  PronObject : Name -> Object ;  -- it

  NumericKindValue : Numeric -> Kind -> Value ; -- N K
  NameValue : Name -> Value ;                   -- N
  NumericValue : Numeric -> Value ;             -- N V

  IntNumeric : Int -> Numeric ;          -- I
  IntMillionNumeric : Int -> Numeric ;   -- I million
  IntBillionNumeric : Int -> Numeric ;   -- I billion
  AboutNumeric : Numeric -> Numeric ;    -- about N
  OverNumeric : Numeric -> Numeric ;     -- over N
  UnderNumeric : Numeric -> Numeric ;    -- over N

--------------------
-- data aggregation

  NumericKindFact : Numeric -> Kind -> Fact ;                     -- there are N K
  NumericKindModifierFact : Numeric -> Kind -> Modifier -> Fact ; -- there are N K M
  MaxObjectAttributeFact : Object -> Attribute -> Fact ;          -- O has the largest A
  MinObjectAttributeFact : Object -> Attribute -> Fact ;          -- O has the smallest A
  SumAttributeFact : Attribute -> Object -> Numeric -> Fact ;     -- the total A of O is N

  UniqueInKindFact : Object -> Kind -> Fact ;  -- O is the only K

}