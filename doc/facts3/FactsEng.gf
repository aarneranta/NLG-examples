concrete FactsEng of Facts = FactsFunctor with
  (Syntax = SyntaxEng),
  (Symbolic = SymbolicEng),
  (Grammar = GrammarEng)

  ** open
       ParadigmsEng,
       (M=MakeStructuralEng),
       (E=ExtendEng)
     in {

-- functor parameters
oper
  largest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "large")) ;
  smallest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "small")) ;
  total_AP : AP = mkAP (mkA "total") ; 
  only_AP : AP = mkAP (mkA "only") ;

  npNum : NP -> Num = \np ->
    case ifPluralNP np of {False => singularNum ; True => pluralNum} ;

-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkN "million" "million") ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkN "billion" "billion") ;
  IntTrillionNumeric int = E.CardCNCard <symb int : Card> (mkN "trillion" "trillion") ;

  a_billion_Numeric = E.CardCNCard <symb (mkSymb "a") : Card> (mkN "billion" "billion") ; --- hack
  
  AboutNumeric num = mkCard (ParadigmsEng.mkAdN "about") num ;
  OverNumeric num = mkCard (ParadigmsEng.mkAdN "over") num ;
  UnderNumeric num = mkCard (ParadigmsEng.mkAdN "under") num ;

}
