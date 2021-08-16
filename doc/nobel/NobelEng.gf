--# -path=.:../facts3

concrete NobelEng of Nobel = FactsEng,CountriesEng **

open
  SyntaxEng, ParadigmsEng, (S=SyntaxEng), (P=ParadigmsEng), (I=IrregEng), SymbolicEng,Prelude
in {

lincat
  PName = {np : NP ; pron : Pron} ;
  Prize = CN ;

oper
  mkPName : Str -> Pron -> PName = \s,p -> lin PName {np = symb s ; pron = p} ;

lin
  malePName s = mkPName s.s he_Pron ;
  femalePName s = mkPName s.s she_Pron ;

  pnameName pn = pn ** {isPron = False} ;

  bornAct date city country =
    mkVP (mkVP (mkVP (mkVP (mkA "born")) (S.mkAdv in_Prep city)) (S.mkAdv in_Prep country)) date ;
  dieAct date = mkVP (mkVP (mkV "die")) date ;
  winPrizeAct prize date = mkVP (mkVP (mkV2 I.win_V) (mkNP the_Det prize)) date ;


  peacePrize = mkCN (mkN "Nobel Peace Prize") ;
  chemistryPrize = mkCN (mkN "Nobel Prize") (S.mkAdv in_Prep (mkNP (mkN "Chemistry"))) ;
  literaturePrize = mkCN (mkN "Nobel Prize") (S.mkAdv in_Prep (mkNP (mkN "Literature"))) ;
  physicsPrize = mkCN (mkN "Nobel Prize") (S.mkAdv in_Prep (mkNP (mkN "Physics"))) ;
  medicinePrize = mkCN (mkN "Nobel Prize") (S.mkAdv in_Prep (mkNP (mkN "Physiology or Medicine"))) ;
  economyPrize = mkCN (mkN "Prize") (S.mkAdv in_Prep (mkNP (mkN "Economic Sciences in Memory of Alfred Nobel"))) ;

}

