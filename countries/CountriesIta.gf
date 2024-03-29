concrete CountriesIta of Countries = CountriesFunctor - [
  ContinentArticle,
  CountryCityLocation
  ]

with 
  (Syntax=SyntaxIta),
  (Symbolic=SymbolicIta),
  (Grammar=GrammarIta),
  (Lexicon=LexiconIta)

**
open
  ParadigmsIta,
  (S = SyntaxIta),
  (P = ParadigmsIta),
  (L = LexiconIta),
  Prelude
in {

-----------------------

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
----        (ContinentLargestFact population_Attribute continent largest_population)
----        (SmallestFact population_Attribute smallest_population)
        (LargestFact area_Attribute largest_area)
        (SmallestFact area_Attribute smallest_area)
	) ;
  CountryCityLocation country city = lin Adv {s = (S.mkAdv dative city).s ++ "," ++ (mkUtt country.np).s} ;

-----------------------

oper
  nameNP : Str -> NP = \s -> mkNP (mkPN s) ;
  singularNP : NP -> NP = \np -> np ; ----

  capital_CN = mkCN (mkN "capitale" feminine) ;
  country_CN = mkCN (mkN "paese") ;
  population_CN = mkCN (mkN "popolazione") ;
  currency_CN = mkCN (mkN "valuta") ;
  inhabitant_CN = mkCN (mkN "abitante") ;
  area_CN = mkCN (mkN "superficie") ;
  square_kilometre_CN = mkCN (mkA "quadrato") (mkN "chilometro") ;
  world_CN = mkCN (mkN "mondo") ;
  
  average_A = mkA "medio" ;
  total_A = mkA "totale" ;

---------------
-- the experiment
----------------

