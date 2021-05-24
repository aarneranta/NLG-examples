concrete Int2NumeralExampleEng of Int2NumeralExample = NumeralEng **
open
  SyntaxEng,
  ParadigmsEng,
  SymbolicEng
in {

lincat
  Msg = Utt ;
  Number = Card ;

lin
  YouHaveMsg card = mkUtt (mkS (mkCl you_NP have_V2 (mkNP card (mkN "message")))) ;

  IntNumber int = <symb int : Card> ;
  NumeralNumber numeral = mkCard numeral ;

}