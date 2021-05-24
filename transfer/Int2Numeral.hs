module Int2Numeral (int2numeralTree, int2numeralInTree) where

import PGF

int2numeralInTree :: CId -> CId -> Tree -> Tree
int2numeralInTree f_int f_numeral t = case unApp t of
  Just (c,[t]) | c==f_int -> mkApp f_numeral [int2numeralTree t]  
  Just (c,ts) -> mkApp c (map (int2numeralInTree f_int f_numeral) ts)
  _ -> t

int2numeralTree :: Tree -> Tree
int2numeralTree = num . whole . intn . show . getInt
 where
  intn ds = case ds of
    _ | length ds > 6 -> error $ "sorry, " ++ ds ++ " too large for int2numeral"
    "1"     -> (pot2as3 , pot1as2 . pot0as1 , pot01)
    [d]     -> (pot2as3 , pot1as2 . pot0as1 , pot0 (nd d))
    "10"    -> (pot2as3 , pot1as2           , pot110)
    "11"    -> (pot2as3 , pot1as2           , pot111)
    ['1',d] -> (pot2as3 , pot1as2           , pot1to19 (nd d))
    [d,'0'] -> (pot2as3 , pot1as2           , pot1 (nd d))
    [d,e]   -> (pot2as3 , pot1as2           , pot1plus (nd d) (unit (intn [e])))
    [d,'0','0'] -> (pot2as3 , id            , pot2 (unit (intn [d])))
    [d, e, f]   -> (pot2as3 , id            , pot2plus (unit (intn [d])) (unit (intn [e,f])))
    _ -> case splitAt (length ds - 3) ds of
      (n,"000") -> (id, id, pot2 (minor (intn n)))
      (n,m)     -> (id, id, pot3plus (minor (intn n)) (minor (intn m)))
  whole (f,g,t) = f (g t)
  minor (_,g,t) = g t
  unit  (_,_,t) = t
  getInt t = case unInt t of
    Just n -> n
    _ -> error $ "cannot get Int from " ++ showExpr [] t


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
