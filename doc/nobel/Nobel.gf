abstract Nobel = Facts, Countries ** {

cat
  PName ;  -- person name
  Prize ;  -- the kind of price, one of the six

fun
  malePName : String -> PName ;   -- name and gender found in data
  femalePName : String -> PName ;
  
  pnameName : PName -> Name ;

  bornAct     : Date -> CName -> CName -> Act ;  -- born in Helsinki, Finland in 1863
  dieAct      : Date -> Act ;                    -- died in 1938
  winPrizeAct : Prize -> Date -> Act ;      -- won the Nobel Prize in Physics in 1912

  peacePrize : Prize ; 
  chemistryPrize : Prize ;
  literaturePrize : Prize ;
  physicsPrize : Prize ;
  medicinePrize : Prize ;
  economyPrize : Prize ;

}