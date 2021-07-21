concrete FactsFin of Facts = 
  open SyntaxFin, SymbolicFin, (E=ExtendFin) in {

lincat
  Fact = Cl ;
  Object = NP ;
  Attribute = CN ;
  Value = NP ;
  Name = NP ;

lin
  AtomicFact prop obj val = mkCl (mkNP (E.GenNP obj) prop) val ;
  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}