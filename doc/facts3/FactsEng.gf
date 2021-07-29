concrete FactsEng of Facts = FactsFunctor with
  (Syntax = SyntaxEng),
  (Symbolic = SymbolicEng),
  (Grammar = GrammarEng)

  ** open ParadigmsEng, (M=MakeStructuralEng) in {

-- functor parameters
oper
  largest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "large")) ;
  smallest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "small")) ;
  total_AP : AP = mkAP (mkA "total") ; 
  only_AP : AP = mkAP (mkA "only") ;

-- functions left to instantiation
lin
  IntMillionNumeric int = M.mkDet int.s (M.mkDet "million" plural) ;
  IntBillionNumeric int = M.mkDet int.s (M.mkDet "billion" plural) ;
  IntTrillionNumeric int = M.mkDet int.s (M.mkDet "trillion" plural) ;

  AboutNumeric num = M.mkDet "about" num ;
  OverNumeric num = M.mkDet "over" num ;
  UnderNumeric num = M.mkDet "under" num ;

}
