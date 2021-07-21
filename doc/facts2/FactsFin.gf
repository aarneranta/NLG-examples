concrete FactsFin of Facts = 

open SyntaxFin, ParadigmsFin, SymbolicFin, (E=ExtendFin) in

{

lincat
  Fact = Cl ;
  Object = NP ;
  Attribute = CN ;
  Value = NP ;
  Name = NP ;

oper
  mkName : Str -> NP = \s -> mkNP (mkPN s) ;
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;

lin
  AtomicFact prop obj val = mkCl (mkNP (E.GenNP obj) prop) val ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}