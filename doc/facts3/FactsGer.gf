concrete FactsGer of Facts = FactsFunctor with
  (Syntax = SyntaxGer),
  (Symbolic = SymbolicGer),
  (Grammar = GrammarGer)

  ** open ParadigmsGer in {

-- functor parameters
oper
  largest_AP : AP = GrammarGer.AdjOrd (mkOrd (mkA "groß" "größer" "größte")) ;
  smallest_AP : AP = GrammarGer.AdjOrd (mkOrd (mkA "klein")) ;
  total_AP : AP = mkAP (mkA "gesamt") ; 
  only_AP : AP = mkAP (mkA "einzig") ; 
  million_N = mkN "Million" "Millionen" feminine ;
  billion_N = mkN "Milliarde" ;

{-
-- functions left to instantiation
lin
  IntMillionNumeric int = M.mkDet int.s (M.mkDet "million" plural) ;
  IntBillionNumeric int = M.mkDet int.s (M.mkDet "billion" plural) ;
  IntTrillionNumeric int = M.mkDet int.s (M.mkDet "trillion" plural) ;

  AboutNumeric num = M.mkDet "about" num ;
  OverNumeric num = M.mkDet "over" num ;
  UnderNumeric num = M.mkDet "under" num ;
-}

}
