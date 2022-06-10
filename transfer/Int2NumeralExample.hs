module Int2NumeralExample where

import Int2Numeral
import PGF

-- to test: echo "you have 500 messages" | runghc Int2NumeralExample.hs

main = do
  pgf <- readPGF "Int2NumeralExample.pgf"
  let eng:_ = languages pgf 
  interact (unlines . map (linearize pgf eng) . map transfer . parse pgf eng (startCat pgf))

transfer = int2numeralInTree [
  (mkCId "IntNumber", mkCId "NumeralNumber"),
  (mkCId "IntRank", mkCId "NumeralRank")
  ]

