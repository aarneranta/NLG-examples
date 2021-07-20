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

  capital_Property = mkProperty "pääkaupunki" ;
  area_Property = mkProperty "pinta-ala" ;
  population_Property = mkProperty "asukasluku" ;
  continent_Property = mkProperty "maanosa" ;
  currency_Property = mkProperty "valuutta" ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}