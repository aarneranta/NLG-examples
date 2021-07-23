incomplete concrete FactsFunctor of Facts = open Syntax, Symbolic, Prelude in {

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

oper
  npPron : NP -> Pron = \np -> it_Pron ;

}