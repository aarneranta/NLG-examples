concrete FactsGer of Facts = open SyntaxGer, SymbolicGer in {

lincat
  Fact = Cl ;
  Object = NP ;
  Attribute = CN ;
  Value = NP ;
  Name = NP ;

lin
  AttributeFact prop obj val = mkCl (mkNP the_Det (mkCN prop (mkAdv possess_Prep obj))) val ;
  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}