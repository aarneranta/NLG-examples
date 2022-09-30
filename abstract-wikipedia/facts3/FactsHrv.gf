concrete FactsHrv of Facts = FactsFunctor
  - [FirstInKindFact] ---- TODO
 with
  (Syntax = SyntaxHrv),
  (Symbolic = SymbolicHrv),
  (Grammar = GrammarHrv)

  ** open
       ParadigmsHrv,
       (E=ExtendHrv)
     in {

-- functor parameters
oper
  largest_AP : AP = GrammarHrv.AdjOrd (mkOrd (mkA "velik" "veći")) ;
  smallest_AP : AP = GrammarHrv.AdjOrd (mkOrd (mkA "mali" "manji")) ;
  total_AP : AP = mkAP (mkA "totalni") ; 
  only_AP : AP = mkAP (mkA "jedini") ;

  npNum : NP -> Num = \np ->
    case ifPluralNP np of {False => singularNum ; True => pluralNum} ;

-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "milijun")) ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "milijard")) ;
  IntTrillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "bilijun")) ;

  a_billion_Numeric = E.CardCNCard <symb (mkSymb "a") : Card> (mkCN (mkN "bilijun")) ; --- hack
  
  AboutNumeric num = mkCard (ParadigmsHrv.mkAdN "oko") num ;
  OverNumeric num = mkCard (ParadigmsHrv.mkAdN "više od") num ;
  UnderNumeric num = mkCard (ParadigmsHrv.mkAdN "ispod") num ;

  inYearDate i = ParadigmsHrv.mkAdv ("godine" ++ i.s) ;

}
