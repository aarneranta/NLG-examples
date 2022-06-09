abstract Int2NumeralExample = Numeral ** {

flags startcat = Msg ;

cat
  Msg ;
  Number ;
  Rank ;

fun
  YouHaveMsg : Number -> Msg ; -- you have five messages
  ThisIsMsg : Rank -> Msg ; -- this is the fifth message

  IntNumber : Int -> Number ;
  NumeralNumber : Numeral -> Number ;

  IntRank : Int -> Rank ;
  NumeralRank : Numeral -> Rank ;

}