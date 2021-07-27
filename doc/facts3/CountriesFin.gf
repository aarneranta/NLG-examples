concrete CountriesFin of Countries = FactsFin, CountryNamesFin **

open SyntaxFin, ParadigmsFin, SymbolicFin, Prelude

in {

lin
  cName name = name.np ;
  cdName name = name.np ;
  cdProperty name = name.ap ;

  capital_Attribute = mkAttribute "pääkaupunki" ;
  area_Attribute = mkAttribute "pinta-ala" ;
  population_Attribute = mkAttribute "asukasluku" ;
  continent_Attribute = mkAttribute "maanosa" ;
  currency_Attribute = mkAttribute "valuutta" ;

  country_Kind = mkCN (mkN "maa") ;
  city_Kind = mkCN (mkN "kaupunki") ;
  currency_Kind = mkCN (mkN "valuutta") ;
  inhabitant_Kind = mkCN (mkN "asukas") ;

  the_world_CName = mkCName "maailma" ;

  populationFact cname int = mkCl cname.np (mkV2 (caseV (locCase cname) have_V2)) (mkNP <symb int : Card> (mkN "asukas")) ;
  continentFact cname name = mkCl cname.np (SyntaxFin.mkAdv (casePrep (locCase name)) name.np) ;

  inCNameModifier cname = SyntaxFin.mkAdv (casePrep (locCase cname)) cname.np ;
  inCDNameModifier cname = SyntaxFin.mkAdv (casePrep (locCase cname)) cname.np ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;

  locCase : LocName -> Case = \name -> case name.isIn of {
    True => inessive ;
    False => adessive 
    } ;
}
