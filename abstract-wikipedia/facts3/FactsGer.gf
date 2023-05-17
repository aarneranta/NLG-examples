concrete FactsGer of Facts = FactsFunctor - [
    npPron,
    AttributeFact,
    PunctualPastFactSentence, PunctualPastActModifier
  ] with
  (Syntax = SyntaxGer),
  (Symbolic = SymbolicGer),
  (Grammar = GrammarGer)

  ** open ParadigmsGer, (E=ExtendGer), Prelude in {

-- exceptions
oper
  npPron : NP -> Pron = \np -> case ifPluralNP np of {True => they_Pron ; False => it_Pron} ;

lin
  AttributeFact attr obj val = case obj.isPron of {
    True => mkCl (mkNP (mkDet obj.pron) attr) val ;
    _ => mkCl (mkNP the_Det (mkCN attr (SyntaxGer.mkAdv (mkPrep "" genitive) obj.np))) val
    } ;
  PunctualPastFactSentence fact = mkS presentTense anteriorAnt fact ;
  PunctualPastActModifier act = mkModifier (mkRS presentTense anteriorAnt (mkRCl which_RP act)) ;

-- functor parameters
oper
  largest_AP : AP = GrammarGer.AdjOrd (mkOrd (mkA "groß" "größer" "größte")) ;
  smallest_AP : AP = GrammarGer.AdjOrd (mkOrd (mkA "klein")) ;
  total_AP : AP = mkAP (mkA "gesamt") ; 
  only_AP : AP = mkAP (mkA "einzig") ;

  npNum : NP -> Num = \np ->
    case ifPluralNP np of {False => singularNum ; True => pluralNum} ;

  million_N = mkN "Million" "Millionen" feminine ;
  billion_N = mkN "Milliarde" ;

-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "Million" "Millionen" feminine)) ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "Milliarde")) ;
  IntTrillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "Billion" "Billionen" feminine)) ;

  a_billion_Numeric = E.CardCNCard (mkCard "1") (mkCN (mkN "Milliarde")) ; --- hack
  
  AboutNumeric num = mkCard (lin AdN {s = "etwa"}) num ;
  OverNumeric num = mkCard (lin AdN {s = "über"}) num ;
  UnderNumeric num = mkCard (lin AdN {s = "unter"}) num ;

  inYearDate i = ParadigmsGer.mkAdv (i.s) ;

}
