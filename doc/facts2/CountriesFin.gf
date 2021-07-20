concrete CountriesFin of Countries = FactsFin, CountryNamesFin **

open SyntaxFin, ParadigmsFin, SymbolicFin

in {

lin
  capital_Property = mkProperty "pääkaupunki" ;
  area_Property = mkProperty "pinta-ala" ;
  population_Property = mkProperty "asukasluku" ;
  continent_Property = mkProperty "maanosa" ;
  currency_Property = mkProperty "valuutta" ;

  populationFact obj int = mkCl obj (mkV2 (caseV inessive have_V2)) (mkNP <symb int : Card> (mkN "asukas")) ;
  continentFact obj name = mkCl obj (SyntaxFin.mkAdv in_Prep name) ;

}
