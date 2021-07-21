concrete CountriesFin of Countries = FactsFin, CountryNamesFin **

open SyntaxFin, ParadigmsFin, SymbolicFin

in {

lin
  capital_Attribute = mkAttribute "pääkaupunki" ;
  area_Attribute = mkAttribute "pinta-ala" ;
  population_Attribute = mkAttribute "asukasluku" ;
  continent_Attribute = mkAttribute "maanosa" ;
  currency_Attribute = mkAttribute "valuutta" ;

  populationFact obj int = mkCl obj (mkV2 (caseV inessive have_V2)) (mkNP <symb int : Card> (mkN "asukas")) ;
  continentFact obj name = mkCl obj (SyntaxFin.mkAdv in_Prep name) ;

}
