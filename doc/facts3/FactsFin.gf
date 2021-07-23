concrete FactsFin of Facts =
  FactsFunctor - [AttributeFact]
  with
    (Syntax = SyntaxFin),
    (Symbolic = SymbolicFin) **
  open (E=ExtendFin) in {

lin
  AttributeFact attr obj val = mkCl (mkNP (E.GenNP obj.np) attr) val ;

}
