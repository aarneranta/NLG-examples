concrete FactsFin of Facts = 

open SyntaxFin, ParadigmsFin, SymbolicFin, (G=GrammarFin) in

{

lincat
  Fact = Cl ;
  Object = NP ;
  Property = CN ;
  Value = NP ;
  Name = NP ;

oper
  mkName : Str -> NP = \s -> mkNP (mkPN s) ;
  mkProperty : Str -> CN = \s -> mkCN (mkN s) ;

lin
  AtomicFact prop obj val = mkCl (mkNP the_Det (G.PossNP prop obj)) val ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}