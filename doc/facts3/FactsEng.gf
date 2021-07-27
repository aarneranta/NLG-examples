concrete FactsEng of Facts = FactsFunctor with
  (Syntax = SyntaxEng),
  (Symbolic = SymbolicEng),
  (Grammar = GrammarEng)

  ** open ParadigmsEng in {

-- functor parameters
oper
  largest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "large")) ;
  smallest_AP : AP = GrammarEng.AdjOrd (mkOrd (mkA "small")) ;
  total_AP : AP = mkAP (mkA "total") ; 
  only_AP : AP = mkAP (mkA "only") ; 
  million_N = mkN "million" "million" ;
  billion_N = mkN "billion" "billion" ;
}
