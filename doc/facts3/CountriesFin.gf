concrete CountriesFin of Countries = FactsFin, CountryNamesFin **

open SyntaxFin, ParadigmsFin, SymbolicFin, Prelude

in {

lin
  cName name = {np = name.np ; pron = npPron name.np} ;
  cdName name = {np = name.np ; pron = npPron name.np} ;

  stringCName s = {np = symb (mkSymb s.s) ; isIn = True} ;

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

  populationFact cname num = mkCl cname.np (mkV2 (caseV (locCase cname) have_V2)) (mkNP num (mkN "asukas")) ;
  continentFact obj cdname = mkCl obj.np (SyntaxFin.mkAdv in_Prep cdname.np) ;

  inCNameModifier cname = mkModifier (SyntaxFin.mkAdv (casePrep (locCase cname)) cname.np) ;
  inCDNameModifier cname = mkModifier (SyntaxFin.mkAdv (casePrep (locCase cname)) cname.np) ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ;

  locCase : LocName -> Case = \name -> case name.isIn of {
    True => inessive ;
    False => adessive 
    } ;
}
