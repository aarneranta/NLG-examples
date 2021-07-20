concrete CountriesEng of Countries = FactsEng, CountryNamesEng **

open SyntaxEng, ParadigmsEng, SymbolicEng in {

lin
  capital_Property = mkProperty "capital" ;
  area_Property = mkProperty "area" ;
  population_Property = mkProperty "population" ;
  continent_Property = mkProperty "continent" ;
  currency_Property = mkProperty "currency" ;

  populationFact obj int = mkCl obj have_V2 (mkNP <symb int : Card> (mkN "inhabitant")) ;
  continentFact obj name = mkCl obj (SyntaxEng.mkAdv in_Prep name) ;

}
