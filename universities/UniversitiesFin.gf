--# -path=.:../countries

concrete UniversitiesFin of Universities = CountriesFin **
  open
    SyntaxFin,
    ParadigmsFin,
    (L = LexiconFin)
    
in {
lincat University = NP ;

oper mkUniversity = overload {
  mkUniversity : Str -> NP
    = \s -> mkNP (mkPN s) ;
----  mkUniversity : (o,c : Str) -> NP
----    = \o,c -> mkNP (mkCN L.university_N (S.mkAdv possess_Prep (mkPN c))) ;
  } ;

lin UniversityInstitution u = u ;

lin Quinnipiac_University_University = mkUniversity "Quinnipiacin yliopisto" ;
lin Utah_State_University_University = mkUniversity "Utahin osavaltionyliopisto" ;
lin Suffolk_University_University = mkUniversity "Suffolkin yliopisto" ;
lin University_of_Richmond_University = mkUniversity "Richmondin yliopisto" ;
lin State_University_of_New_York_University = mkUniversity "New Yorkin osavaltionyliopisto" ;
lin Sophia_University_University = mkUniversity "Sophia-yliopisto" ;
lin University_of_Manitoba_University = mkUniversity "Manitoban yliopisto" ;
lin Dublin_City_University_University = mkUniversity "Dublin City University" ;
lin Addis_Ababa_University_University = mkUniversity "Addis Abeban yliopisto" ;
lin Michigan_Technological_University_University = mkUniversity "Michiganin teknillinen yliopisto" ;
lin University_of_Brasília_University = mkUniversity "Brasilian yliopisto" ;
lin University_of_Western_Australia_University = mkUniversity "Länsi-Australian yliopisto" ;
lin University_of_Vienna_University = mkUniversity "Wienin yliopisto" ;
lin Tsinghua_University_University = mkUniversity "Tsinghua-yliopisto" ;
lin 'Al-Azhar_University_University' = mkUniversity "Al-Azharin yliopisto" ;
lin Mid_Sweden_University_University = mkUniversity "Keski-Ruotsin yliopisto" ;
lin University_of_Buenos_Aires_University = mkUniversity "Buenos Airesin yliopisto" ;
lin East_China_Normal_University_University = mkUniversity "East China Normal University" ;
lin National_Autonomous_University_of_Mexico_University = mkUniversity "Universidad Nacional Autónoma de México" ;
lin Belarusian_State_University_University = mkUniversity "Valko-Venäjän valtionyliopisto" ;
lin RWTH_Aachen_University_University = mkUniversity "RWTH Aachen" ;
lin Waseda_University_University = mkUniversity "Wasedan yliopisto" ;
lin Northwestern_University_University = mkUniversity "Northwestern-yliopisto" ;
lin Karlsruhe_Institute_of_Technology_University = mkUniversity "Karlsruhen yliopisto" ;
lin Royal_Irish_Academy_of_Music_University = mkUniversity "Royal Irish Academy of Music" ;
lin 'Kim_Il-sung_University_University' = mkUniversity "Kim Il-sungin yliopisto" ;
lin University_of_Mumbai_University = mkUniversity "Mumbain yliopisto" ;
lin Sana'a_University_University = mkUniversity "Sanaa University" ;
lin Academy_of_Fine_Arts_Vienna_University = mkUniversity "Wienin kuvataideakatemia" ;
lin Academy_of_Gondishapur_University = mkUniversity "Gundishapurin akatemia" ;
lin Boston_University_University = mkUniversity "Bostonin yliopisto" ;
lin Boston_College_University = mkUniversity "Boston College" ;
lin Brandeis_University_University = mkUniversity "Brandeisin yliopisto" ;
lin Tufts_University_University = mkUniversity "Tuftsin yliopisto" ;
lin 'Texas_A&M_University_University' = mkUniversity "Texas A&M University" ;
lin University_of_Latvia_University = mkUniversity "Latvian yliopisto" ;
lin Seton_Hall_University_University = mkUniversity "Seton Hallin yliopisto" ;
lin University_of_Delhi_University = mkUniversity "Delhin yliopisto" ;
lin 'University_of_St._Gallen_University' = mkUniversity "St. Gallenin yliopisto" ;
lin University_at_Buffalo_University = mkUniversity "University at Buffalo" ;
lin TU_Wien_University = mkUniversity "Wienin teknillinen yliopisto" ;
lin Medical_University_of_Vienna_University = mkUniversity "Wienin lääketieteellinen yliopisto" ;
lin Saint_Louis_University_University = mkUniversity "Saint Louisin yliopisto" ;
lin University_of_the_West_Indies_University = mkUniversity "Länsi-Intian yliopisto" ;
lin Central_European_University_University = mkUniversity "Central European University -yliopisto" ;
lin Bangor_University_University = mkUniversity "Bangorin yliopisto" ;
lin Franz_Liszt_Academy_of_Music_University = mkUniversity "Franz Lisztin musiikkiakatemia" ;
lin Biola_University_University = mkUniversity "Biolan yliopisto" ;
lin University_of_Liechtenstein_University = mkUniversity "Liechtensteinin yliopisto" ;
}