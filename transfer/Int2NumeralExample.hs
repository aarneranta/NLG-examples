module Int2NumeralExample where

import Int2Numeral
import PGF

main = do
  pgf <- readPGF "Int2NumeralExample.pgf"
  let eng:_ = languages pgf 
  interact (unlines . map (linearize pgf eng) . map transfer . parse pgf eng (startCat pgf))

transfer = int2numeralInTree (mkCId "IntNumber") (mkCId "NumeralNumber")

