module Wikidata where

-- combining results of Wikidata search, for the moment tab-separated files

import PGF

import Data.List
import Data.Char
import Data.Ord
import qualified Data.Map as M

getMapFromTabs file = do
  readFile file >>= return . tabMap . fromTabs

joinFiles keeps files = do
  maps <- mapM getMapFromTabs files
  let master = head maps
  let find key m = case M.lookup key m of
        Just ts -> keepTabs keeps ts
        _ -> replicate (length keeps) "_" ---
  return $ M.fromList [(k,t ++ concatMap (find k) maps) | (k,t) <- M.assocs master]

tabMap ts = M.fromList [(k,t) | t@(k:_) <- ts]

joinMaps m n = tabMap [ms ++ ns | (k,ms) <- M.assocs m, Just ns <-[M.lookup k n]]

keepTabs ints t = [t!!i | i <- ints]
dropTabs ints t = [t!!i | i <- [0..length t - 1], notElem i ints]

simplifyIds t = map (\f -> if isPrefixOf wikidataEntity f then lastPathPart f else f) t
lastPathPart = reverse . takeWhile (/='/') . reverse

restoreIds ints t = map (\(i,t) -> if elem i ints then wikidataEntity ++ t else t ) (zip [0..] t)

wikidataEntity = "http://www.wikidata.org/entity/"

readInt :: String -> Int
readInt s = if not (null s) && all isDigit s then (read s) else 0 ----

-----------------------

mkFunRule cat s = unwords ["fun", showCId (mkFunId cat s), ":", cat, ";"]
mkLinRule cat s = unwords ["lin", showCId (mkFunId cat s), "=", "mk" ++ cat, quoted s, ";"]
mkLinRuleNative cat s n = unwords ["lin", showCId (mkFunId cat s), "=", "mk" ++ cat, quoted n, ";"]

mkFunId cat s = mkCId $ concat $ intersperse "_" $ words s ++ [cat]

quoted s = "\"" ++ s ++ "\""


-----------------------

fromTabs = map (getSep '\t') . lines
toTabs = unlines . map (blocks2sep "\t")

getSep :: Eq a => a -> [a] -> [[a]]
getSep sep xs = case break (==sep) xs of
  (x1,_:x2) -> x1 : getSep sep x2
  (x1,[]) -> x1 : []

blocks2sep :: String -> [String] -> String
blocks2sep sep = concat . intersperse sep

mkPara s = "<p>" ++ s ++ "</p>"


-------- copied from GF.Text.Lexer - should be available via API

unlex = unlexText . bindTok . words

unlexText :: [String] -> String
unlexText = capitInit . unlext where
  unlext s = case s of
    w:[] -> w
    w:[c]:[] | isPunct c -> w ++ [c]
    w:[c]:cs | isMajorPunct c -> w ++ [c] ++ " " ++ capitInit (unlext cs)
    w:[c]:cs | isMinorPunct c -> w ++ [c] ++ " " ++ unlext cs
    w:ws -> w ++ " " ++ unlext ws
    _ -> []

-- | Bind tokens separated by Prelude.BIND, i.e. &+
bindTok :: [String] -> [String]
bindTok ws = case ws of
               w1:"&+":w2:ws -> bindTok ((w1++w2):ws)
               "&+":ws       -> bindTok ws
               "&|":(c:cs):ws-> bindTok ((toUpper c:cs) : ws)
               "&|":ws       -> bindTok ws
               w:ws          -> w:bindTok ws
               []            -> []

isPunct = flip elem ".?!,:;"
isMajorPunct = flip elem ".?!"
isMinorPunct = flip elem ",:;"
isParen = flip elem "()[]{}"
isClosing = flip elem ")]}"

-- | Capitalize first letter
capitInit s = case s of
  c:cs -> toUpper c : cs
  _ -> s