lin 'Bonaire,_Saint_Eustatius_and_Saba_Country' = mkCountry "Bonaire, Saint Eustatius and Saba " ;
lin 'Guinea-Bissau_Country' = mkCountry "Guinea-Bissau" ;
lin 'U.S._Virgin_Islands_Country' = mkCountry "U.S. Virgin Islands" ;
lin Afghanistan_Country = mkCountry "Afghanistan" ;
lin Aland_Islands_Country = mkCountry "Aland Islands" ;
lin Albania_Country = mkCountry "Albania" ;
lin Algeria_Country = mkCountry "Algeria" ;
lin American_Samoa_Country = mkCountry "American Samoa" ;
lin Andorra_Country = mkCountry "Andorra" ;
lin Angola_Country = mkCountry "Angola" ;
lin Anguilla_Country = mkCountry "Anguilla" ;
lin Antarctica_Country = mkCountry "Antarctica" ;
lin Antigua_and_Barbuda_Country = mkCountry "Antigua e Barbuda" ;
lin Argentina_Country = mkCountry "Argentina" ;
lin Armenia_Country = mkCountry "Armenia" ;
lin Aruba_Country = mkCountry "Aruba" ;
lin Australia_Country = mkCountry "Australia" ;
lin Austria_Country = mkCountry "Austria" ;
lin Azerbaijan_Country = mkCountry "Azerbaijan" ;
lin Bahamas_Country = mkCountry "Bahamas" ;
lin Bahrain_Country = mkCountry "Bahrein" ;
lin Bangladesh_Country = mkCountry "Bangladesh" ;
lin Barbados_Country = mkCountry "Barbados" ;
lin Belarus_Country = mkCountry "Belarus" ;
lin Belgium_Country = mkCountry "Belgium" ;
lin Belize_Country = mkCountry "Belize" ;
lin Benin_Country = mkCountry "Benin" ;
lin Bermuda_Country = mkCountry "Bermuda" ;
lin Bhutan_Country = mkCountry "Bhutan" ;
lin Bolivia_Country = mkCountry "Bolivia" ;
lin Bosnia_and_Herzegovina_Country = mkCountry "Bosnia and Herzegovina" ;
lin Botswana_Country = mkCountry "Botswana" ;
lin Bouvet_Island_Country = mkCountry "Bouvet Island" ;
lin Brazil_Country = mkCountry "Brasile" ;
lin British_Indian_Ocean_Territory_Country = mkCountry "British Indian Ocean Territory" ;
lin British_Virgin_Islands_Country = mkCountry "British Virgin Islands" ;
lin Brunei_Country = mkCountry "Brunei" ;
lin Bulgaria_Country = mkCountry "Bulgaria" ;
lin Burkina_Faso_Country = mkCountry "Burkina Faso" ;
lin Burundi_Country = mkCountry "Burundi" ;
lin Cambodia_Country = mkCountry "Cambogia" ;
lin Cameroon_Country = mkCountry "Cameroon" ;
lin Canada_Country = mkCountry "Canada" ;
lin Cape_Verde_Country = mkCountry "Capo Verde" ;
lin Cayman_Islands_Country = mkCountry "Cayman Islands" ;
lin Central_African_Republic_Country = mkCountry "Repubblica Centrafricana" ;
lin Chad_Country = mkCountry "Ciad" ;
lin Chile_Country = mkCountry "Chile" ;
lin China_Country = mkCountry "China" ;
lin Christmas_Island_Country = mkCountry "Christmas Island" ;
lin Cocos_Islands_Country = mkCountry "Cocos Islands" ;
lin Colombia_Country = mkCountry "Colombia" ;
lin Comoros_Country = mkCountry "Comore" ;
lin Cook_Islands_Country = mkCountry "Cook Islands" ;
lin Costa_Rica_Country = mkCountry "Costa Rica" ;
lin Croatia_Country = mkCountry "Croatia" ;
lin Cuba_Country = mkCountry "Cuba" ;
lin Curacao_Country = mkCountry "Curacao" ;
lin Cyprus_Country = mkCountry "Cyprus" ;
lin Czech_Republic_Country = mkCountry "Czech Republic" ;
lin Democratic_Republic_of_the_Congo_Country = mkCountry "Repubblica Democratica del Congo" ;
lin Denmark_Country = mkCountry "Denmark" ;
lin Djibouti_Country = mkCountry "Gibuti" ;
lin Dominica_Country = mkCountry "Dominica" ;
lin Dominican_Republic_Country = mkCountry "Repubblica Dominicana" ;
lin East_Timor_Country = mkCountry "Timor Est" ;
lin Ecuador_Country = mkCountry "Ecuador" ;
lin Egypt_Country = mkCountry "Egitto" ;
lin El_Salvador_Country = mkCountry "El Salvador" ;
lin Equatorial_Guinea_Country = mkCountry "Equatorial Guinea" ;
lin Eritrea_Country = mkCountry "Eritrea" ;
lin Estonia_Country = mkCountry "Estonia" ;
lin Ethiopia_Country = mkCountry "Ethiopia" ;
lin Falkland_Islands_Country = mkCountry "Falkland Islands" ;
lin Faroe_Islands_Country = mkCountry "Faroe Islands" ;
lin Fiji_Country = mkCountry "Figi" ;
lin Finland_Country = mkCountry "Finlandia" ;
lin France_Country = mkCountry "France" ;
lin French_Guiana_Country = mkCountry "French Guiana" ;
lin French_Polynesia_Country = mkCountry "French Polynesia" ;
lin French_Southern_Territories_Country = mkCountry "French Southern Territories" ;
lin Gabon_Country = mkCountry "Gabon" ;
lin Gambia_Country = mkCountry "Gambia" ;
lin Georgia_Country = mkCountry "Georgia" ;
lin Germany_Country = mkCountry "Germany" ;
lin Ghana_Country = mkCountry "Ghana" ;
lin Gibraltar_Country = mkCountry "Gibraltar" ;
lin Greece_Country = mkCountry "Grecia" ;
lin Greenland_Country = mkCountry "Greenland" ;
lin Grenada_Country = mkCountry "Grenada" ;
lin Guadeloupe_Country = mkCountry "Guadeloupe" ;
lin Guam_Country = mkCountry "Guam" ;
lin Guatemala_Country = mkCountry "Guatemala" ;
lin Guernsey_Country = mkCountry "Guernsey" ;
lin Guinea_Country = mkCountry "Guinea" ;
lin Guyana_Country = mkCountry "Guyana" ;
lin Haiti_Country = mkCountry "Haiti" ;
lin Heard_Island_and_McDonald_Islands_Country = mkCountry "Heard Island and McDonald Islands" ;
lin Honduras_Country = mkCountry "Honduras" ;
lin Hong_Kong_Country = mkCountry "Hong Kong" ;
lin Hungary_Country = mkCountry "Hungary" ;
lin Iceland_Country = mkCountry "Iceland" ;
lin India_Country = mkCountry "India" ;
lin Indonesia_Country = mkCountry "Indonesia" ;
lin Iran_Country = mkCountry "Iran" ;
lin Iraq_Country = mkCountry "Iraq" ;
lin Ireland_Country = mkCountry "Ireland" ;
lin Isle_of_Man_Country = mkCountry "Isle of Man" ;
lin Israel_Country = mkCountry "Israele" ;
lin Italy_Country = mkCountry "Italia" ;
lin Ivory_Coast_Country = mkCountry "Ivory Coast" ;
lin Jamaica_Country = mkCountry "Giamaica" ;
lin Japan_Country = mkCountry "Japan" ;
lin Jersey_Country = mkCountry "Jersey" ;
lin Jordan_Country = mkCountry "Giordania" ;
lin Kazakhstan_Country = mkCountry "Kazakhstan" ;
lin Kenya_Country = mkCountry "Kenya" ;
lin Kiribati_Country = mkCountry "Kiribati" ;
lin Kosovo_Country = mkCountry "Kosovo" ;
lin Kuwait_Country = mkCountry "Kuwait" ;
lin Kyrgyzstan_Country = mkCountry "Kyrgyzstan" ;
lin Laos_Country = mkCountry "Laos" ;
lin Latvia_Country = mkCountry "Latvia" ;
lin Lebanon_Country = mkCountry "Lebanon" ;
lin Lesotho_Country = mkCountry "Lesotho" ;
lin Liberia_Country = mkCountry "Liberia" ;
lin Libya_Country = mkCountry "Libia" ;
lin Liechtenstein_Country = mkCountry "Liechtenstein" ;
lin Lithuania_Country = mkCountry "Lithuania" ;
lin Luxembourg_Country = mkCountry "Luxembourg" ;
lin Macao_Country = mkCountry "Macao" ;
lin Macedonia_Country = mkCountry "Macedonia" ;
lin Madagascar_Country = mkCountry "Madagascar" ;
lin Malawi_Country = mkCountry "Malawi" ;
lin Malaysia_Country = mkCountry "Malaysia" ;
lin Maldives_Country = mkCountry "Maldive" ;
lin Mali_Country = mkCountry "Mali" ;
lin Malta_Country = mkCountry "Malta" ;
lin Marshall_Islands_Country = mkCountry "Marshall Islands" ;
lin Martinique_Country = mkCountry "Martinique" ;
lin Mauritania_Country = mkCountry "Mauritania" ;
lin Mauritius_Country = mkCountry "Mauritius" ;
lin Mayotte_Country = mkCountry "Mayotte" ;
lin Mexico_Country = mkCountry "Messico" ;
lin Micronesia_Country = mkCountry "Micronesia" ;
lin Moldova_Country = mkCountry "Moldova" ;
lin Monaco_Country = mkCountry "Monaco" ;
lin Mongolia_Country = mkCountry "Mongolia" ;
lin Montenegro_Country = mkCountry "Montenegro" ;
lin Montserrat_Country = mkCountry "Montserrat" ;
lin Morocco_Country = mkCountry "Marocco" ;
lin Mozambique_Country = mkCountry "Mozambico" ;
lin Myanmar_Country = mkCountry "Birmania" ;
lin Namibia_Country = mkCountry "Namibia" ;
lin Nauru_Country = mkCountry "Nauru" ;
lin Nepal_Country = mkCountry "Nepal" ;
lin Netherlands_Antilles_Country = mkCountry "Netherlands Antilles" ;
lin Netherlands_Country = mkCountry "Paesi Bassi" ;
lin New_Caledonia_Country = mkCountry "New Caledonia" ;
lin New_Zealand_Country = mkCountry "New Zealand" ;
lin Nicaragua_Country = mkCountry "Nicaragua" ;
lin Niger_Country = mkCountry "Niger" ;
lin Nigeria_Country = mkCountry "Nigeria" ;
lin Niue_Country = mkCountry "Niue" ;
lin Norfolk_Island_Country = mkCountry "Norfolk Island" ;
lin North_Korea_Country = mkCountry "Corea del Nord" ;
lin Northern_Mariana_Islands_Country = mkCountry "Northern Mariana Islands" ;
lin Norway_Country = mkCountry "Norvegia" ;
lin Oman_Country = mkCountry "Oman" ;
lin Pakistan_Country = mkCountry "Pakistan" ;
lin Palau_Country = mkCountry "Palau" ;
lin Palestinian_Territory_Country = mkCountry "Palestinian Territory" ;
lin Panama_Country = mkCountry "Panama" ;
lin Papua_New_Guinea_Country = mkCountry "Papua Nuova Guinea" ;
lin Paraguay_Country = mkCountry "Paraguay" ;
lin Peru_Country = mkCountry "Perù" ;
lin Philippines_Country = mkCountry "Philippines" ;
lin Pitcairn_Country = mkCountry "Pitcairn" ;
lin Poland_Country = mkCountry "Polonia" ;
lin Portugal_Country = mkCountry "Portugal" ;
lin Puerto_Rico_Country = mkCountry "Puerto Rico" ;
lin Qatar_Country = mkCountry "Qatar" ;
lin Republic_of_the_Congo_Country = mkCountry "Repubblica del Congo" ;
lin Reunion_Country = mkCountry "Reunion" ;
lin Romania_Country = mkCountry "Romania" ;
lin Russia_Country = mkCountry "Russia" ;
lin Rwanda_Country = mkCountry "Rwanda" ;
lin Saint_Barthelemy_Country = mkCountry "Saint Barthelemy" ;
lin Saint_Helena_Country = mkCountry "Saint Helena" ;
lin Saint_Kitts_and_Nevis_Country = mkCountry "Saint Kitts e Nevis" ;
lin Saint_Lucia_Country = mkCountry "Saint Lucia" ;
lin Saint_Martin_Country = mkCountry "Saint Martin" ;
lin Saint_Pierre_and_Miquelon_Country = mkCountry "Saint Pierre and Miquelon" ;
lin Saint_Vincent_and_the_Grenadines_Country = mkCountry "Saint Vincent e Grenadine" ;
lin Samoa_Country = mkCountry "Samoa" ;
lin San_Marino_Country = mkCountry "San Marino" ;
lin Sao_Tome_and_Principe_Country = mkCountry "Sao Tome and Principe" ;
lin Saudi_Arabia_Country = mkCountry "Saudi Arabia" ;
lin Senegal_Country = mkCountry "Senegal" ;
lin Serbia_Country = mkCountry "Serbia" ;
lin Serbia_and_Montenegro_Country = mkCountry "Serbia and Montenegro" ;
lin Seychelles_Country = mkCountry "Seychelles" ;
lin Sierra_Leone_Country = mkCountry "Sierra Leone" ;
lin Singapore_Country = mkCountry "Singapore" ;
lin Sint_Maarten_Country = mkCountry "Sint Maarten" ;
lin Slovakia_Country = mkCountry "Slovacchia" ;
lin Slovenia_Country = mkCountry "Slovenia" ;
lin Solomon_Islands_Country = mkCountry "Isole Salomone" ;
lin Somalia_Country = mkCountry "Somalia" ;
lin South_Africa_Country = mkCountry "Sudafrica" ;
lin South_Georgia_and_the_South_Sandwich_Islands_Country = mkCountry "South Georgia and the South Sandwich Islands" ;
lin South_Korea_Country = mkCountry "South Korea" ;
lin South_Sudan_Country = mkCountry "Sudan del Sud" ;
lin Spain_Country = mkCountry "Spain" ;
lin Sri_Lanka_Country = mkCountry "Sri Lanka" ;
lin Sudan_Country = mkCountry "Sudan" ;
lin Suriname_Country = mkCountry "Suriname" ;
lin Svalbard_and_Jan_Mayen_Country = mkCountry "Svalbard and Jan Mayen" ;
lin Swaziland_Country = mkCountry "Swaziland" ;
lin Sweden_Country = mkCountry "Svezia" ;
lin Switzerland_Country = mkCountry "Switzerland" ;
lin Syria_Country = mkCountry "Siria" ;
lin Taiwan_Country = mkCountry "Taiwan" ;
lin Tajikistan_Country = mkCountry "Tagikistan" ;
lin Tanzania_Country = mkCountry "Tanzania" ;
lin Thailand_Country = mkCountry "Thailandia" ;
lin Togo_Country = mkCountry "Togo" ;
lin Tokelau_Country = mkCountry "Tokelau" ;
lin Tonga_Country = mkCountry "Tonga" ;
lin Trinidad_and_Tobago_Country = mkCountry "Trinidad e Tobago" ;
lin Tunisia_Country = mkCountry "Tunisia" ;
lin Turkey_Country = mkCountry "Turkey" ;
lin Turkmenistan_Country = mkCountry "Turkmenistan" ;
lin Turks_and_Caicos_Islands_Country = mkCountry "Turks and Caicos Islands" ;
lin Tuvalu_Country = mkCountry "Tuvalu" ;
lin Uganda_Country = mkCountry "Uganda" ;
lin Ukraine_Country = mkCountry "Ukraine" ;
lin United_Arab_Emirates_Country = mkCountry "Emirati Arabi Uniti" ;
lin United_Kingdom_Country = mkCountry "Regno Unito" ;
lin United_States_Country = mkCountry "United States" ;
lin United_States_Minor_Outlying_Islands_Country = mkCountry "United States Minor Outlying Islands" ;
lin Uruguay_Country = mkCountry "Uruguay" ;
lin Uzbekistan_Country = mkCountry "Uzbekistan" ;
lin Vanuatu_Country = mkCountry "Vanuatu" ;
lin Vatican_Country = mkCountry "Vatican" ;
lin Venezuela_Country = mkCountry "Venezuela" ;
lin Vietnam_Country = mkCountry "Vietnam" ;
lin Wallis_and_Futuna_Country = mkCountry "Wallis and Futuna" ;
lin Western_Sahara_Country = mkCountry "Western Sahara" ;
lin Yemen_Country = mkCountry "Yemen" ;
lin Zambia_Country = mkCountry "Zambia" ;
lin Zimbabwe_Country = mkCountry "Zimbabwe" ;
lin 'Basse-Terre_City' = mkCity "Basse-Terre" ;
lin 'Douglas,_Isle_of_Man_City' = mkCity "Douglas, Isle of Man" ;
lin 'El-Aaiun_City' = mkCity "El-Aaiun" ;
lin 'Fort-de-France_City' = mkCity "Fort-de-France" ;
lin 'Port-au-Prince_City' = mkCity "Port-au-Prince" ;
lin 'Port-aux-Francais_City' = mkCity "Port-aux-Francais" ;
lin 'Porto-Novo_City' = mkCity "Porto-Novo" ;
lin 'Saint-Denis_City' = mkCity "Saint-Denis" ;
lin 'Saint-Pierre_City' = mkCity "Saint-Pierre" ;
lin 'St._George\'s_City' = mkCity "Saint George's" ;
lin 'St._John\'s_City' = mkCity "St. John's" ;
lin Abu_Dhabi_City = mkCity "Abu Dhabi" ;
lin Abuja_City = mkCity "Abuja" ;
lin Accra_City = mkCity "Accra" ;
lin Adamstown_City = mkCity "Adamstown" ;
lin Addis_Ababa_City = mkCity "Addis Ababa" ;
lin Algiers_City = mkCity "Algeri" ;
lin Alofi_City = mkCity "Alofi" ;
lin Amman_City = mkCity "Amman" ;
lin Amsterdam_City = mkCity "Amsterdam" ;
lin Andorra_la_Vella_City = mkCity "Andorra la Vella" ;
lin Ankara_City = mkCity "Ankara" ;
lin Antananarivo_City = mkCity "Antananarivo" ;
lin Apia_City = mkCity "Apia" ;
lin Ashgabat_City = mkCity "Aşgabat" ;
lin Asmara_City = mkCity "Asmara" ;
lin Astana_City = mkCity "Astana" ;
lin Asuncion_City = mkCity "Asuncion" ;
lin Athens_City = mkCity "Atene" ;
lin Avarua_City = mkCity "Avarua" ;
lin Baghdad_City = mkCity "Baghdad" ;
lin Baku_City = mkCity "Baku" ;
lin Bamako_City = mkCity "Bamako" ;
lin Bandar_Seri_Begawan_City = mkCity "Bandar Seri Begawan" ;
lin Bangkok_City = mkCity "Bangkok" ;
lin Bangui_City = mkCity "Bangui" ;
lin Banjul_City = mkCity "Banjul" ;
lin Basseterre_City = mkCity "Basseterre" ;
lin Beijing_City = mkCity "Pechino" ;
lin Beirut_City = mkCity "Beirut" ;
lin Belgrade_City = mkCity "Belgrade" ;
lin Belmopan_City = mkCity "Belmopan" ;
lin Berlin_City = mkCity "Berlin" ;
lin Berne_City = mkCity "Berne" ;
lin Bishkek_City = mkCity "Bishkek" ;
lin Bissau_City = mkCity "Bissau" ;
lin Bogota_City = mkCity "Bogota" ;
lin Brasilia_City = mkCity "Brasilia" ;
lin Bratislava_City = mkCity "Bratislava" ;
lin Brazzaville_City = mkCity "Brazzaville" ;
lin Bridgetown_City = mkCity "Bridgetown" ;
lin Brussels_City = mkCity "Brussels" ;
lin Bucharest_City = mkCity "Bucharest" ;
lin Budapest_City = mkCity "Budapest" ;
lin Buenos_Aires_City = mkCity "Buenos Aires" ;
lin Bujumbura_City = mkCity "Bujumbura" ;
lin Cairo_City = mkCity "Il Cairo" ;
lin Canberra_City = mkCity "Canberra" ;
---lin noCity = mkCity "" ;
lin Caracas_City = mkCity "Caracas" ;
lin Castries_City = mkCity "Castries" ;
lin Cayenne_City = mkCity "Cayenne" ;
lin Charlotte_Amalie_City = mkCity "Charlotte Amalie" ;
lin Chisinau_City = mkCity "Chisinau" ;
lin Cockburn_Town_City = mkCity "Cockburn Town" ;
lin Colombo_City = mkCity "Colombo" ;
lin Conakry_City = mkCity "Conakry" ;
lin Copenhagen_City = mkCity "Copenhagen" ;
lin Dakar_City = mkCity "Dakar" ;
lin Damascus_City = mkCity "Damasco" ;
lin Dhaka_City = mkCity "Dacca" ;
lin Diego_Garcia_City = mkCity "Diego Garcia" ;
lin Dili_City = mkCity "Dili" ;
lin Djibouti_City = mkCity "Gibuti" ;
lin Dodoma_City = mkCity "Dodoma" ;
lin Doha_City = mkCity "Doha" ;
lin Dublin_City = mkCity "Dublin" ;
lin Dushanbe_City = mkCity "Dušanbe" ;
lin East_Jerusalem_City = mkCity "East Jerusalem" ;
lin Flying_Fish_Cove_City = mkCity "Flying Fish Cove" ;
lin Freetown_City = mkCity "Freetown" ;
lin Funafuti_City = mkCity "Funafuti" ;
lin Gaborone_City = mkCity "Gaborone" ;
lin George_Town_City = mkCity "George Town" ;
lin Georgetown_City = mkCity "Georgetown" ;
lin Gibraltar_City = mkCity "Gibraltar" ;
lin Grytviken_City = mkCity "Grytviken" ;
lin Guatemala_City_City = mkCity "Città del Guatemala" ;
lin Gustavia_City = mkCity "Gustavia" ;
lin Hagatna_City = mkCity "Hagatna" ;
lin Hamilton_City = mkCity "Hamilton" ;
lin Hanoi_City = mkCity "Hanoi" ;
lin Harare_City = mkCity "Harare" ;
lin Havana_City = mkCity "Havana" ;
lin Helsinki_City = mkCity "Helsinki" ;
lin Hong_Kong_City = mkCity "Hong Kong" ;
lin Honiara_City = mkCity "Honiara" ;
lin Islamabad_City = mkCity "Islamabad" ;
lin Jakarta_City = mkCity "Giacarta" ;
lin Jamestown_City = mkCity "Jamestown" ;
lin Jerusalem_City = mkCity "Gerusalemme" ;
lin Juba_City = mkCity "Giuba" ;
lin Kabul_City = mkCity "Kabul" ;
lin Kampala_City = mkCity "Kampala" ;
lin Kathmandu_City = mkCity "Katmandu" ;
lin Khartoum_City = mkCity "Khartum" ;
lin Kiev_City = mkCity "Kiev" ;
lin Kigali_City = mkCity "Kigali" ;
lin Kingston_City = mkCity "Kingston" ;
lin Kingstown_City = mkCity "Kingstown" ;
lin Kinshasa_City = mkCity "Kinshasa" ;
lin Kuala_Lumpur_City = mkCity "Kuala Lumpur" ;
lin Kuwait_City_City = mkCity "Kuwait City" ;
lin Libreville_City = mkCity "Libreville" ;
lin Lilongwe_City = mkCity "Lilongwe" ;
lin Lima_City = mkCity "Lima" ;
lin Lisbon_City = mkCity "Lisbon" ;
lin Ljubljana_City = mkCity "Ljubljana" ;
lin Lome_City = mkCity "Lome" ;
lin London_City = mkCity "Londra" ;
lin Longyearbyen_City = mkCity "Longyearbyen" ;
lin Luanda_City = mkCity "Luanda" ;
lin Lusaka_City = mkCity "Lusaka" ;
lin Luxembourg_City = mkCity "Luxembourg" ;
lin Macao_City = mkCity "Macao" ;
lin Madrid_City = mkCity "Madrid" ;
lin Majuro_City = mkCity "Majuro" ;
lin Malabo_City = mkCity "Malabo" ;
lin Male_City = mkCity "Male" ;
lin Mamoudzou_City = mkCity "Mamoudzou" ;
lin Managua_City = mkCity "Managua" ;
lin Manama_City = mkCity "Manama" ;
lin Manila_City = mkCity "Manila" ;
lin Maputo_City = mkCity "Maputo" ;
lin Mariehamn_City = mkCity "Mariehamn" ;
lin Marigot_City = mkCity "Marigot" ;
lin Maseru_City = mkCity "Maseru" ;
lin Mata_Utu_City = mkCity "Mata Utu" ;
lin Mbabane_City = mkCity "Mbabane" ;
lin Melekeok_City = mkCity "Melekeok" ;
lin Mexico_City_City = mkCity "Città del Messico" ;
lin Minsk_City = mkCity "Minsk" ;
lin Mogadishu_City = mkCity "Mogadishu" ;
lin Monaco_City = mkCity "Monaco" ;
lin Monrovia_City = mkCity "Monrovia" ;
lin Montevideo_City = mkCity "Montevideo" ;
lin Moroni_City = mkCity "Moroni" ;
lin Moscow_City = mkCity "Moscow" ;
lin Muscat_City = mkCity "Muscat" ;
lin N'Djamena_City = mkCity "N’Djamena" ;
lin Nairobi_City = mkCity "Nairobi" ;
lin Nassau_City = mkCity "Nassau" ;
lin Nay_Pyi_Taw_City = mkCity "Nay Pyi Taw" ;
lin New_Delhi_City = mkCity "New Delhi" ;
lin Niamey_City = mkCity "Niamey" ;
lin Nicosia_City = mkCity "Nicosia" ;
lin Nouakchott_City = mkCity "Nouakchott" ;
lin Noumea_City = mkCity "Noumea" ;
lin Nuku'alofa_City = mkCity "Nuku'alofa" ;
lin Nuuk_City = mkCity "Nuuk" ;
lin Oranjestad_City = mkCity "Oranjestad" ;
lin Oslo_City = mkCity "Oslo" ;
lin Ottawa_City = mkCity "Ottawa" ;
lin Ouagadougou_City = mkCity "Ouagadougou" ;
lin Pago_Pago_City = mkCity "Pago Pago" ;
lin Palikir_City = mkCity "Palikir" ;
lin Panama_City_City = mkCity "Panama City" ;
lin Papeete_City = mkCity "Papeete" ;
lin Paramaribo_City = mkCity "Paramaribo" ;
lin Paris_City = mkCity "Paris" ;
lin Philipsburg_City = mkCity "Philipsburg" ;
lin Phnom_Penh_City = mkCity "Phnom Penh" ;
lin Plymouth_City = mkCity "Plymouth" ;
lin Podgorica_City = mkCity "Podgorica" ;
lin Port_Louis_City = mkCity "Port Louis" ;
lin Port_Moresby_City = mkCity "Port Moresby" ;
lin Port_Vila_City = mkCity "Port Vila" ;
lin Port_of_Spain_City = mkCity "Port of Spain" ;
lin Prague_City = mkCity "Prague" ;
lin Praia_City = mkCity "Praia" ;
lin Pretoria_City = mkCity "Pretoria" ;
lin Pristina_City = mkCity "Pristina" ;
lin Pyongyang_City = mkCity "Pyongyang" ;
lin Quito_City = mkCity "Quito" ;
lin Rabat_City = mkCity "Rabat" ;
lin Reykjavik_City = mkCity "Reykjavik" ;
lin Riga_City = mkCity "Riga" ;
lin Riyadh_City = mkCity "Riyadh" ;
lin Road_Town_City = mkCity "Road Town" ;
lin Rome_City = mkCity "Roma" ;
lin Roseau_City = mkCity "Roseau" ;
lin Saint_Helier_City = mkCity "Saint Helier" ;
lin Saipan_City = mkCity "Saipan" ;
lin San_Jose_City = mkCity "San Jose" ;
lin San_Juan_City = mkCity "San Juan" ;
lin San_Marino_City = mkCity "San Marino" ;
lin San_Salvador_City = mkCity "San Salvador" ;
lin Sanaa_City = mkCity "Sanaa" ;
lin Santiago_City = mkCity "Santiago" ;
lin Santo_Domingo_City = mkCity "Santo Domingo" ;
lin Sao_Tome_City = mkCity "Sao Tome" ;
lin Sarajevo_City = mkCity "Sarajevo" ;
lin Seoul_City = mkCity "Seoul" ;
lin Singapur_City = mkCity "Singapur" ;
lin Skopje_City = mkCity "Skopje" ;
lin Sofia_City = mkCity "Sofia" ;
lin St_Peter_Port_City = mkCity "St Peter Port" ;
lin Stanley_City = mkCity "Stanley" ;
lin Stockholm_City = mkCity "Stoccolma" ;
lin Sucre_City = mkCity "Sucre" ;
lin Suva_City = mkCity "Suva" ;
lin Taipei_City = mkCity "Taipei" ;
lin Tallinn_City = mkCity "Tallinn" ;
lin Tarawa_City = mkCity "Tarawa" ;
lin Tashkent_City = mkCity "Tashkent" ;
lin Tbilisi_City = mkCity "Tbilisi" ;
lin Tegucigalpa_City = mkCity "Tegucigalpa" ;
lin Tehran_City = mkCity "Tehran" ;
lin The_Valley_City = mkCity "The Valley" ;
lin Thimphu_City = mkCity "Thimphu" ;
lin Tirana_City = mkCity "Tirana" ;
lin Tokyo_City = mkCity "Tokyo" ;
lin Torshavn_City = mkCity "Torshavn" ;
lin Tripolis_City = mkCity "Tripolis" ;
lin Tunis_City = mkCity "Tunis" ;
lin Ulan_Bator_City = mkCity "Ulan Bator" ;
lin Vaduz_City = mkCity "Vaduz" ;
lin Valletta_City = mkCity "Valletta" ;
lin Vatican_City_City = mkCity "Vatican City" ;
lin Victoria_City = mkCity "Victoria" ;
lin Vienna_City = mkCity "Vienna" ;
lin Vientiane_City = mkCity "Vientiane" ;
lin Vilnius_City = mkCity "Vilnius" ;
lin Warsaw_City = mkCity "Varsavia" ;
lin Washington_City = mkCity "Washington" ;
lin Wellington_City = mkCity "Wellington" ;
lin West_Island_City = mkCity "West Island" ;
lin Willemstad_City = mkCity "Willemstad" ;
lin Windhoek_City = mkCity "Windhoek" ;
lin Yamoussoukro_City = mkCity "Yamoussoukro" ;
lin Yaounde_City = mkCity "Yaounde" ;
lin Yaren_City = mkCity "Yaren" ;
lin Yerevan_City = mkCity "Yerevan" ;
lin Zagreb_City = mkCity "Zagreb" ;
lin AF_Continent = mkCountry "Africa" ;
lin AN_Continent = mkCountry "Antarctica" ;
lin AS_Continent = mkCountry "Asia" ;
lin EU_Continent = mkCountry "Europa" ;
lin NA_Continent = mkCountry "Nord America" ;
lin OC_Continent = mkCountry "Oceania" ;
lin SA_Continent = mkCountry "Sud America" ;
lin AED_CurrencyCode = mkCurrencyCode "AED" ;
lin AFN_CurrencyCode = mkCurrencyCode "AFN" ;
lin ALL_CurrencyCode = mkCurrencyCode "ALL" ;
lin AMD_CurrencyCode = mkCurrencyCode "AMD" ;
lin ANG_CurrencyCode = mkCurrencyCode "ANG" ;
lin AOA_CurrencyCode = mkCurrencyCode "AOA" ;
lin ARS_CurrencyCode = mkCurrencyCode "ARS" ;
lin AUD_CurrencyCode = mkCurrencyCode "AUD" ;
lin AWG_CurrencyCode = mkCurrencyCode "AWG" ;
lin AZN_CurrencyCode = mkCurrencyCode "AZN" ;
lin BAM_CurrencyCode = mkCurrencyCode "BAM" ;
lin BBD_CurrencyCode = mkCurrencyCode "BBD" ;
lin BDT_CurrencyCode = mkCurrencyCode "BDT" ;
lin BGN_CurrencyCode = mkCurrencyCode "BGN" ;
lin BHD_CurrencyCode = mkCurrencyCode "BHD" ;
lin BIF_CurrencyCode = mkCurrencyCode "BIF" ;
lin BMD_CurrencyCode = mkCurrencyCode "BMD" ;
lin BND_CurrencyCode = mkCurrencyCode "BND" ;
lin BOB_CurrencyCode = mkCurrencyCode "BOB" ;
lin BRL_CurrencyCode = mkCurrencyCode "BRL" ;
lin BSD_CurrencyCode = mkCurrencyCode "BSD" ;
lin BTN_CurrencyCode = mkCurrencyCode "BTN" ;
lin BWP_CurrencyCode = mkCurrencyCode "BWP" ;
lin BYR_CurrencyCode = mkCurrencyCode "BYR" ;
lin BZD_CurrencyCode = mkCurrencyCode "BZD" ;
lin CAD_CurrencyCode = mkCurrencyCode "CAD" ;
lin CDF_CurrencyCode = mkCurrencyCode "CDF" ;
lin CHF_CurrencyCode = mkCurrencyCode "CHF" ;
lin CLP_CurrencyCode = mkCurrencyCode "CLP" ;
lin CNY_CurrencyCode = mkCurrencyCode "CNY" ;
lin COP_CurrencyCode = mkCurrencyCode "COP" ;
lin CRC_CurrencyCode = mkCurrencyCode "CRC" ;
lin CUP_CurrencyCode = mkCurrencyCode "CUP" ;
lin CVE_CurrencyCode = mkCurrencyCode "CVE" ;
lin CZK_CurrencyCode = mkCurrencyCode "CZK" ;
---lin noCurrencyCode = mkCurrencyCode "" ;
lin DJF_CurrencyCode = mkCurrencyCode "DJF" ;
lin DKK_CurrencyCode = mkCurrencyCode "DKK" ;
lin DOP_CurrencyCode = mkCurrencyCode "DOP" ;
lin DZD_CurrencyCode = mkCurrencyCode "DZD" ;
lin EGP_CurrencyCode = mkCurrencyCode "EGP" ;
lin ERN_CurrencyCode = mkCurrencyCode "ERN" ;
lin ETB_CurrencyCode = mkCurrencyCode "ETB" ;
lin EUR_CurrencyCode = mkCurrencyCode "EUR" ;
lin FJD_CurrencyCode = mkCurrencyCode "FJD" ;
lin FKP_CurrencyCode = mkCurrencyCode "FKP" ;
lin GBP_CurrencyCode = mkCurrencyCode "GBP" ;
lin GEL_CurrencyCode = mkCurrencyCode "GEL" ;
lin GHS_CurrencyCode = mkCurrencyCode "GHS" ;
lin GIP_CurrencyCode = mkCurrencyCode "GIP" ;
lin GMD_CurrencyCode = mkCurrencyCode "GMD" ;
lin GNF_CurrencyCode = mkCurrencyCode "GNF" ;
lin GTQ_CurrencyCode = mkCurrencyCode "GTQ" ;
lin GYD_CurrencyCode = mkCurrencyCode "GYD" ;
lin HKD_CurrencyCode = mkCurrencyCode "HKD" ;
lin HNL_CurrencyCode = mkCurrencyCode "HNL" ;
lin HRK_CurrencyCode = mkCurrencyCode "HRK" ;
lin HTG_CurrencyCode = mkCurrencyCode "HTG" ;
lin HUF_CurrencyCode = mkCurrencyCode "HUF" ;
lin IDR_CurrencyCode = mkCurrencyCode "IDR" ;
lin ILS_CurrencyCode = mkCurrencyCode "ILS" ;
lin INR_CurrencyCode = mkCurrencyCode "INR" ;
lin IQD_CurrencyCode = mkCurrencyCode "IQD" ;
lin IRR_CurrencyCode = mkCurrencyCode "IRR" ;
lin ISK_CurrencyCode = mkCurrencyCode "ISK" ;
lin JMD_CurrencyCode = mkCurrencyCode "JMD" ;
lin JOD_CurrencyCode = mkCurrencyCode "JOD" ;
lin JPY_CurrencyCode = mkCurrencyCode "JPY" ;
lin KES_CurrencyCode = mkCurrencyCode "KES" ;
lin KGS_CurrencyCode = mkCurrencyCode "KGS" ;
lin KHR_CurrencyCode = mkCurrencyCode "KHR" ;
lin KMF_CurrencyCode = mkCurrencyCode "KMF" ;
lin KPW_CurrencyCode = mkCurrencyCode "KPW" ;
lin KRW_CurrencyCode = mkCurrencyCode "KRW" ;
lin KWD_CurrencyCode = mkCurrencyCode "KWD" ;
lin KYD_CurrencyCode = mkCurrencyCode "KYD" ;
lin KZT_CurrencyCode = mkCurrencyCode "KZT" ;
lin LAK_CurrencyCode = mkCurrencyCode "LAK" ;
lin LBP_CurrencyCode = mkCurrencyCode "LBP" ;
lin LKR_CurrencyCode = mkCurrencyCode "LKR" ;
lin LRD_CurrencyCode = mkCurrencyCode "LRD" ;
lin LSL_CurrencyCode = mkCurrencyCode "LSL" ;
lin LYD_CurrencyCode = mkCurrencyCode "LYD" ;
lin MAD_CurrencyCode = mkCurrencyCode "MAD" ;
lin MDL_CurrencyCode = mkCurrencyCode "MDL" ;
lin MGA_CurrencyCode = mkCurrencyCode "MGA" ;
lin MKD_CurrencyCode = mkCurrencyCode "MKD" ;
lin MMK_CurrencyCode = mkCurrencyCode "MMK" ;
lin MNT_CurrencyCode = mkCurrencyCode "MNT" ;
lin MOP_CurrencyCode = mkCurrencyCode "MOP" ;
lin MRO_CurrencyCode = mkCurrencyCode "MRO" ;
lin MUR_CurrencyCode = mkCurrencyCode "MUR" ;
lin MVR_CurrencyCode = mkCurrencyCode "MVR" ;
lin MWK_CurrencyCode = mkCurrencyCode "MWK" ;
lin MXN_CurrencyCode = mkCurrencyCode "MXN" ;
lin MYR_CurrencyCode = mkCurrencyCode "MYR" ;
lin MZN_CurrencyCode = mkCurrencyCode "MZN" ;
lin NAD_CurrencyCode = mkCurrencyCode "NAD" ;
lin NGN_CurrencyCode = mkCurrencyCode "NGN" ;
lin NIO_CurrencyCode = mkCurrencyCode "NIO" ;
lin NOK_CurrencyCode = mkCurrencyCode "NOK" ;
lin NPR_CurrencyCode = mkCurrencyCode "NPR" ;
lin NZD_CurrencyCode = mkCurrencyCode "NZD" ;
lin OMR_CurrencyCode = mkCurrencyCode "OMR" ;
lin PAB_CurrencyCode = mkCurrencyCode "PAB" ;
lin PEN_CurrencyCode = mkCurrencyCode "PEN" ;
lin PGK_CurrencyCode = mkCurrencyCode "PGK" ;
lin PHP_CurrencyCode = mkCurrencyCode "PHP" ;
lin PKR_CurrencyCode = mkCurrencyCode "PKR" ;
lin PLN_CurrencyCode = mkCurrencyCode "PLN" ;
lin PYG_CurrencyCode = mkCurrencyCode "PYG" ;
lin QAR_CurrencyCode = mkCurrencyCode "QAR" ;
lin RON_CurrencyCode = mkCurrencyCode "RON" ;
lin RSD_CurrencyCode = mkCurrencyCode "RSD" ;
lin RUB_CurrencyCode = mkCurrencyCode "RUB" ;
lin RWF_CurrencyCode = mkCurrencyCode "RWF" ;
lin SAR_CurrencyCode = mkCurrencyCode "SAR" ;
lin SBD_CurrencyCode = mkCurrencyCode "SBD" ;
lin SCR_CurrencyCode = mkCurrencyCode "SCR" ;
lin SDG_CurrencyCode = mkCurrencyCode "SDG" ;
lin SEK_CurrencyCode = mkCurrencyCode "SEK" ;
lin SGD_CurrencyCode = mkCurrencyCode "SGD" ;
lin SHP_CurrencyCode = mkCurrencyCode "SHP" ;
lin SLL_CurrencyCode = mkCurrencyCode "SLL" ;
lin SOS_CurrencyCode = mkCurrencyCode "SOS" ;
lin SRD_CurrencyCode = mkCurrencyCode "SRD" ;
lin SSP_CurrencyCode = mkCurrencyCode "SSP" ;
lin STD_CurrencyCode = mkCurrencyCode "STD" ;
lin SYP_CurrencyCode = mkCurrencyCode "SYP" ;
lin SZL_CurrencyCode = mkCurrencyCode "SZL" ;
lin THB_CurrencyCode = mkCurrencyCode "THB" ;
lin TJS_CurrencyCode = mkCurrencyCode "TJS" ;
lin TMT_CurrencyCode = mkCurrencyCode "TMT" ;
lin TND_CurrencyCode = mkCurrencyCode "TND" ;
lin TOP_CurrencyCode = mkCurrencyCode "TOP" ;
lin TRY_CurrencyCode = mkCurrencyCode "TRY" ;
lin TTD_CurrencyCode = mkCurrencyCode "TTD" ;
lin TWD_CurrencyCode = mkCurrencyCode "TWD" ;
lin TZS_CurrencyCode = mkCurrencyCode "TZS" ;
lin UAH_CurrencyCode = mkCurrencyCode "UAH" ;
lin UGX_CurrencyCode = mkCurrencyCode "UGX" ;
lin USD_CurrencyCode = mkCurrencyCode "USD" ;
lin UYU_CurrencyCode = mkCurrencyCode "UYU" ;
lin UZS_CurrencyCode = mkCurrencyCode "UZS" ;
lin VEF_CurrencyCode = mkCurrencyCode "VEF" ;
lin VND_CurrencyCode = mkCurrencyCode "VND" ;
lin VUV_CurrencyCode = mkCurrencyCode "VUV" ;
lin WST_CurrencyCode = mkCurrencyCode "WST" ;
lin XAF_CurrencyCode = mkCurrencyCode "XAF" ;
lin XCD_CurrencyCode = mkCurrencyCode "XCD" ;
lin XOF_CurrencyCode = mkCurrencyCode "XOF" ;
lin XPF_CurrencyCode = mkCurrencyCode "XPF" ;
lin YER_CurrencyCode = mkCurrencyCode "YER" ;
lin ZAR_CurrencyCode = mkCurrencyCode "ZAR" ;
lin ZMW_CurrencyCode = mkCurrencyCode "ZMW" ;
lin ZWL_CurrencyCode = mkCurrencyCode "ZWL" ;
lin Afghani_CurrencyName = mkCurrencyName "Afghani" ;
lin Ariary_CurrencyName = mkCurrencyName "Ariary" ;
lin Baht_CurrencyName = mkCurrencyName "Baht" ;
lin Balboa_CurrencyName = mkCurrencyName "Balboa" ;
lin Birr_CurrencyName = mkCurrencyName "Birr" ;
lin Bolivar_CurrencyName = mkCurrencyName "Bolivar" ;
lin Boliviano_CurrencyName = mkCurrencyName "Boliviano" ;
lin Cedi_CurrencyName = mkCurrencyName "Cedi" ;
lin Colon_CurrencyName = mkCurrencyName "Colon" ;
lin Cordoba_CurrencyName = mkCurrencyName "Cordoba" ;
---lin noCurrencyName = mkCurrencyName "" ;
lin Dalasi_CurrencyName = mkCurrencyName "Dalasi" ;
lin Denar_CurrencyName = mkCurrencyName "Denar" ;
lin Dinar_CurrencyName = mkCurrencyName "Dinar" ;
lin Dirham_CurrencyName = mkCurrencyName "Dirham" ;
lin Dobra_CurrencyName = mkCurrencyName "Dobra" ;
lin Dollar_CurrencyName = mkCurrencyName "Dollar" ;
lin Dong_CurrencyName = mkCurrencyName "Dong" ;
lin Dram_CurrencyName = mkCurrencyName "Dram" ;
lin Escudo_CurrencyName = mkCurrencyName "Escudo" ;
lin Euro_CurrencyName = mkCurrencyName "Euro" ;
lin Forint_CurrencyName = mkCurrencyName "Forint" ;
lin Franc_CurrencyName = mkCurrencyName "Franc" ;
lin Gourde_CurrencyName = mkCurrencyName "Gourde" ;
lin Guarani_CurrencyName = mkCurrencyName "Guarani" ;
lin Guilder_CurrencyName = mkCurrencyName "Guilder" ;
lin Hryvnia_CurrencyName = mkCurrencyName "Hryvnia" ;
lin Kina_CurrencyName = mkCurrencyName "Kina" ;
lin Kip_CurrencyName = mkCurrencyName "Kip" ;
lin Koruna_CurrencyName = mkCurrencyName "Koruna" ;
lin Krona_CurrencyName = mkCurrencyName "Krona" ;
lin Krone_CurrencyName = mkCurrencyName "Krone" ;
lin Kuna_CurrencyName = mkCurrencyName "Kuna" ;
lin Kwacha_CurrencyName = mkCurrencyName "Kwacha" ;
lin Kwanza_CurrencyName = mkCurrencyName "Kwanza" ;
lin Kyat_CurrencyName = mkCurrencyName "Kyat" ;
lin Lari_CurrencyName = mkCurrencyName "Lari" ;
lin Lek_CurrencyName = mkCurrencyName "Lek" ;
lin Lempira_CurrencyName = mkCurrencyName "Lempira" ;
lin Leone_CurrencyName = mkCurrencyName "Leone" ;
lin Leu_CurrencyName = mkCurrencyName "Leu" ;
lin Lev_CurrencyName = mkCurrencyName "Lev" ;
lin Lilangeni_CurrencyName = mkCurrencyName "Lilangeni" ;
lin Lira_CurrencyName = mkCurrencyName "Lira" ;
lin Loti_CurrencyName = mkCurrencyName "Loti" ;
lin Manat_CurrencyName = mkCurrencyName "Manat" ;
lin Marka_CurrencyName = mkCurrencyName "Marka" ;
lin Metical_CurrencyName = mkCurrencyName "Metical" ;
lin Naira_CurrencyName = mkCurrencyName "Naira" ;
lin Nakfa_CurrencyName = mkCurrencyName "Nakfa" ;
lin Ngultrum_CurrencyName = mkCurrencyName "Ngultrum" ;
lin Ouguiya_CurrencyName = mkCurrencyName "Ouguiya" ;
lin Pa'anga_CurrencyName = mkCurrencyName "Pa'anga" ;
lin Pataca_CurrencyName = mkCurrencyName "Pataca" ;
lin Peso_CurrencyName = mkCurrencyName "Peso" ;
lin Pound_CurrencyName = mkCurrencyName "Pound" ;
lin Pula_CurrencyName = mkCurrencyName "Pula" ;
lin Quetzal_CurrencyName = mkCurrencyName "Quetzal" ;
lin Rand_CurrencyName = mkCurrencyName "Rand" ;
lin Real_CurrencyName = mkCurrencyName "Real" ;
lin Rial_CurrencyName = mkCurrencyName "Rial" ;
lin Riels_CurrencyName = mkCurrencyName "Riels" ;
lin Ringgit_CurrencyName = mkCurrencyName "Ringgit" ;
lin Ruble_CurrencyName = mkCurrencyName "Ruble" ;
lin Rufiyaa_CurrencyName = mkCurrencyName "Rufiyaa" ;
lin Rupee_CurrencyName = mkCurrencyName "Rupee" ;
lin Rupiah_CurrencyName = mkCurrencyName "Rupiah" ;
lin Shekel_CurrencyName = mkCurrencyName "Shekel" ;
lin Shilling_CurrencyName = mkCurrencyName "Shilling" ;
lin Sol_CurrencyName = mkCurrencyName "Sol" ;
lin Som_CurrencyName = mkCurrencyName "Som" ;
lin Somoni_CurrencyName = mkCurrencyName "Somoni" ;
lin Taka_CurrencyName = mkCurrencyName "Taka" ;
lin Tala_CurrencyName = mkCurrencyName "Tala" ;
lin Tenge_CurrencyName = mkCurrencyName "Tenge" ;
lin Tugrik_CurrencyName = mkCurrencyName "Tugrik" ;
lin Vatu_CurrencyName = mkCurrencyName "Vatu" ;
lin Won_CurrencyName = mkCurrencyName "Won" ;
lin Yen_CurrencyName = mkCurrencyName "Yen" ;
lin Yuan_Renminbi_CurrencyName = mkCurrencyName "Yuan Renminbi" ;
lin Zloty_CurrencyName = mkCurrencyName "Zloty" ;


}
