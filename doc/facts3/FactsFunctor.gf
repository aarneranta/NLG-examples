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
  Modifier = {adv : Adv ; rs : RS ; isAdv : Bool} ;
  Act = VP ;
  Kind = CN ;
  Value = NP ;
  Name = {np : NP ; pron : Pron} ;
  Numeric = Card ;
  Date = Adv ;

lin
  OneSentenceDoc sent = mkText sent ;
  AddSentenceDoc doc sent = mkText doc (mkText sent) ;

  ConjSentence a b = mkS and_Conj a b ;
  FactSentence fact = mkS presentTense positivePol fact ;
  ContinuousPastFactSentence fact = mkS pastTense positivePol fact ;
  PunctualPastFactSentence fact = mkS pastTense positivePol fact ;

  KindFact obj kind = mkCl obj.np (mkNP a_Det kind) ; --- sind ein Land
  PropertyFact obj prop = mkCl obj.np prop ;
  AttributeFact attr obj val = case obj.isPron of {
    True => mkCl (mkNP (mkDet obj.pron) attr) val ;
    _ => mkCl (mkNP the_Det (mkCN attr (mkAdv possess_Prep obj.np))) val
    } ;
  ActFact obj act = mkCl obj.np act ;

  PropertyKind prop kind = mkCN prop kind ;
  ModifierKind kind mod = case mod.isAdv of {
    False => mkCN kind mod.rs ;
    True => mkCN kind mod.adv
    } ;

  ActModifier act = mkModifier (mkRS (mkRCl which_RP act)) ;
  ContinuousPastActModifier act = mkModifier (mkRS pastTense (mkRCl which_RP act)) ;
  PunctualPastActModifier act = mkModifier (mkRS pastTense (mkRCl which_RP act)) ;

  NumericKindModifier num kind = mkModifier (mkAdv with_Prep (mkNP num kind)) ;

  NameObject name = name ** {isPron = False} ;
  PronObject name = {np = mkNP name.pron ; pron = name.pron ; isPron = True} ;

  NumericKindValue num kind = mkNP num kind ;
  NameValue name = name.np ;
  NumericValue num = mkNP (mkDet num) ;

  IntNumeric int = <symb int : Card> ;
  
--------------------
-- data aggregation

lincat
  [Object] = [NP] ;

lin
  BaseObject o p = BaseNP o.np p.np ;
  ConsObject o os = ConsNP o.np os ;
  ConjObject objs = {np = ConjNP and_Conj objs ; pron = they_Pron ; isPron = False} ;

  NumericKindFact num kind = mkCl (mkNP num kind) ;
  NumericKindModifierFact num kind mod = case mod.isAdv of {
    False => mkCl (mkNP num (mkCN kind mod.rs)) ;
    True => Grammar.ExistNPAdv (mkNP num kind) mod.adv
    } ;
  MaxObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN largest_AP attr)) ;
  MinObjectAttributeFact obj attr = mkCl obj.np have_V2 (mkNP the_Det (mkCN smallest_AP attr)) ;
  SumAttributeFact attr obj int = AttributeFact (mkCN total_AP attr) obj (NumericValue int) ;

  UniqueInKindFact obj kind = mkCl obj.np (mkNP (mkDet the_Quant (npNum obj.np)) (mkCN only_AP kind)) ;
  FirstInKindFact obj kind = mkCl obj.np (mkNP (mkDet the_Quant (npNum obj.np)) (mkCN first_AP kind)) ;

  
-------------------
oper
  npPron : NP -> Pron = \np -> it_Pron ;

  mkModifier = overload {
    mkModifier : Adv -> Modifier = \adv -> lin Modifier {adv = adv ; rs = mkRS (mkRCl which_RP adv) ; isAdv = True} ;
    mkModifier : RS -> Modifier = \rs -> lin Modifier {adv = somewhere_Adv ; rs = rs ; isAdv = False} --- adv not used
    } ;

  first_AP = mkAP (mkOrd (mkNumeral "1")) ;
  
----------------------
-- functor parameters

-- largest_AP : AP
-- smallest_AP : AP
-- total_AP : AP
-- only_AP : AP
-- about_AdN : AdN
-- npNum : NP -> Num 

}