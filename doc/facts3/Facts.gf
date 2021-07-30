abstract Facts = {

flags startcat = Doc ;

cat
  Doc ;       -- complete document
  Sentence ;  -- sentence with determinate tense and polarity
  Fact ;      -- predicative clause whose tense and polarity can vary
  Object ;    -- argument in predication, either constant or pronoun
  Property ;  -- modifying adjectival phrase, e.g. "European"
  Attribute ; -- single property of an object, e.g. "population"
  Modifier ;  -- post-modifier, e.g. adverbial phrase or relative clause
  Kind ;      -- type of objects, e.g. "European country"
  Value ;     -- value of an attribute, such as entity name or numeric
  Name ;      -- name of an entity, e.g. "Honduras", "South America"
  Numeric ;   -- cardinal number, e.g. "23", "100 million", "over a billion" 

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
  IntTrillionNumeric : Int -> Numeric ;  -- I billion
  a_billion_Numeric : Numeric ;          -- a billion
  AboutNumeric : Numeric -> Numeric ;    -- about N
  OverNumeric : Numeric -> Numeric ;     -- over N
  UnderNumeric : Numeric -> Numeric ;    -- over N

--------------------
-- data aggregation

cat
  [Object] {2} ;

fun
  ConjObject : [Object] -> Object ;  -- O, O and O
  
  NumericKindFact : Numeric -> Kind -> Fact ;                     -- there are N K
  NumericKindModifierFact : Numeric -> Kind -> Modifier -> Fact ; -- there are N K M
  MaxObjectAttributeFact : Object -> Attribute -> Fact ;          -- O has the largest A
  MinObjectAttributeFact : Object -> Attribute -> Fact ;          -- O has the smallest A
  SumAttributeFact : Attribute -> Object -> Numeric -> Fact ;     -- the total A of O is N

  UniqueInKindFact : Object -> Kind -> Fact ;  -- O is the only K

}