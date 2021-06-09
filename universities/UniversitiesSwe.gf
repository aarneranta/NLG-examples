concrete UniversitiesSwe of Universities =
  open
    SyntaxSwe,
    ParadigmsSwe,
    (L = LexiconSwe)
    
in {
lincat University = NP ;

oper mkUniversity = overload {
  mkUniversity : Str -> NP
    = \s -> mkNP (mkPN s) ;
----  mkUniversity : (o,c : Str) -> NP
----    = \o,c -> mkNP (mkCN L.university_N (S.mkAdv possess_Prep (mkPN c))) ;
  } ;

lin Quinnipiac_University_University = mkUniversity "Quinnipiac University" ;
lin Utah_State_University_University = mkUniversity "Utah State University" ;
lin Suffolk_University_University = mkUniversity "Suffolk University" ;
lin University_of_Richmond_University = mkUniversity "University of Richmond" ;
lin State_University_of_New_York_University = mkUniversity "State University of New York" ;
lin Sophia_University_University = mkUniversity "Sophiauniversitetet" ;
lin University_of_Manitoba_University = mkUniversity "University of Manitoba" ;
lin Dublin_City_University_University = mkUniversity "Dublin City University" ;
lin Addis_Ababa_University_University = mkUniversity "Addis Ababa University" ;
lin Michigan_Technological_University_University = mkUniversity "Michigan Technological University" ;
lin University_of_Brasília_University = mkUniversity "Brasílias universitet" ;
lin University_of_Western_Australia_University = mkUniversity "University of Western Australia" ;
lin University_of_Vienna_University = mkUniversity "Wiens universitet" ;
lin Tsinghua_University_University = mkUniversity "Tsinghuauniversitetet" ;
lin 'Al-Azhar_University_University' = mkUniversity "Al-Azharuniversitetet" ;
lin Mid_Sweden_University_University = mkUniversity "Mittuniversitetet" ;
lin University_of_Buenos_Aires_University = mkUniversity "Universitetet i Buenos Aires" ;
lin East_China_Normal_University_University = mkUniversity "East China Normal University" ;
lin National_Autonomous_University_of_Mexico_University = mkUniversity "Universidad Nacional Autónoma de México" ;
lin Belarusian_State_University_University = mkUniversity "Vitrysslands statliga universitet" ;
lin RWTH_Aachen_University_University = mkUniversity "RWTH Aachen" ;
lin Waseda_University_University = mkUniversity "Wasedauniversitetet" ;
lin Northwestern_University_University = mkUniversity "Northwestern University" ;
lin Karlsruhe_Institute_of_Technology_University = mkUniversity "Karlsruher Institut für Technologie" ;
lin Royal_Irish_Academy_of_Music_University = mkUniversity "Royal Irish Academy of Music" ;
lin 'Kim_Il-sung_University_University' = mkUniversity "Kim Il-sung-universitetet" ;
lin University_of_Mumbai_University = mkUniversity "Mumbaiuniversitetet" ;
lin Sana'a_University_University = mkUniversity "Sanaa University" ;
lin Academy_of_Fine_Arts_Vienna_University = mkUniversity "Akademie der bildenden Künste Wien" ;
lin Academy_of_Gondishapur_University = mkUniversity "Gundishapurakademin" ;
lin Boston_University_University = mkUniversity "Boston University" ;
lin Boston_College_University = mkUniversity "Boston College" ;
lin Brandeis_University_University = mkUniversity "Brandeis University" ;
lin Tufts_University_University = mkUniversity "Tufts University" ;
lin 'Texas_A&M_University_University' = mkUniversity "Texas A&M University" ;
lin University_of_Latvia_University = mkUniversity "Lettlands universitet" ;
lin Seton_Hall_University_University = mkUniversity "Seton Hall University" ;
lin University_of_Delhi_University = mkUniversity "Delhi-universitetet" ;
lin 'University_of_St._Gallen_University' = mkUniversity "Sankt Gallens Universitet" ;
lin University_at_Buffalo_University = mkUniversity "Universitetet i Buffalo" ;
lin TU_Wien_University = mkUniversity "Technische Universität Wien" ;
lin Medical_University_of_Vienna_University = mkUniversity "Medicinska Universitetet i Wien" ;
lin Saint_Louis_University_University = mkUniversity "Saint Louis University" ;
lin University_of_the_West_Indies_University = mkUniversity "University of the West Indies Mona" ;
lin Central_European_University_University = mkUniversity "Central European University" ;
lin Bangor_University_University = mkUniversity "Bangor University" ;
lin Franz_Liszt_Academy_of_Music_University = mkUniversity "Liszt-akademien" ;
lin Biola_University_University = mkUniversity "Biola University" ;
lin University_of_Liechtenstein_University = mkUniversity "Hochschule Liechtenstein" ;
}