module Countries where

import PGF

import Data.List
import Data.Char

data Country = Country {
  country :: String,
  capital :: String,
  area :: Int,
  population :: Int,
  continent :: String,
  currencyCode :: String,
  currencyName :: String
  }
  deriving Show


getCountries = do
  ts <- readFile "countries.tsv" >>= return . tail . fromTabs
  return [Country a b (readInt c) (readInt d) e f g | a:b:c:d:e:f:g:_ <- ts]

gfCountries = do
  cs <- getCountries
  writeFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "Country" . country) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "Capital" . capital) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "Continent" . continent) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "CurrencyCode" . currencyCode) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "CurrencyName" . currencyName) cs
  writeFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "Country" . country) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "Capital" . capital) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "Continent" . continent) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "CurrencyCode" . currencyCode) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "CurrencyName" . currencyName) cs


readInt :: String -> Int
readInt s = if not (null s) && all isDigit s then (read s) else 0 ----

-----------------------

mkFunRule cat s = unwords ["fun", mkFunId cat s, ":", cat, ";"]
mkLinRule cat s = unwords ["lin", mkFunId cat s, "=", "mk" ++ cat, quoted s, ";"]

mkFunId cat s = showCId $ mkCId $ concat $ intersperse "_" $ words s ++ [cat]

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

