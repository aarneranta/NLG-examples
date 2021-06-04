incomplete concrete CountriesFunctor of Countries =

open
  Syntax,
  Symbolic,
  Grammar,
  Lexicon,
  Prelude

in {

lincat
  Fact = S ;
  CountryExp = NPExp ;
  Attribute = CN ;

  Country = {np : NP ; incases : Bool} ; -- ssa/lla
  City = NP ;
  Continent = {np : NP ; incases : Bool} ;
  CurrencyCode = NP ;
  CurrencyName = NP ;

oper
  NPExp = {np : NP ; hasPoss : Bool ; poss : Quant ; incases : Bool} ;

  mkCountry = overload {
    mkCountry : Str -> {np : NP ; incases : Bool} = \s -> {np = nameNP s ; incases = True} ;
    mkCountry : Str -> Bool -> {np : NP ; incases : Bool} = \s,b -> {np = nameNP s ; incases = b} ;
    mkCountry : NP -> Bool -> {np : NP ; incases : Bool} = \np,b -> {np = singularNP np ; incases = b} ;
    } ;
  mkCity : Str -> NP = \s -> nameNP s ;
  mkCurrencyCode : Str -> NP = \s -> nameNP s ;
  mkCurrencyName : Str -> NP = \s -> nameNP s ;

  attributeFact : CN -> NPExp -> NP -> S
    = \attr,obj,val -> mkS (mkCl (attributeOf attr obj) val) ;

  attributeOf : CN -> NPExp -> NP
    = \attr,obj -> case obj.hasPoss of {
      True => mkNP obj.poss attr ;
      _ => mkNP the_Det (Grammar.PossNP attr obj.np)
      } ;

  withParenthNP : NP -> NP -> NP
    = \main,par -> mkNP main (lin Adv {s = "(" ++ Predef.BIND ++ (mkUtt par).s ++ Predef.BIND ++ ")"}) ;

  inContinent : {np : NP ; incases : Bool} -> Adv = \co -> case co.incases of {
    True => S.mkAdv in_Prep co.np ;
    _ => S.mkAdv on_Prep co.np
    } ;

  have_country_V2 : NPExp -> V2 = \_ -> have_V2 ;

  largest_Det = S.mkDet the_Quant (S.mkOrd Lexicon.big_A) ;
  smallest_Det = S.mkDet the_Quant (S.mkOrd Lexicon.small_A) ;

  ccText = overload {  
    ccText : (a,b : S) -> Text
      = \a,b -> mkText (mkUtt a) (mkText b) ;
    ccText : (a,b,c : S) -> Text
      = \a,b,c -> mkText (mkUtt a) (mkText (mkUtt b) (mkText c)) ;
    ccText : (a,b,c,d : S) -> Text
      = \a,b,c,d -> mkText (mkUtt a) (mkText (mkUtt b) (mkText (mkUtt c) (mkText d))) ;
    ccText : (a,b,c,d,e : S) -> Text
      = \a,b,c,d,e -> mkText (mkUtt a) (mkText (mkUtt b) (mkText (mkUtt c) (mkText (mkUtt d) (mkText e)))) ;
    } ;
 

lin
  ContinentArticle
      continent  count
      total_area  total_population
      average_area  average_population
      largest_population  smallest_population  
      largest_area  smallest_area =
    mkText
      (ccText
        (ContinentCountFact continent count)
	(ContinentTotalFact population_Attribute continent total_population)
	(AverageFact population_Attribute average_population)
	(TotalFact area_Attribute total_area)
	(AverageFact area_Attribute average_area)
	)
      (ccText
        (ContinentLargestFact population_Attribute continent largest_population)
        (SmallestFact population_Attribute smallest_population)
        (LargestFact area_Attribute largest_area)
        (SmallestFact area_Attribute smallest_area)
	) ;


  CountryArticle country continent capital area population currencyName currencyCode =
    ccText
      (ContinentFact (CountryCountryExp country) continent)
      (CapitalFact ItCountryExp capital)
      (InhabitantsAndAreaFact (CountryCountryExp country) population area)
      (CurrencyFact NoCountryExp currencyName currencyCode)
      ;

  CapitalFact country capital = attributeFact capital_CN country capital ;
  PopulationFact country population = attributeFact population_CN country (symb population) ;
  AreaFact country area = attributeFact population_CN country (symb area) ;
  ContinentFact country continent = mkS (mkCl country.np (mkCN country_CN (inContinent continent))) ;
  CurrencyFact country currencyName currencyCode = attributeFact currency_CN country (withParenthNP currencyName currencyCode) ;
  
  InhabitantsFact country int =
    mkS (Grammar.ExistNPAdv (mkNP <symb int : Card> inhabitant_CN) (inContinent country)) ;

  InhabitantsAndAreaFact country population area =
    mkS (mkCl country.np have_V2
      (mkNP and_Conj
         (mkNP <symb population : Card> inhabitant_CN)
         (mkNP a_Det (mkCN area_CN (S.mkAdv possess_Prep (mkNP <symb area : Card> square_kilometre_CN)))))) ;

  CountFact int = mkS (mkCl (mkNP <symb int : Card> country_CN)) ;
  LargestFact attribute country = mkS (mkCl country.np have_V2 (mkNP largest_Det attribute)) ;
  SmallestFact attribute country = mkS (mkCl country.np have_V2 (mkNP smallest_Det attribute)) ;
  AverageFact attribute int = mkS (mkCl (mkNP the_Det (mkCN average_A attribute)) (symb int)) ;
  TotalFact attribute int = mkS (mkCl (mkNP the_Det (mkCN total_A attribute)) (symb int)) ;
  
  ContinentCountFact continent int = mkS (Grammar.ExistNPAdv (mkNP <symb int : Card> country_CN) (inContinent continent)) ;
  ContinentLargestFact attribute continent country = mkS (mkCl country.np have_V2 (mkNP (mkNP largest_Det population_CN) (inContinent continent))) ;
  ContinentSmallestFact attribute continent country = mkS (mkCl country.np have_V2 (mkNP (mkNP smallest_Det population_CN) (inContinent continent))) ;
  ContinentAverageFact attribute continent int = mkS (mkCl (mkNP (mkNP the_Det (mkCN average_A attribute)) (inContinent continent)) (symb int)) ;
  ContinentTotalFact attribute continent int = mkS (mkCl (mkNP (mkNP the_Det (mkCN total_A attribute)) (inContinent continent)) (symb int)) ;

  CountryCountryExp country = country ** {hasPoss = False ; poss = S.mkQuant it_Pron} ;
  ItCountryExp = {np = it_NP ; hasPoss = True ; poss = S.mkQuant it_Pron ; incases = False} ;
  NoCountryExp = {np = it_NP ; hasPoss = True ; poss = the_Quant ; incases = False} ;

  population_Attribute = population_CN ;
  area_Attribute = area_CN ;

  world_Continent = {np = mkNP the_Det world_CN ; incases = True} ;

-------------
-- institution experiment
-------------

lincat
  Institution = NP ;
  InstitutionType = CN ;
  Description = CN ;
  Location = Adv ;

lin
  InstitutionInFact institution description = mkS (mkCl institution description) ;
  InstitutionDescription itype location = mkCN itype location ;
  CountryLocation country = inContinent country ;
  CountryCityLocation country city = lin Adv {s = (S.mkAdv in_Prep city).s ++ "," ++ (mkUtt country.np).s} ;
  InstitutionTypeOf itype city = mkNP the_Det (Grammar.PossNP itype city) ;

  university_InstitutionType = mkCN Lexicon.university_N ;


}