--# -path=.:../facts3

concrete NobelGer of Nobel = FactsGer,CountriesGer **

open
  SyntaxGer, ParadigmsGer, (S=SyntaxGer), (P=ParadigmsGer), (I=IrregGer), SymbolicGer, Prelude
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
    mkVP (mkVP (mkVP (mkVP (mkVP I.werden_V) date) (S.mkAdv in_Prep city)) (S.mkAdv in_Prep country)) (P.mkAdv "geboren") ; ---
----    mkVP (mkVP (mkVP (passiveVP (mkV2 I.gebären_V)) (S.mkAdv in_Prep city)) (S.mkAdv in_Prep country)) date ;
  dieAct date = mkVP (mkVP (seinV I.sterben_V)) date ;
  winPrizeAct prize = mkVP (mkV2 (fixprefixV "er" I.halten_V)) (mkNP the_Det prize) ;
  winPrizeDateAct prize date = mkVP (mkVP (mkV2 (fixprefixV "er" I.halten_V)) (mkNP the_Det prize)) date ;

  YoungestInKindFact object kind = mkCl object.np (mkNP (mkDet the_Quant (S.mkOrd (mkA "jung" "jünger" "jüngste"))) kind) ;

  woman_Kind = mkCN (mkN "Frau" "Frauen" feminine) ;
  
  maleWinnerOfPrizeKind prize = mkCN (mkN "Preisträger") (S.mkAdv (mkPrep [] genitive) (mkNP the_Det prize)) ;
  femaleWinnerOfPrizeKind prize = mkCN (mkN "Preisträgerin" "Preisträgerinnen" feminine) (S.mkAdv (mkPrep [] genitive) (mkNP the_Det prize)) ;

  peacePrize = mkCN (mkN "Friedensnobelpreis" masculine) ;
  chemistryPrize = mkCN (mkN "Nobelpreis" masculine) (S.mkAdv for_Prep (mkNP (mkN "Chemie"))) ;
  literaturePrize = mkCN (mkN "Nobelpreis" masculine) (S.mkAdv for_Prep (mkNP (mkN "Literatur"))) ;
  physicsPrize = mkCN (mkN "Nobelpreis" masculine) (S.mkAdv for_Prep (mkNP (mkN "Physik"))) ;
  medicinePrize = mkCN (mkN "Nobelpreis" masculine) (S.mkAdv for_Prep (mkNP (mkN "Physiologie oder Medizin"))) ;
  economyPrize = mkCN (mkN "Alfred-Nobel-Gedächtnispreis" masculine) (S.mkAdv for_Prep (mkNP (mkN "Wirtschaftswissenschaften"))) ; ---

}

