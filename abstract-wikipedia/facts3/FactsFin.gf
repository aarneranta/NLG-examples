concrete FactsFin of Facts =
  FactsFunctor - [AttributeFact,NumericKindModifier]
  with
    (Syntax = SyntaxFin),
    (Symbolic = SymbolicFin),
    (Grammar = GrammarFin)

**
  open ParadigmsFin,(E=ExtendFin), (X=ExtraFin) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;
  NumericKindModifier num kind = mkModifier (mkRS (X.RelExistNP in_Prep which_RP (mkNP num kind))) ;

-- functor parameters
oper
  largest_AP : AP = GrammarFin.AdjOrd (mkOrd (mkA (mkN "suuri" "suuria"))) ;
  smallest_AP : AP = GrammarFin.AdjOrd (mkOrd (mkA (mkN "pieni" "pieniä"))) ;
  total_AP : AP = mkAP (mkA "yhteenlaskettu") ; 
  only_AP : AP = mkAP (mkA "ainoa") ;

  npNum : NP -> Num = \np ->
    case ifPluralNP np of {False => singularNum ; True => pluralNum} ;


-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljoona")) ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljardi")) ;
  IntTrillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "biljoona")) ;

  a_billion_Numeric = E.CardCNCard (<symb (mkSymb "") : Card> ** {n = singular}) (mkCN (mkN "miljardi")) ; --- hack
  
  AboutNumeric num = mkCard (ParadigmsFin.mkAdN "noin") num ;
  OverNumeric num = mkCard (ParadigmsFin.mkAdN "yli") num ;
  UnderNumeric num = mkCard (ParadigmsFin.mkAdN "alle") num ;

  inYearDate i = ParadigmsFin.mkAdv ("vuonna" ++ i.s) ;

}
