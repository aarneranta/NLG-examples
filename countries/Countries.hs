module Countries where

import PGF

import Data.List
import Data.Char
import Data.Ord

-- start with: gf -make CountriesEng.gf CountriesFin.gf CountriesSwe.gf

main = do
  countries <- getCountries
  let continents = nub (map continent countries)
  let worldTree = continentArticle countries (const True) "world"
  let continentTrees = [continentArticle countries (\x -> continent x == c) c | c <- continents]
  let countryTrees = [countryArticle c | c <- countries]
--  putStrLn $ unlines $ map (showExpr []) continentTrees
--  putStrLn $ unlines $ map (showExpr []) countryTrees
  pgf <- readPGF "Countries.pgf"
  let langs = languages pgf
  let links = unwords ["<a href=\"" ++ slang ++ ".html\">" ++ slang ++ "</a>"
                 | lang <- langs, let slang = showCId lang]
  let texts = [(showCId lang, unlines (links : map (mkPara . unlex . linearize pgf lang)
                  (worldTree : continentTrees ++ countryTrees))) | lang <- langs]
                  
  --- varying the use case: countries or (faked) universities
  let utrees = [universityTree c | c <- countries] 
  let ctrees = worldTree : continentTrees ++ countryTrees
  let trees = ctrees
  
  let texts = [(showCId lang, unlines (links : map (mkPara . unlex . linearize pgf lang)
                  (trees))) | lang <- langs]
  flip mapM_ texts $ \ (lang,text) -> writeFile (lang ++ ".html") text
  return ()

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

universityTree :: Country -> Tree
universityTree countr =
  mkApp (mkCId "InstitutionInFact") [
    mkApp (mkCId "InstitutionTypeOf") [
      mkApp (mkCId "university_InstitutionType") [],
      constant "City" (capital countr)
      ],
    mkApp (mkCId "InstitutionDescription") [
      mkApp (mkCId "university_InstitutionType") [],
      mkApp (mkCId "CountryCityLocation") [
        constant "Country" (country countr),
        constant "City" (capital countr)
        ]
      ]
    ]

continentArticle :: [Country] -> (Country -> Bool) -> String -> Tree
continentArticle countries isin cont =
  mkApp (mkCId "ContinentArticle") [
    constant "Continent" cont,
    mkInt (length cocountries),
    mkInt (sum [area c | c <- cocountries]),
    mkInt (sum [population c | c <- cocountries]),
    mkInt (average [area c | c <- cocountries]),
    mkInt (average [population c | c <- cocountries]),
    constant "Country" (country (maximumBy (comparing population) cocountries)),
    constant "Country" (country (minimumBy (comparing population) cocountries)),
    constant "Country" (country (maximumBy (comparing area) cocountries)),
    constant "Country" (country (minimumBy (comparing area) cocountries))
    ]
 where
   cocountries = [c | c <- countries, isin c] -- continent c == cont

countryArticle :: Country -> Tree
countryArticle countr =
  mkApp (mkCId "CountryArticle") [
    constant "Country" (country countr),
    constant "Continent" (continent countr),
    constant "City" (capital countr),
    mkInt (area countr),
    mkInt (population countr),
    constant "CurrencyName" (currencyName countr),
    constant "CurrencyCode" (currencyCode countr)
    ]

constant cat s = mkApp (mkFunId cat s) []

average :: [Int] -> Int
average xs = sum xs `div` length xs ----


getCountries = do
  ts <- readFile "countries.tsv" >>= return . tail . fromTabs
  return [Country a b (readInt c) (readInt d) e f g | a:b:c:d:e:f:g:_ <- ts]

gfCountries = do
  cs <- getCountries
  writeFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "Country" . country) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "City" . capital) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "Continent" . continent) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "CurrencyCode" . currencyCode) cs
  appendFile "abs.tmp" $ unlines $ sort $ nub $ map (mkFunRule "CurrencyName" . currencyName) cs
  writeFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "Country" . country) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "City" . capital) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "Continent" . continent) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "CurrencyCode" . currencyCode) cs
  appendFile "cnc.tmp" $ unlines $ sort $ nub $ map (mkLinRule "CurrencyName" . currencyName) cs


readInt :: String -> Int
readInt s = if not (null s) && all isDigit s then (read s) else 0 ----

-----------------------

mkFunRule cat s = unwords ["fun", showCId (mkFunId cat s), ":", cat, ";"]
mkLinRule cat s = unwords ["lin", showCId (mkFunId cat s), "=", "mk" ++ cat, quoted s, ";"]

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
