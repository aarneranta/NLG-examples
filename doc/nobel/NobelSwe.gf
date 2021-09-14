--# -path=.:../facts3

concrete NobelSwe of Nobel = FactsSwe,CountriesSwe **

open
  SyntaxSwe, ParadigmsSwe, (S=SyntaxSwe), (P=ParadigmsSwe), (I=IrregSwe), SymbolicSwe,Prelude
in {

lincat
  PName = {np : NP ; pron : Pron} ;
  Prize = NP ;

oper
  mkPName : Str -> Pron -> PName = \s,p -> lin PName {np = symb s ; pron = p} ;

lin
  malePName s = mkPName s.s he_Pron ;
  femalePName s = mkPName s.s she_Pron ;

  pnameName pn = pn ** {isPron = False} ;

  bornAct date city country =
    mkVP (mkVP (mkVP (mkVP (depV (mkV "föda" "födde" "fött"))) (S.mkAdv in_Prep city.np)) (S.mkAdv in_Prep country.np)) date ;
  dieAct date = mkVP (mkVP I.dö_V) date ;
  winPrizeAct prize = mkVP (mkV2 I.få_V) prize ;
  winPrizeDateAct prize date = mkVP (mkVP (mkV2 I.få_V) prize) date ;

  YoungestInKindFact object kind = mkCl object.np (mkNP (mkDet the_Quant (S.mkOrd (mkA "ung" "yngre" "yngst"))) kind) ;

  woman_Kind = mkCN (mkN "kvinna") ;
  
  maleWinnerOfPrizeKind prize = mkCN (mkN "mottagare") (S.mkAdv possess_Prep prize) ;
  femaleWinnerOfPrizeKind prize = mkCN (mkN "mottagare") (S.mkAdv possess_Prep prize) ;

  peacePrize = mkNP (mkCN (invarA "Nobels") (mkN "fredspris" "fredspris")) ;
  chemistryPrize = mkNP the_Det (mkCN nobelpris_N (S.mkAdv in_Prep (mkNP (mkN "kemi")))) ;
  literaturePrize = mkNP the_Det (mkCN nobelpris_N (S.mkAdv in_Prep (mkNP (mkN "Litteratur")))) ;
  physicsPrize = mkNP the_Det (mkCN nobelpris_N (S.mkAdv in_Prep (mkNP (mkN "fysik")))) ;
  medicinePrize = mkNP the_Det (mkCN nobelpris_N (S.mkAdv in_Prep (mkNP (mkN "fysiologi eller medicin")))) ;
  economyPrize = mkNP (mkCN (mkCN (invarA "Sveriges Riksbanks") (mkN "pris")) (S.mkAdv in_Prep (mkNP (mkPN "ekonomisk vetenskap till Alfred Nobels minne")))) ; ---

oper
  nobelpris_N = mkN "nobelpris" "nobelpris" ;
}

