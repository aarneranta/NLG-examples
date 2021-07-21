concrete FactsEng of Facts = 

open SyntaxEng, ParadigmsEng, SymbolicEng in

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
  AtomicFact prop obj val = mkCl (mkNP the_Det (mkCN prop (SyntaxEng.mkAdv possess_Prep obj))) val ;

  NameObject name = name ;
  NameValue name = name ;
  IntValue int = symb int ;

}