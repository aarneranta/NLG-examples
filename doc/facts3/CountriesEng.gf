concrete CountriesEng of Countries = FactsEng, CountryNamesEng **

open SyntaxEng, ParadigmsEng, SymbolicEng in {

lin
  cName name = name ;
  cdName name = name.np ;
  cdProperty name = name.ap ;

  capital_Attribute = mkAttribute "capital" ;
  area_Attribute = mkAttribute "area" ;
  population_Attribute = mkAttribute "population" ;
  continent_Attribute = mkAttribute "continent" ;
  currency_Attribute = mkAttribute "currency" ;

  country_Kind = mkCN (mkN "country") ;
  city_Kind = mkCN (mkN "city") ;
  currency_Kind = mkCN (mkN "currency") ;
  inhabitant_Kind = mkCN (mkN "inhabitant") ;

  the_world_CName = mkNP the_Det (mkN "world") ;

  populationFact cname int = mkCl cname have_V2 (mkNP <symb int : Card> (mkN "inhabitant")) ;
  continentFact cname name = mkCl cname (SyntaxEng.mkAdv in_Prep name) ;

  inCNameModifier cname = SyntaxEng.mkAdv in_Prep cname ;
  inCDNameModifier cname = SyntaxEng.mkAdv in_Prep cname.np ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;

}
