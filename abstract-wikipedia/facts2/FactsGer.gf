concrete FactsGer of Facts = open SyntaxGer, SymbolicGer, (P=ParadigmsGer) in {

lincat
  Fact = Cl ;
  Object = NP ;
  Attribute = CN ;
  Value = NP ;
  Name = NP ;

lin
  AttributeFact attr obj val = mkCl (mkNP the_Det (mkCN attr (mkAdv (P.mkPrep "" P.genitive) obj))) val ;
  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}