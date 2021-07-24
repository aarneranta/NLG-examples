concrete FactsFin of Facts =
  FactsFunctor - [AttributeFact,NumberKindModifier]
  with
    (Syntax = SyntaxFin),
    (Symbolic = SymbolicFin) **
  open ParadigmsFin,(E=ExtendFin) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;
  NumberKindModifier int kind = mkAdv (mkPrep "jossa on" nominative) (mkNP <symb int : Card> kind) ; --- hack
}
