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
}
