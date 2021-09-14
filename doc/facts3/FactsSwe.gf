concrete FactsSwe of Facts =
  FactsFunctor - [AttributeFact]
  with
    (Syntax = SyntaxSwe),
    (Symbolic = SymbolicSwe),
    (Grammar = GrammarSwe)

**
  open ParadigmsSwe,(E=ExtendSwe) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;

-- functor parameters
oper
  largest_AP : AP = GrammarSwe.AdjOrd (mkOrd (mkA "stor" "större" "störst")) ;
  smallest_AP : AP = GrammarSwe.AdjOrd (mkOrd (mkA "liten" "litet" "lilla" "små" "mindre" "minst" "minsta")) ;
  total_AP : AP = mkAP (mkA "sammanlagd") ; 
  only_AP : AP = mkAP (invarA "enda") ;

  npNum : NP -> Num = \np ->
    singularNum ; ---- case ifPluralNP np of {False => singularNum ; True => pluralNum} ;


-- functions left to instantiation
lin
  IntMillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljon" "miljoner")) ;
  IntBillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "miljardi" "miljarder")) ;
  IntTrillionNumeric int = E.CardCNCard <symb int : Card> (mkCN (mkN "biljoona" "biljoner")) ;

  a_billion_Numeric = E.CardCNCard (<symb (mkSymb "") : Card> ** {n = singular}) (mkCN (mkN "miljard")) ; --- hack
  
  AboutNumeric num = mkCard (pmkAdN "circa") num ;
  OverNumeric num = mkCard (pmkAdN "över") num ;
  UnderNumeric num = mkCard (pmkAdN "under") num ;

  inYearDate i = ParadigmsSwe.mkAdv ("år" ++ i.s) ;

oper  ---- should be in RGL
  pmkAdN : Str -> AdN = \s -> lin AdN {s = s} ;


}
