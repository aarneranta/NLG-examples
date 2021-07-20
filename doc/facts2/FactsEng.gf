concrete FactsEng of Facts = 

open SyntaxEng, ParadigmsEng, (G=GrammarEng), SymbolicEng in

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

  capital_Property = mkProperty "capital" ;
  area_Property = mkProperty "area" ;
  population_Property = mkProperty "population" ;
  continent_Property = mkProperty "continent" ;
  currency_Property = mkProperty "currency" ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}