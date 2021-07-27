incomplete concrete FactsFunctor of Facts = open
  Syntax,
  Symbolic,
  Grammar,
  Prelude

in {

lincat
  Doc = Text ;
  Sentence = S ;
  Fact = Cl ;
  Object = {np : NP ; pron : Pron ; isPron : Bool} ;
  Property = AP ;
  Attribute = CN ;
  Modifier = Adv ;
  Kind = CN ;
  Value = NP ;
  Name = NP ;

lin
  OneSentenceDoc sent = mkText sent ;
  AddSentenceDoc doc sent = mkText doc (mkText sent) ;

  ConjSentence a b = mkS and_Conj a b ;
  FactSentence fact = mkS presentTense positivePol fact ;

  KindFact obj kind = mkCl obj.np kind ;
  PropertyFact obj prop = mkCl obj.np prop ;
  AttributeFact attr obj val = case obj.isPron of {
    True => mkCl (mkNP (mkDet obj.pron) attr) val ;
    _ => mkCl (mkNP the_Det (mkCN attr (mkAdv possess_Prep obj.np))) val
    } ;

  PropertyKind prop kind = mkCN prop kind ;
  ModifierKind kind mod = mkCN kind mod ;

  NumberKindModifier int kind = mkAdv with_Prep (mkNP <symb int : Card> kind) ;

  NameObject name = {np = name ; pron = npPron name ; isPron = False} ;
  PronObject name =
    let pron = npPron name in {np = mkNP pron ; pron = pron ; isPron = True} ;

  NumberKindValue int kind = mkNP <symb int : Card> kind ;
  NameValue name = name ;
  IntValue int = symb int ;

  IntMillionValue int = mkNP <symb int : Card> million_N ;
  IntBillionValue int = mkNP <symb int : Card> billion_N ;
  
--------------------
-- data aggregation

  CountKindFact int kind = mkCl (mkNP <symb int : Card> kind) ;
  CountKindModifierFact int kind mod = Grammar.ExistNPAdv (mkNP <symb int : Card> kind) mod ;
  MaxObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN largest_AP attr)) ;
  MinObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN smallest_AP attr)) ;
  SumAttributeFact attr obj int = AttributeFact (mkCN total_AP attr) obj (IntValue int) ;

  UniqueInKindFact obj kind = mkCl obj.np (mkNP the_Det (mkCN only_AP kind)) ;

  
-------------------
oper
  npPron : NP -> Pron = \np -> it_Pron ;

----------------------
-- functor parameters

-- largest_AP : AP
-- smallest_AP : AP
-- total_AP : AP
-- only_AP : AP
-- million_N : N ;
-- billion_N : N ;

}