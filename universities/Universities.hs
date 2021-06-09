module Universities where

import PGF

import Data.List
import Data.Char
import Data.Ord


main = do
  pgf <- readPGF "Universities.pgf"
  universities <- getUniversities pgf

  let langs = languages pgf
  let links = unwords ["<a href=\"" ++ slang ++ ".html\">" ++ slang ++ "</a>"
                 | lang <- langs, let slang = showCId lang]

  let trees = [universityTree u | u <- universities]
  
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

universityTree :: (Tree,Maybe Tree,Tree) -> Tree
universityTree (uni,mci,co) =
  mkApp (mkCId "InstitutionInFact") [
    mkApp (mkCId "UniversityInstitution") [uni],
    mkApp (mkCId "InstitutionDescription") [
      mkApp (mkCId "university_InstitutionType") [],
      case mci of
        Just ci -> mkApp (mkCId "CountryCityLocation") [co,ci]
        _       -> mkApp (mkCId "CountryLocation") [co]
      ]
    ]

constant cat s = mkApp (mkFunId cat s) []

getUniversities pgf = do
  ts <- readFile "universities.tsv" >>= return . init . fromTabs
  return [
    (u, mci, co) |
      _:eu:eci:eco:_ <- ts,
      u  <- parse pgf eng university eu,
      ci <- parse pgf eng city eci,
      co <- parse pgf eng countr eco,
      let mci = if isInfixOf eci eu then Nothing else Just ci
    ]
 where
   eng:_ = languages pgf
   university = mkType [] (mkCId "University") []
   city = mkType [] (mkCId "City") []
   countr = mkType [] (mkCId "Country") []

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
