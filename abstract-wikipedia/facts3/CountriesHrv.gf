concrete CountriesHrv of Countries = FactsHrv, CountryNamesHrv **

open SyntaxHrv, ParadigmsHrv, SymbolicHrv in {

lin
  cName name = {np = name ; pron = npPron name} ;
  cdName name = {np = name.np ; pron = npPron name.np} ;
  cdProperty name = name.ap ;

  stringCName s = symb (mkSymb s.s) ;

  capital_Attribute = mkAttribute "glavni grad" ;
  area_Attribute = mkAttribute "površina" ;
  population_Attribute = mkAttribute "stanovništvo" ;
  continent_Attribute = mkAttribute "kontinent" ;
  currency_Attribute = mkAttribute "valuta" ;

  country_Kind = mkCN (mkN "država") ;
  city_Kind = mkCN (mkN "grad") ;
  currency_Kind = mkCN (mkN "valuta") ;
  inhabitant_Kind = mkCN (mkN "stanovnik") ;

  the_world_CName = mkNP the_Det (mkN "svijet") ;

  populationFact cname num = mkCl cname have_V2 (mkNP num (mkN "stanovnik")) ;
  continentFact obj cdname = mkCl obj.np (SyntaxHrv.mkAdv in_Prep cdname.np) ;

  inCNameModifier cname = mkModifier (SyntaxHrv.mkAdv in_Prep cname) ;
  inCDNameModifier cname = mkModifier (SyntaxHrv.mkAdv in_Prep cname.np) ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;

}
