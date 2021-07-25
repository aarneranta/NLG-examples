import Data.Char

main = interact (unlines . unquote . map itemize . unindent . lines)

unquote (l:ls) = case (filter (not . isSpace) l) of
  "\\begin{verbatim}" -> let (vs,rest) = break (=="\\end{verbatim}") ls in 
                         l:vs ++ unquote rest
  _ | take 1 (words l) == ["\\hline"] -> l : unquote ls
  _ -> unq l : unquote ls  
unquote [] = []

unq ('\'':'"':cs) = '"' : unq cs 
unq (' ':'-':' ':cs) = ' ':'-':'-':'-':' ': unq cs 
unq ('\\':'t':'e':'x':'t':'b':'f':cs) =
   let (c,s) = break (=='}') cs in 
     createIndex (tail c) ++ unq s
unq (c:cs) = case c of
  '"' -> case break (=='"') cs of
    (qs,_:rest) -> "``" ++ qs ++ "''" ++ unq rest
    _ -> c : unq cs
  '{' -> case break (=='}') cs of
    (qs,_:rest) -> "{" ++ qs ++ "}" ++ unq rest
    _ -> c : unq cs
  c   -> c : unq cs  
unq [] = []

createIndex c = case c of
  '!':cs                        -> "\\textbf{" ++ cs               -- ! just bf, no index
  '.':cs                        -> "\\ixnobf{" ++ cs ++ "}{" ++ cs -- . normal font
  ',':cs                        -> "\\index{" ++ cs                -- , just index
  '=':cs                        -> "\\ixbf{" ++ cs ++ "}{" ++ cs   -- = to mark index literally
  "Exercise"                    -> "\\textbf{" ++ c
  'C':'h':'a':'p':'t':'e':'r':_ -> "\\textbf{" ++ c                
  _ -> case break (=='@') c of
    (b,_:'+':d) -> "\\ixbf{" ++ b ++ "}{" ++ b ++ " " ++ d         -- @+ shown@+added in index
    (b,_:d)     -> "\\ixbf{" ++ b ++ "}{" ++ d                     -- @ shown@indexed 
    (_,[])      -> "\\ixbf{" ++ c ++ "}{" ++ mkIndex c

mkIndex s = case s of
  c:d:_ | isUpper c && isUpper d -> s
  c:cs -> toLower c : singular cs
  _ -> s
 where
  singular cs = case reverse cs of --- stemming...
    's':'i':_ -> cs
    's':'s':_ -> cs
    's':_     -> init cs
    _         -> cs

unindent ls = case ls of
  l:[]:ks | noIndent l -> l:unindent ks
  l:ks -> l:unindent ks
  _ -> ls

-- to remove bogus empty lines inserted by txt2tags

noIndent l = elem l ["\\end{verbatim}","\\end{compactenum}", "\\end{compactitem}"]

-- another change to t2t output
  
itemize l = case l of
{- ---
  "\\begin{compactenum}" -> "\\begin{enumerate}"
  "\\begin{compactitem}" -> "\\begin{itemize}"
  "\\end{compactenum}" -> "\\end{enumerate}"
  "\\end{compactitem}" -> "\\end{itemize}"
-}
  _ -> l
