concrete Int2NumeralExampleEng of Int2NumeralExample = NumeralEng **
open
  SyntaxEng,
  ParadigmsEng,
  SymbolicEng
in {

lincat
  Msg = Utt ;
  Number = Card ;
  Rank = Ord ;

lin
  YouHaveMsg card = mkUtt (mkS (mkCl you_NP have_V2 (mkNP card (mkN "message")))) ;
  ThisIsMsg rank = mkUtt (mkS (mkCl this_NP (mkNP (mkDet the_Quant rank) (mkN "message")))) ;

  IntNumber int = <symb int : Card> ;
  NumeralNumber numeral = mkCard numeral ;

  IntRank int = <symb int : Ord> ;
  NumeralRank numeral = SyntaxEng.mkOrd numeral ;

}