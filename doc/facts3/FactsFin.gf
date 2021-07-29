concrete FactsFin of Facts =
  FactsFunctor - [AttributeFact,NumberKindModifier]
  with
    (Syntax = SyntaxFin),
    (Symbolic = SymbolicFin),
    (Grammar = GrammarFin)

**
  open ParadigmsFin,(E=ExtendFin) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;
  NumberKindModifier int kind = mkAdv (mkPrep "jossa on" nominative) (mkNP <symb int : Card> kind) ; --- hack

-- functor parameters
oper
  largest_AP : AP = GrammarFin.AdjOrd (mkOrd (mkA (mkN "suuri" "suuria"))) ;
  smallest_AP : AP = GrammarFin.AdjOrd (mkOrd (mkA (mkN "pieni" "pieniä"))) ;
  total_AP : AP = mkAP (mkA "yhteenlaskettu") ; 
  only_AP : AP = mkAP (mkA "ainoa") ;
  million_N = mkN "miljoona" ;
  billion_N = mkN "miljardi" ;

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
