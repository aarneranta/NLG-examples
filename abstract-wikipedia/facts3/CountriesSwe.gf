concrete CountriesSwe of Countries = FactsSwe, CountryNamesSwe **

open SyntaxSwe, ParadigmsSwe, SymbolicSwe, (I=IrregSwe), Prelude

in {

lin
  cName name = {np = name.np ; pron = npPron name.np} ;
  cdName name = {np = name.np ; pron = npPron name.np} ;

  stringCName s = {np = symb (mkSymb s.s) ; isIn = True} ;

  cdProperty name = name.ap ;

  capital_Attribute = mkAttribute "huvudstad" ;
  area_Attribute = mkAttribute "yta" ;
  population_Attribute = mkAttribute "befolkning" ;
  continent_Attribute = mkAttribute "kontinent" ;
  currency_Attribute = mkAttribute "valuta" ;

  country_Kind = mkCN (mkN "land" "landet" "länder" "länderna") ;
  city_Kind = mkCN (mkN "stad" "städer") ;
  currency_Kind = mkCN (mkN "valuta") ;
  inhabitant_Kind = mkCN (mkN "invånare" "invånare") ;

  the_world_CName = mkCName "världen" ;

  populationFact cname num = mkCl cname.np have_V2 (mkNP num (mkN "invånare" "invånare")) ;
  continentFact cname name = mkCl cname.np (mkVP (mkVP I.ligga_V) (SyntaxSwe.mkAdv (locPrep name) name.np)) ;

  inCNameModifier cname = mkModifier (SyntaxSwe.mkAdv (locPrep cname) cname.np) ;
  inCDNameModifier cname = mkModifier (SyntaxSwe.mkAdv (locPrep cname) cname.np) ;

oper
  mkAttribute : Str -> CN = \s -> mkCN (mkN s) ; ----

  locPrep : LocName -> Prep = \name -> case name.isIn of {
    True => in_Prep ;
    False => on_Prep 
    } ;
}

