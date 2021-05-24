abstract Int2NumeralExample = Numeral ** {

flags startcat = Msg ;

cat
  Msg ;
  Number ;

fun
  YouHaveMsg : Number -> Msg ;

  IntNumber : Int -> Number ;
  NumeralNumber : Numeral -> Number ;

}