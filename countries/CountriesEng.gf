concrete CountriesEng of Countries = CountriesFunctor - [
  largest_Det
  ]

with 
  (Syntax=SyntaxEng),
  (Symbolic=SymbolicEng),
  (Grammar=GrammarEng),
  (Lexicon=LexiconEng)

**
open
  ParadigmsEng,
  (S = SyntaxEng),
  (P = ParadigmsEng),
  (L = LexiconEng),
  Prelude
in {

-----------------------
oper
  largest_Det = S.mkDet the_Quant (S.mkOrd (mkA "large")) ;
-----------------------

oper
  singularNP : NP -> NP = \np -> np ; ----

  capital_CN = mkCN (mkN "capital") ;
  country_CN = mkCN (mkN "country") ;
  population_CN = mkCN (mkN "population") ;
  currency_CN = mkCN (mkN "currency") ;
  inhabitant_CN = mkCN (mkN "inhabitant") ;
  area_CN = mkCN (mkN "area") ;
  inhabitant_CN = mkCN (mkN "inhabitant") ;
  square_kilometre_CN = mkCN (mkN "square kilometre") ;
  world_CN = mkCN (mkN "world") ;
  
  average_A = mkA "average" ;
  total_A = mkA "total" ;

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
lin Antigua_and_Barbuda_Country = mkCountry "Antigua and Barbuda" ;
lin Argentina_Country = mkCountry "Argentina" ;
lin Armenia_Country = mkCountry "Armenia" ;
lin Aruba_Country = mkCountry "Aruba" ;
lin Australia_Country = mkCountry "Australia" ;
lin Austria_Country = mkCountry "Austria" ;
lin Azerbaijan_Country = mkCountry "Azerbaijan" ;
lin Bahamas_Country = mkCountry "Bahamas" ;
lin Bahrain_Country = mkCountry "Bahrain" ;
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
lin Brazil_Country = mkCountry "Brazil" ;
lin British_Indian_Ocean_Territory_Country = mkCountry "British Indian Ocean Territory" ;
lin British_Virgin_Islands_Country = mkCountry "British Virgin Islands" ;
lin Brunei_Country = mkCountry "Brunei" ;
lin Bulgaria_Country = mkCountry "Bulgaria" ;
lin Burkina_Faso_Country = mkCountry "Burkina Faso" ;
lin Burundi_Country = mkCountry "Burundi" ;
lin Cambodia_Country = mkCountry "Cambodia" ;
lin Cameroon_Country = mkCountry "Cameroon" ;
lin Canada_Country = mkCountry "Canada" ;
lin Cape_Verde_Country = mkCountry "Cape Verde" ;
lin Cayman_Islands_Country = mkCountry "Cayman Islands" ;
lin Central_African_Republic_Country = mkCountry "Central African Republic" ;
lin Chad_Country = mkCountry "Chad" ;
lin Chile_Country = mkCountry "Chile" ;
lin China_Country = mkCountry "China" ;
lin Christmas_Island_Country = mkCountry "Christmas Island" ;
lin Cocos_Islands_Country = mkCountry "Cocos Islands" ;
lin Colombia_Country = mkCountry "Colombia" ;
lin Comoros_Country = mkCountry "Comoros" ;
lin Cook_Islands_Country = mkCountry "Cook Islands" ;
lin Costa_Rica_Country = mkCountry "Costa Rica" ;
lin Croatia_Country = mkCountry "Croatia" ;
lin Cuba_Country = mkCountry "Cuba" ;
lin Curacao_Country = mkCountry "Curacao" ;
lin Cyprus_Country = mkCountry "Cyprus" ;
lin Czech_Republic_Country = mkCountry "Czech Republic" ;
lin Democratic_Republic_of_the_Congo_Country = mkCountry "Democratic Republic of the Congo" ;
lin Denmark_Country = mkCountry "Denmark" ;
lin Djibouti_Country = mkCountry "Djibouti" ;
lin Dominica_Country = mkCountry "Dominica" ;
lin Dominican_Republic_Country = mkCountry "Dominican Republic" ;
lin East_Timor_Country = mkCountry "East Timor" ;
lin Ecuador_Country = mkCountry "Ecuador" ;
lin Egypt_Country = mkCountry "Egypt" ;
lin El_Salvador_Country = mkCountry "El Salvador" ;
lin Equatorial_Guinea_Country = mkCountry "Equatorial Guinea" ;
lin Eritrea_Country = mkCountry "Eritrea" ;
lin Estonia_Country = mkCountry "Estonia" ;
lin Ethiopia_Country = mkCountry "Ethiopia" ;
lin Falkland_Islands_Country = mkCountry "Falkland Islands" ;
lin Faroe_Islands_Country = mkCountry "Faroe Islands" ;
lin Fiji_Country = mkCountry "Fiji" ;
lin Finland_Country = mkCountry "Finland" ;
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
lin Greece_Country = mkCountry "Greece" ;
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
lin Israel_Country = mkCountry "Israel" ;
lin Italy_Country = mkCountry "Italy" ;
lin Ivory_Coast_Country = mkCountry "Ivory Coast" ;
lin Jamaica_Country = mkCountry "Jamaica" ;
lin Japan_Country = mkCountry "Japan" ;
lin Jersey_Country = mkCountry "Jersey" ;
lin Jordan_Country = mkCountry "Jordan" ;
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
lin Libya_Country = mkCountry "Libya" ;
lin Liechtenstein_Country = mkCountry "Liechtenstein" ;
lin Lithuania_Country = mkCountry "Lithuania" ;
lin Luxembourg_Country = mkCountry "Luxembourg" ;
lin Macao_Country = mkCountry "Macao" ;
lin Macedonia_Country = mkCountry "Macedonia" ;
lin Madagascar_Country = mkCountry "Madagascar" ;
lin Malawi_Country = mkCountry "Malawi" ;
lin Malaysia_Country = mkCountry "Malaysia" ;
lin Maldives_Country = mkCountry "Maldives" ;
lin Mali_Country = mkCountry "Mali" ;
lin Malta_Country = mkCountry "Malta" ;
lin Marshall_Islands_Country = mkCountry "Marshall Islands" ;
lin Martinique_Country = mkCountry "Martinique" ;
lin Mauritania_Country = mkCountry "Mauritania" ;
lin Mauritius_Country = mkCountry "Mauritius" ;
lin Mayotte_Country = mkCountry "Mayotte" ;
lin Mexico_Country = mkCountry "Mexico" ;
lin Micronesia_Country = mkCountry "Micronesia" ;
lin Moldova_Country = mkCountry "Moldova" ;
lin Monaco_Country = mkCountry "Monaco" ;
lin Mongolia_Country = mkCountry "Mongolia" ;
lin Montenegro_Country = mkCountry "Montenegro" ;
lin Montserrat_Country = mkCountry "Montserrat" ;
lin Morocco_Country = mkCountry "Morocco" ;
lin Mozambique_Country = mkCountry "Mozambique" ;
lin Myanmar_Country = mkCountry "Myanmar" ;
lin Namibia_Country = mkCountry "Namibia" ;
lin Nauru_Country = mkCountry "Nauru" ;
lin Nepal_Country = mkCountry "Nepal" ;
lin Netherlands_Antilles_Country = mkCountry "Netherlands Antilles" ;
lin Netherlands_Country = mkCountry "Netherlands" ;
lin New_Caledonia_Country = mkCountry "New Caledonia" ;
lin New_Zealand_Country = mkCountry "New Zealand" ;
lin Nicaragua_Country = mkCountry "Nicaragua" ;
lin Niger_Country = mkCountry "Niger" ;
lin Nigeria_Country = mkCountry "Nigeria" ;
lin Niue_Country = mkCountry "Niue" ;
lin Norfolk_Island_Country = mkCountry "Norfolk Island" ;
lin North_Korea_Country = mkCountry "North Korea" ;
lin Northern_Mariana_Islands_Country = mkCountry "Northern Mariana Islands" ;
lin Norway_Country = mkCountry "Norway" ;
lin Oman_Country = mkCountry "Oman" ;
lin Pakistan_Country = mkCountry "Pakistan" ;
lin Palau_Country = mkCountry "Palau" ;
lin Palestinian_Territory_Country = mkCountry "Palestinian Territory" ;
lin Panama_Country = mkCountry "Panama" ;
lin Papua_New_Guinea_Country = mkCountry "Papua New Guinea" ;
lin Paraguay_Country = mkCountry "Paraguay" ;
lin Peru_Country = mkCountry "Peru" ;
lin Philippines_Country = mkCountry "Philippines" ;
lin Pitcairn_Country = mkCountry "Pitcairn" ;
lin Poland_Country = mkCountry "Poland" ;
lin Portugal_Country = mkCountry "Portugal" ;
lin Puerto_Rico_Country = mkCountry "Puerto Rico" ;
lin Qatar_Country = mkCountry "Qatar" ;
lin Republic_of_the_Congo_Country = mkCountry "Republic of the Congo" ;
lin Reunion_Country = mkCountry "Reunion" ;
lin Romania_Country = mkCountry "Romania" ;
lin Russia_Country = mkCountry "Russia" ;
lin Rwanda_Country = mkCountry "Rwanda" ;
lin Saint_Barthelemy_Country = mkCountry "Saint Barthelemy" ;
lin Saint_Helena_Country = mkCountry "Saint Helena" ;
lin Saint_Kitts_and_Nevis_Country = mkCountry "Saint Kitts and Nevis" ;
lin Saint_Lucia_Country = mkCountry "Saint Lucia" ;
lin Saint_Martin_Country = mkCountry "Saint Martin" ;
lin Saint_Pierre_and_Miquelon_Country = mkCountry "Saint Pierre and Miquelon" ;
lin Saint_Vincent_and_the_Grenadines_Country = mkCountry "Saint Vincent and the Grenadines" ;
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
lin Slovakia_Country = mkCountry "Slovakia" ;
lin Slovenia_Country = mkCountry "Slovenia" ;
lin Solomon_Islands_Country = mkCountry "Solomon Islands" ;
lin Somalia_Country = mkCountry "Somalia" ;
lin South_Africa_Country = mkCountry "South Africa" ;
lin South_Georgia_and_the_South_Sandwich_Islands_Country = mkCountry "South Georgia and the South Sandwich Islands" ;
lin South_Korea_Country = mkCountry "South Korea" ;
lin South_Sudan_Country = mkCountry "South Sudan" ;
lin Spain_Country = mkCountry "Spain" ;
lin Sri_Lanka_Country = mkCountry "Sri Lanka" ;
lin Sudan_Country = mkCountry "Sudan" ;
lin Suriname_Country = mkCountry "Suriname" ;
lin Svalbard_and_Jan_Mayen_Country = mkCountry "Svalbard and Jan Mayen" ;
lin Swaziland_Country = mkCountry "Swaziland" ;
lin Sweden_Country = mkCountry "Sweden" ;
lin Switzerland_Country = mkCountry "Switzerland" ;
lin Syria_Country = mkCountry "Syria" ;
lin Taiwan_Country = mkCountry "Taiwan" ;
lin Tajikistan_Country = mkCountry "Tajikistan" ;
lin Tanzania_Country = mkCountry "Tanzania" ;
lin Thailand_Country = mkCountry "Thailand" ;
lin Togo_Country = mkCountry "Togo" ;
lin Tokelau_Country = mkCountry "Tokelau" ;
lin Tonga_Country = mkCountry "Tonga" ;
lin Trinidad_and_Tobago_Country = mkCountry "Trinidad and Tobago" ;
lin Tunisia_Country = mkCountry "Tunisia" ;
lin Turkey_Country = mkCountry "Turkey" ;
lin Turkmenistan_Country = mkCountry "Turkmenistan" ;
lin Turks_and_Caicos_Islands_Country = mkCountry "Turks and Caicos Islands" ;
lin Tuvalu_Country = mkCountry "Tuvalu" ;
lin Uganda_Country = mkCountry "Uganda" ;
lin Ukraine_Country = mkCountry "Ukraine" ;
lin United_Arab_Emirates_Country = mkCountry "United Arab Emirates" ;
lin United_Kingdom_Country = mkCountry "United Kingdom" ;
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
lin 'Basse-Terre_Capital' = mkCapital "Basse-Terre" ;
lin 'Douglas,_Isle_of_Man_Capital' = mkCapital "Douglas, Isle of Man" ;
lin 'El-Aaiun_Capital' = mkCapital "El-Aaiun" ;
lin 'Fort-de-France_Capital' = mkCapital "Fort-de-France" ;
lin 'Port-au-Prince_Capital' = mkCapital "Port-au-Prince" ;
lin 'Port-aux-Francais_Capital' = mkCapital "Port-aux-Francais" ;
lin 'Porto-Novo_Capital' = mkCapital "Porto-Novo" ;
lin 'Saint-Denis_Capital' = mkCapital "Saint-Denis" ;
lin 'Saint-Pierre_Capital' = mkCapital "Saint-Pierre" ;
lin 'St._George\'s_Capital' = mkCapital "St. George's" ;
lin 'St._John\'s_Capital' = mkCapital "St. John's" ;
lin Abu_Dhabi_Capital = mkCapital "Abu Dhabi" ;
lin Abuja_Capital = mkCapital "Abuja" ;
lin Accra_Capital = mkCapital "Accra" ;
lin Adamstown_Capital = mkCapital "Adamstown" ;
lin Addis_Ababa_Capital = mkCapital "Addis Ababa" ;
lin Algiers_Capital = mkCapital "Algiers" ;
lin Alofi_Capital = mkCapital "Alofi" ;
lin Amman_Capital = mkCapital "Amman" ;
lin Amsterdam_Capital = mkCapital "Amsterdam" ;
lin Andorra_la_Vella_Capital = mkCapital "Andorra la Vella" ;
lin Ankara_Capital = mkCapital "Ankara" ;
lin Antananarivo_Capital = mkCapital "Antananarivo" ;
lin Apia_Capital = mkCapital "Apia" ;
lin Ashgabat_Capital = mkCapital "Ashgabat" ;
lin Asmara_Capital = mkCapital "Asmara" ;
lin Astana_Capital = mkCapital "Astana" ;
lin Asuncion_Capital = mkCapital "Asuncion" ;
lin Athens_Capital = mkCapital "Athens" ;
lin Avarua_Capital = mkCapital "Avarua" ;
lin Baghdad_Capital = mkCapital "Baghdad" ;
lin Baku_Capital = mkCapital "Baku" ;
lin Bamako_Capital = mkCapital "Bamako" ;
lin Bandar_Seri_Begawan_Capital = mkCapital "Bandar Seri Begawan" ;
lin Bangkok_Capital = mkCapital "Bangkok" ;
lin Bangui_Capital = mkCapital "Bangui" ;
lin Banjul_Capital = mkCapital "Banjul" ;
lin Basseterre_Capital = mkCapital "Basseterre" ;
lin Beijing_Capital = mkCapital "Beijing" ;
lin Beirut_Capital = mkCapital "Beirut" ;
lin Belgrade_Capital = mkCapital "Belgrade" ;
lin Belmopan_Capital = mkCapital "Belmopan" ;
lin Berlin_Capital = mkCapital "Berlin" ;
lin Berne_Capital = mkCapital "Berne" ;
lin Bishkek_Capital = mkCapital "Bishkek" ;
lin Bissau_Capital = mkCapital "Bissau" ;
lin Bogota_Capital = mkCapital "Bogota" ;
lin Brasilia_Capital = mkCapital "Brasilia" ;
lin Bratislava_Capital = mkCapital "Bratislava" ;
lin Brazzaville_Capital = mkCapital "Brazzaville" ;
lin Bridgetown_Capital = mkCapital "Bridgetown" ;
lin Brussels_Capital = mkCapital "Brussels" ;
lin Bucharest_Capital = mkCapital "Bucharest" ;
lin Budapest_Capital = mkCapital "Budapest" ;
lin Buenos_Aires_Capital = mkCapital "Buenos Aires" ;
lin Bujumbura_Capital = mkCapital "Bujumbura" ;
lin Cairo_Capital = mkCapital "Cairo" ;
lin Canberra_Capital = mkCapital "Canberra" ;
---lin noCapital = mkCapital "" ;
lin Caracas_Capital = mkCapital "Caracas" ;
lin Castries_Capital = mkCapital "Castries" ;
lin Cayenne_Capital = mkCapital "Cayenne" ;
lin Charlotte_Amalie_Capital = mkCapital "Charlotte Amalie" ;
lin Chisinau_Capital = mkCapital "Chisinau" ;
lin Cockburn_Town_Capital = mkCapital "Cockburn Town" ;
lin Colombo_Capital = mkCapital "Colombo" ;
lin Conakry_Capital = mkCapital "Conakry" ;
lin Copenhagen_Capital = mkCapital "Copenhagen" ;
lin Dakar_Capital = mkCapital "Dakar" ;
lin Damascus_Capital = mkCapital "Damascus" ;
lin Dhaka_Capital = mkCapital "Dhaka" ;
lin Diego_Garcia_Capital = mkCapital "Diego Garcia" ;
lin Dili_Capital = mkCapital "Dili" ;
lin Djibouti_Capital = mkCapital "Djibouti" ;
lin Dodoma_Capital = mkCapital "Dodoma" ;
lin Doha_Capital = mkCapital "Doha" ;
lin Dublin_Capital = mkCapital "Dublin" ;
lin Dushanbe_Capital = mkCapital "Dushanbe" ;
lin East_Jerusalem_Capital = mkCapital "East Jerusalem" ;
lin Flying_Fish_Cove_Capital = mkCapital "Flying Fish Cove" ;
lin Freetown_Capital = mkCapital "Freetown" ;
lin Funafuti_Capital = mkCapital "Funafuti" ;
lin Gaborone_Capital = mkCapital "Gaborone" ;
lin George_Town_Capital = mkCapital "George Town" ;
lin Georgetown_Capital = mkCapital "Georgetown" ;
lin Gibraltar_Capital = mkCapital "Gibraltar" ;
lin Grytviken_Capital = mkCapital "Grytviken" ;
lin Guatemala_City_Capital = mkCapital "Guatemala City" ;
lin Gustavia_Capital = mkCapital "Gustavia" ;
lin Hagatna_Capital = mkCapital "Hagatna" ;
lin Hamilton_Capital = mkCapital "Hamilton" ;
lin Hanoi_Capital = mkCapital "Hanoi" ;
lin Harare_Capital = mkCapital "Harare" ;
lin Havana_Capital = mkCapital "Havana" ;
lin Helsinki_Capital = mkCapital "Helsinki" ;
lin Hong_Kong_Capital = mkCapital "Hong Kong" ;
lin Honiara_Capital = mkCapital "Honiara" ;
lin Islamabad_Capital = mkCapital "Islamabad" ;
lin Jakarta_Capital = mkCapital "Jakarta" ;
lin Jamestown_Capital = mkCapital "Jamestown" ;
lin Jerusalem_Capital = mkCapital "Jerusalem" ;
lin Juba_Capital = mkCapital "Juba" ;
lin Kabul_Capital = mkCapital "Kabul" ;
lin Kampala_Capital = mkCapital "Kampala" ;
lin Kathmandu_Capital = mkCapital "Kathmandu" ;
lin Khartoum_Capital = mkCapital "Khartoum" ;
lin Kiev_Capital = mkCapital "Kiev" ;
lin Kigali_Capital = mkCapital "Kigali" ;
lin Kingston_Capital = mkCapital "Kingston" ;
lin Kingstown_Capital = mkCapital "Kingstown" ;
lin Kinshasa_Capital = mkCapital "Kinshasa" ;
lin Kuala_Lumpur_Capital = mkCapital "Kuala Lumpur" ;
lin Kuwait_City_Capital = mkCapital "Kuwait City" ;
lin Libreville_Capital = mkCapital "Libreville" ;
lin Lilongwe_Capital = mkCapital "Lilongwe" ;
lin Lima_Capital = mkCapital "Lima" ;
lin Lisbon_Capital = mkCapital "Lisbon" ;
lin Ljubljana_Capital = mkCapital "Ljubljana" ;
lin Lome_Capital = mkCapital "Lome" ;
lin London_Capital = mkCapital "London" ;
lin Longyearbyen_Capital = mkCapital "Longyearbyen" ;
lin Luanda_Capital = mkCapital "Luanda" ;
lin Lusaka_Capital = mkCapital "Lusaka" ;
lin Luxembourg_Capital = mkCapital "Luxembourg" ;
lin Macao_Capital = mkCapital "Macao" ;
lin Madrid_Capital = mkCapital "Madrid" ;
lin Majuro_Capital = mkCapital "Majuro" ;
lin Malabo_Capital = mkCapital "Malabo" ;
lin Male_Capital = mkCapital "Male" ;
lin Mamoudzou_Capital = mkCapital "Mamoudzou" ;
lin Managua_Capital = mkCapital "Managua" ;
lin Manama_Capital = mkCapital "Manama" ;
lin Manila_Capital = mkCapital "Manila" ;
lin Maputo_Capital = mkCapital "Maputo" ;
lin Mariehamn_Capital = mkCapital "Mariehamn" ;
lin Marigot_Capital = mkCapital "Marigot" ;
lin Maseru_Capital = mkCapital "Maseru" ;
lin Mata_Utu_Capital = mkCapital "Mata Utu" ;
lin Mbabane_Capital = mkCapital "Mbabane" ;
lin Melekeok_Capital = mkCapital "Melekeok" ;
lin Mexico_City_Capital = mkCapital "Mexico City" ;
lin Minsk_Capital = mkCapital "Minsk" ;
lin Mogadishu_Capital = mkCapital "Mogadishu" ;
lin Monaco_Capital = mkCapital "Monaco" ;
lin Monrovia_Capital = mkCapital "Monrovia" ;
lin Montevideo_Capital = mkCapital "Montevideo" ;
lin Moroni_Capital = mkCapital "Moroni" ;
lin Moscow_Capital = mkCapital "Moscow" ;
lin Muscat_Capital = mkCapital "Muscat" ;
lin N'Djamena_Capital = mkCapital "N'Djamena" ;
lin Nairobi_Capital = mkCapital "Nairobi" ;
lin Nassau_Capital = mkCapital "Nassau" ;
lin Nay_Pyi_Taw_Capital = mkCapital "Nay Pyi Taw" ;
lin New_Delhi_Capital = mkCapital "New Delhi" ;
lin Niamey_Capital = mkCapital "Niamey" ;
lin Nicosia_Capital = mkCapital "Nicosia" ;
lin Nouakchott_Capital = mkCapital "Nouakchott" ;
lin Noumea_Capital = mkCapital "Noumea" ;
lin Nuku'alofa_Capital = mkCapital "Nuku'alofa" ;
lin Nuuk_Capital = mkCapital "Nuuk" ;
lin Oranjestad_Capital = mkCapital "Oranjestad" ;
lin Oslo_Capital = mkCapital "Oslo" ;
lin Ottawa_Capital = mkCapital "Ottawa" ;
lin Ouagadougou_Capital = mkCapital "Ouagadougou" ;
lin Pago_Pago_Capital = mkCapital "Pago Pago" ;
lin Palikir_Capital = mkCapital "Palikir" ;
lin Panama_City_Capital = mkCapital "Panama City" ;
lin Papeete_Capital = mkCapital "Papeete" ;
lin Paramaribo_Capital = mkCapital "Paramaribo" ;
lin Paris_Capital = mkCapital "Paris" ;
lin Philipsburg_Capital = mkCapital "Philipsburg" ;
lin Phnom_Penh_Capital = mkCapital "Phnom Penh" ;
lin Plymouth_Capital = mkCapital "Plymouth" ;
lin Podgorica_Capital = mkCapital "Podgorica" ;
lin Port_Louis_Capital = mkCapital "Port Louis" ;
lin Port_Moresby_Capital = mkCapital "Port Moresby" ;
lin Port_Vila_Capital = mkCapital "Port Vila" ;
lin Port_of_Spain_Capital = mkCapital "Port of Spain" ;
lin Prague_Capital = mkCapital "Prague" ;
lin Praia_Capital = mkCapital "Praia" ;
lin Pretoria_Capital = mkCapital "Pretoria" ;
lin Pristina_Capital = mkCapital "Pristina" ;
lin Pyongyang_Capital = mkCapital "Pyongyang" ;
lin Quito_Capital = mkCapital "Quito" ;
lin Rabat_Capital = mkCapital "Rabat" ;
lin Reykjavik_Capital = mkCapital "Reykjavik" ;
lin Riga_Capital = mkCapital "Riga" ;
lin Riyadh_Capital = mkCapital "Riyadh" ;
lin Road_Town_Capital = mkCapital "Road Town" ;
lin Rome_Capital = mkCapital "Rome" ;
lin Roseau_Capital = mkCapital "Roseau" ;
lin Saint_Helier_Capital = mkCapital "Saint Helier" ;
lin Saipan_Capital = mkCapital "Saipan" ;
lin San_Jose_Capital = mkCapital "San Jose" ;
lin San_Juan_Capital = mkCapital "San Juan" ;
lin San_Marino_Capital = mkCapital "San Marino" ;
lin San_Salvador_Capital = mkCapital "San Salvador" ;
lin Sanaa_Capital = mkCapital "Sanaa" ;
lin Santiago_Capital = mkCapital "Santiago" ;
lin Santo_Domingo_Capital = mkCapital "Santo Domingo" ;
lin Sao_Tome_Capital = mkCapital "Sao Tome" ;
lin Sarajevo_Capital = mkCapital "Sarajevo" ;
lin Seoul_Capital = mkCapital "Seoul" ;
lin Singapur_Capital = mkCapital "Singapur" ;
lin Skopje_Capital = mkCapital "Skopje" ;
lin Sofia_Capital = mkCapital "Sofia" ;
lin St_Peter_Port_Capital = mkCapital "St Peter Port" ;
lin Stanley_Capital = mkCapital "Stanley" ;
lin Stockholm_Capital = mkCapital "Stockholm" ;
lin Sucre_Capital = mkCapital "Sucre" ;
lin Suva_Capital = mkCapital "Suva" ;
lin Taipei_Capital = mkCapital "Taipei" ;
lin Tallinn_Capital = mkCapital "Tallinn" ;
lin Tarawa_Capital = mkCapital "Tarawa" ;
lin Tashkent_Capital = mkCapital "Tashkent" ;
lin Tbilisi_Capital = mkCapital "Tbilisi" ;
lin Tegucigalpa_Capital = mkCapital "Tegucigalpa" ;
lin Tehran_Capital = mkCapital "Tehran" ;
lin The_Valley_Capital = mkCapital "The Valley" ;
lin Thimphu_Capital = mkCapital "Thimphu" ;
lin Tirana_Capital = mkCapital "Tirana" ;
lin Tokyo_Capital = mkCapital "Tokyo" ;
lin Torshavn_Capital = mkCapital "Torshavn" ;
lin Tripolis_Capital = mkCapital "Tripolis" ;
lin Tunis_Capital = mkCapital "Tunis" ;
lin Ulan_Bator_Capital = mkCapital "Ulan Bator" ;
lin Vaduz_Capital = mkCapital "Vaduz" ;
lin Valletta_Capital = mkCapital "Valletta" ;
lin Vatican_City_Capital = mkCapital "Vatican City" ;
lin Victoria_Capital = mkCapital "Victoria" ;
lin Vienna_Capital = mkCapital "Vienna" ;
lin Vientiane_Capital = mkCapital "Vientiane" ;
lin Vilnius_Capital = mkCapital "Vilnius" ;
lin Warsaw_Capital = mkCapital "Warsaw" ;
lin Washington_Capital = mkCapital "Washington" ;
lin Wellington_Capital = mkCapital "Wellington" ;
lin West_Island_Capital = mkCapital "West Island" ;
lin Willemstad_Capital = mkCapital "Willemstad" ;
lin Windhoek_Capital = mkCapital "Windhoek" ;
lin Yamoussoukro_Capital = mkCapital "Yamoussoukro" ;
lin Yaounde_Capital = mkCapital "Yaounde" ;
lin Yaren_Capital = mkCapital "Yaren" ;
lin Yerevan_Capital = mkCapital "Yerevan" ;
lin Zagreb_Capital = mkCapital "Zagreb" ;
lin AF_Continent = mkCountry "Africa" ;
lin AN_Continent = mkCountry "Antarctica" ;
lin AS_Continent = mkCountry "Asia" ;
lin EU_Continent = mkCountry "Europe" ;
lin NA_Continent = mkCountry "North America" ;
lin OC_Continent = mkCountry "Oceania" ;
lin SA_Continent = mkCountry "South America" ;
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