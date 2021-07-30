concrete CountriesGer of Countries = FactsGer, CountryNamesGer **

open SyntaxGer, ParadigmsGer, SymbolicGer in {

lin
  cName name = name ;
  cdName name = name.np ;
  cdProperty name = name.ap ;

  capital_Attribute = mkAttribute (mkN "Hauptstadt" "Hauptstädte" feminine) ;
  area_Attribute = mkAttribute (mkN "Fläche") ;
  population_Attribute = mkAttribute (mkN "Einwohnerzahl" feminine) ;
  continent_Attribute = mkAttribute (mkN "Kontinent" "Kontinente" masculine) ;
  currency_Attribute = mkAttribute (mkN "Währung") ;

  country_Kind = mkCN (mkN "Land" "Länder" neuter) ;
  city_Kind = mkCN (mkN "Stadt" "Städte" feminine) ;
  currency_Kind = mkCN (mkN "Währung") ;
  inhabitant_Kind = mkCN (mkN "Einwohner") ;

  the_world_CName = mkNP the_Det (mkN "Welt" feminine) ;

  populationFact cname num = mkCl cname have_V2 (mkNP num (mkN "Einwohner")) ;
  continentFact obj cdname = mkCl obj.np (mkVP (mkVP (mkV "liegen")) (SyntaxGer.mkAdv in_Prep cdname.np)) ;

  inCNameModifier cname = mkModifier (SyntaxGer.mkAdv in_Prep cname) ;
  inCDNameModifier cname = mkModifier (SyntaxGer.mkAdv in_Prep cname.np) ;

oper
  mkAttribute : N -> CN = \n -> mkCN n ;

}
