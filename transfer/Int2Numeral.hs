module Int2Numeral (int2numeralTree, int2numeralInTree) where

import PGF

-- to test:
--    echo "pg -pgf" | gf -run alltenses/NumeralEng.gfo
-- or some other language, then
--    runghc Int2Numeral
-- which waits for numeral input.
-- If you just press <enter>, a predefined list of samples is converted.
--
-- to use in your own program: see Int2NumeralExample.hs


int2numeralInTree :: [(CId, CId)] -> Tree -> Tree
int2numeralInTree idmap t = case unApp t of
  Just (c,ts) -> case lookup c idmap of
    Just f | length ts == 1 -> mkApp f [int2numeralTree (head ts)]  
    _ -> mkApp c (map (int2numeralInTree idmap) ts)
  _ -> t

int2numeralTree :: Tree -> Tree
int2numeralTree = num . whole . intn . show . getInt
 where
  intn ds = case ds of
    _ | length ds > 6 -> error $ "sorry, " ++ ds ++ " too large for int2numeral"
    '0':dd  -> intn dd 
    "1"     -> (pot2as3 , pot1as2 , pot0as1 , pot01)
    [d]     -> (pot2as3 , pot1as2 , pot0as1 , pot0 (nd d))
    "10"    -> (pot2as3 , pot1as2 , id      , pot110)
    "11"    -> (pot2as3 , pot1as2 , id      , pot111)
    ['1',d] -> (pot2as3 , pot1as2 , id      , pot1to19 (nd d))
    [d,'0'] -> (pot2as3 , pot1as2 , id      , pot1 (nd d))
    [d,e]   -> (pot2as3 , pot1as2 , id      , pot1plus (nd d) (unit (intn [e])))
    [d,'0','0'] -> (pot2as3 , id  , id      , pot2 (unit (intn [d])))
    [d, e, f]   -> (pot2as3 , id  , id      , pot2plus (unit (intn [d])) (minor (intn [e,f])))
    _ -> case splitAt (length ds - 3) ds of
      (n,"000") -> (id, id, id, pot3 (major (intn n)))
      (n,m)     -> (id, id, id, pot3plus (major (intn n)) (major (intn m)))
  whole (f,g,h,t) = f (g (h t))
  major (_,g,h,t) = g (h t)
  minor (_,g,h,t) = h t
  unit  (_,_,_,t) = t
  getInt t = case unInt t of
    Just n -> n
    _ -> error $ "cannot get Int from " ++ showExpr [] t

-- auxiliaries

app :: String -> [Tree] -> Tree
app f ts = mkApp (mkCId f) ts

atom :: String -> Tree
atom c = app c []

num t = app "num" [t]
pot2as3 t = app "pot2as3" [t]
pot1as2 t = app "pot1as2" [t]
pot0as1 t = app "pot0as1" [t]
pot3 t = app "pot3" [t]
pot2 t = app "pot2" [t]
pot1 t = app "pot1" [t]
pot0 t = app "pot0" [t]
pot1to19 t = app "pot1to19" [t]
pot1plus t u = app "pot1plus" [t,u]
pot2plus t u = app "pot2plus" [t,u]
pot3plus t u = app "pot3plus" [t,u]

pot110 = atom "pot110"
pot111 = atom "pot111"
pot01 = atom "pot01"
nd d = atom ("n" ++ [d])

-- test function

test = do
  pgf <- readPGF("Numeral.pgf")
  let eng:_ = languages pgf
  s <- getLine
  let ns = if null s then [1,2,8,10,11,20,21,40,95,100,101,234,1001,2021,630511] else [read s] 
  flip mapM_ ns $ \n -> do
    let t = int2numeralTree (mkInt n)
    putStrLn $ unwords [show n, linearize pgf eng (t)]

main = test

