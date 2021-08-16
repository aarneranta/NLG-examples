--# -path=.:../facts3

concrete NobelFin of Nobel = FactsFin,CountriesFin **

open
  SyntaxFin, ParadigmsFin, (S=SyntaxFin), (P=ParadigmsFin), SymbolicFin, Prelude,
  (G=GrammarFin)
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
    mkVP (mkVP (mkVP (mkVP (mkV "syntyä")) (S.mkAdv in_Prep city.np)) (S.mkAdv (casePrep (locCase country)) country.np)) date ;
  dieAct date = mkVP (mkVP (mkV "kuolla")) date ;
  winPrizeAct prize = mkVP (mkV2 (mkV "saada")) (mkNP the_Det prize) ;
  winPrizeDateAct prize date = mkVP (mkVP (mkV2 (mkV "saada")) (mkNP the_Det prize)) date ;

  YoungestInKindFact object kind = mkCl object.np (mkNP (S.mkDet the_Quant (S.mkOrd (mkA (mkN "nuori" "nuoria")))) kind) ;

  woman_Kind = mkCN (mkN "nainen") ;
  winnerOfPrizeKind prize = G.PossNP (mkCN (mkN "saaja" "saajia")) (mkNP the_Det prize) ;

  peacePrize = mkCN (invarA "Nobelin") (mkN "rauhan" (mkN "palkinto")) ;
  chemistryPrize = mkCN (invarA "Nobelin") (mkN "kemian" (mkN "palkinto")) ;
  literaturePrize = mkCN (invarA "Nobelin") (mkN "kirjallisuus" (mkN "palkinto")) ;
  physicsPrize = mkCN (invarA "Nobelin") (mkN "fysiikan" (mkN "palkinto")) ;
  medicinePrize = mkCN (invarA "Nobelin fysiologian tai lääketieteen") (mkN "palkinto") ;
  economyPrize = mkCN (mkCN (invarA "Ruotsin keskuspankin taloustieteen") (mkN "palkinto")) (P.mkAdv "Alfred Nobelin muistoksi") ;

}

