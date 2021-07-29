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
  Numeric = Det ;

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

  NumericKindModifier num kind = mkAdv with_Prep (mkNP num kind) ;

  NameObject name = {np = name ; pron = npPron name ; isPron = False} ;
  PronObject name =
    let pron = npPron name in {np = mkNP pron ; pron = pron ; isPron = True} ;

  NumericKindValue num kind = mkNP num kind ;
  NameValue name = name ;
  NumericValue num = mkNP num ;

  IntNumeric int = mkDet <symb int : Card> ;
-- in instantiations
--
--  IntMillionNumeric int = 
--  IntBillionNumeric int = 
--  AboutNumeric num = 
--  OverNumeric num = 
--  UnderNumeric num = 
  
--------------------
-- data aggregation

  NumericKindFact num kind = mkCl (mkNP num kind) ;
  NumericKindModifierFact num kind mod = Grammar.ExistNPAdv (mkNP num kind) mod ;
  MaxObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN largest_AP attr)) ;
  MinObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN smallest_AP attr)) ;
  SumAttributeFact attr obj int = AttributeFact (mkCN total_AP attr) obj (NumericValue int) ;

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
-- about_AdN : AdN ;

}