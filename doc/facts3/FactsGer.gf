concrete FactsGer of Facts = FactsFunctor with
  (Syntax = SyntaxGer),
  (Symbolic = SymbolicGer),
  (Grammar = GrammarGer)

  ** open ParadigmsGer, (E=ExtendGer) in {

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

}
