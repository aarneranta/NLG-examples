concrete CountryNamesFin of CountryNames = 

  open SyntaxFin, ParadigmsFin, Prelude in {

lincat
  CName = LocName ;
  CDName = LocName ** {ap : AP} ;

oper LocName = {np : NP ; isIn : Bool} ;

oper mkCName = overload {
  mkCName : Str -> LocName = \s -> {np = mkNP (foreignPN s) ; isIn = True} ;
  mkCName : N -> LocName = \n -> {np = mkNP n ; isIn = True} ;
  mkCName : NP -> LocName = \np -> {np = np ; isIn = True} ;
  } ;

 exCName : LocName -> LocName = \name -> name ** {isIn = False} ;
 sgCName : LocName -> LocName = \name -> name ** {np = forceNumberNP singular name.np} ;

 mkCDName : LocName -> AP -> CDName = \loc,ap -> lin CDName (loc ** {ap = ap});

lin Africa_CDName = mkCDName (mkCName (mkN "Afrikka")) (mkAP (mkA "afrikkalainen")) ;
lin Asia_CDName = mkCDName (mkCName "Aasia") (mkAP (mkA "aasialainen")) ;
lin Central_America_CDName = mkCDName (mkCName (mkN "Keski-Amerikka"))  (mkAP (mkA "keskiamerikkalainen")) ;
lin Europe_CDName = mkCDName (mkCName (mkN "Eurooppa"))  (mkAP (mkA "eurooppalainen")) ;
lin North_America_CDName = mkCDName (mkCName (mkN "Pohjois-Amerikka"))  (mkAP (mkA "pohjoisamerikkalainen")) ;
lin South_America_CDName = mkCDName (mkCName (mkN "Etelä-Amerikka"))  (mkAP (mkA "eteläamerikkalainen")) ;
lin insular_Oceania_CDName = mkCDName (mkCName "Oseania")  (mkAP (mkA "oseanialainen")) ;

lin 'Guinea-Bissau_CName' = mkCName "Guinea-Bissau" ;
lin 'Nur-Sultan_CName' = mkCName "Nur-Sultan" ;
lin 'Port-au-Prince_CName' = mkCName "Port-au-Prince" ;
lin 'Porto-Novo_CName' = mkCName "Porto-Novo" ;
lin 'St._George\'s_CName' = mkCName "St. George’s" ;
lin 'Washington,_D.C._CName' = mkCName "Washington" ;
lin Abu_Dhabi_CName = mkCName "Abu Dhabi" ;
lin Abuja_CName = mkCName "Abuja" ;
lin Accra_CName = mkCName "Accra" ;
lin Addis_Ababa_CName = mkCName "Addis Abeba" ;
lin Afghan_afghani_CName = mkCName "afgani" ;
lin Afghanistan_CName = mkCName "Afganistan" ;
lin Albania_CName = mkCName "Albania" ;
lin Albanian_lek_CName = mkCName "Albanian lek" ;
lin Algeria_CName = mkCName "Algeria" ;
lin Algerian_dinar_CName = mkCName "Algerian dinaari" ;
lin Algiers_CName = mkCName "Alger" ;
lin Amman_CName = mkCName "Amman" ;
lin Amsterdam_CName = mkCName "Amsterdam" ;
lin Andorra_CName = mkCName "Andorra" ;
lin Andorra_la_Vella_CName = mkCName "Andorra la Vella" ;
lin Angola_CName = mkCName "Angola" ;
lin Ankara_CName = mkCName "Ankara" ;
lin Antananarivo_CName = mkCName "Antananarivo" ;
lin Antigua_and_Barbuda_CName = mkCName "Antigua ja Barbuda" ;
lin Apia_CName = mkCName "Apia" ;
lin Argentina_CName = mkCName "Argentiina" ;
lin Argentine_peso_CName = mkCName "Argentiinan peso" ;
lin Armenia_CName = mkCName "Armenia" ;
lin Armenian_dram_CName = mkCName "Armenian dram" ;
lin Ashgabat_CName = mkCName "Ašgabat" ;
lin Asmara_CName = mkCName "Asmara" ;
lin Asunción_CName = mkCName "Asunción" ;
lin Athens_CName = mkCName "Ateena" ;
lin Australia_CName = mkCName "Australia" ;
lin Australian_dollar_CName = mkCName "Australian dollari" ;
lin Austria_CName = mkCName "Itävalta" ;
lin Azerbaijan_CName = mkCName "Azerbaidžan" ;
lin Azerbaijani_manat_CName = mkCName "Azerbaidžanin manat" ;
lin Baghdad_CName = mkCName "Bagdad" ;
lin Bahamian_dollar_CName = mkCName "Bahaman dollari" ;
lin Bahrain_CName = mkCName "Bahrain" ;
lin Bahraini_dinar_CName = mkCName "Bahrainin dinaari" ;
lin Baku_CName = mkCName "Baku" ;
lin Bamako_CName = mkCName "Bamako" ;
lin Bandar_Seri_Begawan_CName = mkCName "Bandar Seri Begawan" ;
lin Bangkok_CName = mkCName "Bangkok" ;
lin Bangladesh_CName = mkCName "Bangladesh" ;
lin Bangladeshi_taka_CName = mkCName "Bangladeshin taka" ;
lin Bangui_CName = mkCName "Bangui" ;
lin Banjul_CName = mkCName "Banjul" ;
lin Barbadian_dollar_CName = mkCName "Barbadoksen dollari" ;
lin Barbados_CName = mkCName "Barbados" ;
lin Basseterre_CName = mkCName "Basseterre" ;
lin Beijing_CName = mkCName "Peking" ;
lin Beirut_CName = mkCName "Beirut" ;
lin Belarus_CName = exCName (mkCName (mkN "Valko-" (mkN "Venäjä"))) ;
lin Belarusian_ruble_CName = mkCName "Valko-Venäjän rupla" ;
lin Belgium_CName = mkCName "Belgia" ;
lin Belgrade_CName = mkCName "Belgrad" ;
lin Belize_CName = mkCName "Belize" ;
lin Belize_dollar_CName = mkCName "Belizen dollari" ;
lin Belmopan_CName = mkCName "Belmopan" ;
lin Benin_CName = mkCName "Benin" ;
lin Berlin_CName = mkCName "Berliini" ;
lin Bern_CName = mkCName "Bern" ;
lin Bhutan_CName = mkCName "Bhutan" ;
lin Bishkek_CName = mkCName "Biškek" ;
lin Bissau_CName = mkCName "Bissau" ;
lin Bogotá_CName = mkCName "Bogotá" ;
lin Bolivia_CName = mkCName "Bolivia" ;
lin Bosnia_and_Herzegovina_CName = mkCName "Bosnia ja Hertsegovina" ;
lin Botswana_CName = mkCName "Botswana" ;
lin Botswana_pula_CName = mkCName "Pula" ;
lin Brasília_CName = mkCName "Brasília" ;
lin Bratislava_CName = mkCName "Bratislava" ;
lin Brazil_CName = mkCName "Brasilia" ;
lin Brazilian_real_CName = mkCName "Brasilian real" ;
lin Brazzaville_CName = mkCName "Brazzaville" ;
lin Bridgetown_CName = mkCName "Bridgetown" ;
lin Brunei_CName = mkCName "Brunei" ;
lin Brunei_dollar_CName = mkCName "Brunein dollari" ;
lin Bucharest_CName = mkCName "Bukarest" ;
lin Budapest_CName = mkCName "Budapest" ;
lin Buenos_Aires_CName = mkCName "Buenos Aires" ;
lin Bulgaria_CName = mkCName "Bulgaria" ;
lin Bulgarian_lev_CName = mkCName "Bulgarian leva" ;
lin Burkina_Faso_CName = mkCName "Burkina Faso" ;
lin Burundi_CName = mkCName "Burundi" ;
lin Burundian_franc_CName = mkCName "Burundin frangi" ;
lin Cairo_CName = mkCName "Kairo" ;
lin Cambodia_CName = mkCName "Kambodža" ;
lin Cameroon_CName = mkCName "Kamerun" ;
lin Canada_CName = mkCName "Kanada" ;
lin Canadian_dollar_CName = mkCName "Kanadan dollari" ;
lin Canberra_CName = mkCName "Canberra" ;
lin Cape_Verde_CName = mkCName "Kap Verde" ;
lin Cape_Verdean_escudo_CName = mkCName "Kap Verden escudo" ;
lin Caracas_CName = mkCName "Caracas" ;
lin Castries_CName = mkCName "Castries" ;
lin Central_African_CFA_franc_CName = mkCName "Keski-Afrikan CFA-frangi" ;
lin Central_African_Republic_CName = mkCName "Keski-Afrikan tasavalta" ;
lin Chad_CName = mkCName "Tšad" ;
lin Chile_CName = mkCName "Chile" ;
lin Chilean_peso_CName = mkCName "Chilen peso" ;
lin 'Chișinău_CName' = mkCName "Chișinău" ;
lin City_of_Brussels_CName = mkCName "Bryssel" ;
lin Colombia_CName = mkCName "Kolumbia" ;
lin Colombian_cincuenta_centavos_CName = mkCName "Kolumbian peso" ;
lin Colombo_CName = mkCName "Colombo" ;
lin Comorian_franc_CName = mkCName "Komorien frangi" ;
lin Comoros_CName = mkCName "Komorit" ;
lin Conakry_CName = mkCName "Conakry" ;
lin Congolese_franc_CName = mkCName "Kongon frangi" ;
lin Copenhagen_CName = mkCName "Kööpenhamina" ;
lin Costa_Rica_CName = mkCName "Costa Rica" ;
lin Costa_Rican_colón_CName = mkCName "Costa Rican colón" ;
lin Croatia_CName = mkCName "Kroatia" ;
lin Croatian_kuna_CName = mkCName "Kroatian kuna" ;
lin Cuba_CName = mkCName "Kuuba" ;
lin Cuban_peso_CName = mkCName "Kuuban peso" ;
lin Cyprus_CName = mkCName "Kypros" ;
lin Czech_Republic_CName = mkCName "Tšekki" ;
lin Czech_koruna_CName = mkCName "Tšekin koruna" ;
lin Dakar_CName = mkCName "Dakar" ;
lin Damascus_CName = mkCName "Damaskos" ;
lin Danish_krone_CName = mkCName "Tanskan kruunu" ;
lin Democratic_Republic_of_the_Congo_CName = mkCName "Kongon demokraattinen tasavalta" ;
lin Denmark_CName = mkCName "Tanska" ;
lin Dhaka_CName = mkCName "Dhaka" ;
lin Dili_CName = mkCName "Dili" ;
lin Djibouti_CName = mkCName "Djibouti" ;
lin Djiboutian_franc_CName = mkCName "Djiboutin frangi" ;
lin Dodoma_CName = mkCName "Dodoma" ;
lin Doha_CName = mkCName "Doha" ;
lin Dominica_CName = mkCName "Dominica" ;
lin Dominican_Republic_CName = mkCName "Dominikaaninen tasavalta" ;
lin Dominican_peso_CName = mkCName "Dominikaanisen tasavallan peso" ;
lin Dublin_CName = mkCName "Dublin" ;
lin Dushanbe_CName = mkCName "Dušanbe" ;
lin East_Timor_CName = mkCName "Itä-Timor" ;
lin East_Timor_centavo_coins_CName = mkCName "East Timor centavo coins" ;
lin Eastern_Caribbean_dollar_CName = mkCName "Itä-Karibian dollari" ;
lin Ecuador_CName = mkCName "Ecuador" ;
lin Egypt_CName = mkCName "Egypti" ;
lin Egyptian_pound_CName = mkCName "Egyptin punta" ;
lin El_Salvador_CName = mkCName "El Salvador" ;
lin Equatorial_Guinea_CName = mkCName "Päiväntasaajan Guinea" ;
lin Eritrea_CName = mkCName "Eritrea" ;
lin Estonia_CName = mkCName "Viro" ;
lin Eswatini_CName = mkCName "Swazimaa" ;
lin Ethiopia_CName = mkCName "Etiopia" ;
lin Federated_States_of_Micronesia_CName = mkCName "Mikronesia" ;
lin Fiji_CName = mkCName "Fidži" ;
lin Fijian_dollar_CName = mkCName "Fidžin dollari" ;
lin Finland_CName = mkCName (mkN "Suomi" "Suomia") ;
lin France_CName = mkCName "Ranska" ;
lin Freetown_CName = mkCName "Freetown" ;
lin Funafuti_CName = mkCName "Funafuti" ;
lin Gabon_CName = mkCName "Gabon" ;
lin Gaborone_CName = mkCName "Gaborone" ;
lin Georgetown_CName = mkCName "Georgetown" ;
lin Georgia_CName = mkCName "Georgia" ;
lin Georgian_lari_CName = mkCName "Georgian lari" ;
lin Germany_CName = mkCName "Saksa" ;
lin Ghana_CName = mkCName "Ghana" ;
lin Ghana_cedi_CName = mkCName "Cedi" ;
lin Gitega_CName = mkCName "Gitega" ;
lin Greece_CName = mkCName "Kreikka" ;
lin Grenada_CName = mkCName "Grenada" ;
lin Guatemala_CName = mkCName "Guatemala" ;
lin Guatemala_City_CName = mkCName "Guatemala" ;
lin Guinea_CName = mkCName "Guinea" ;
lin Guinean_franc_CName = mkCName "Guinean frangi" ;
lin Guyana_CName = mkCName "Guyana" ;
lin Guyanese_dollar_CName = mkCName "Guyanan dollari" ;
lin Haiti_CName = mkCName "Haiti" ;
lin Hanoi_CName = mkCName "Hanoi" ;
lin Harare_CName = mkCName "Harare" ;
lin Havana_CName = mkCName "Havanna" ;
lin Helsinki_CName = mkCName "Helsinki" ;
lin Honduran_lempira_CName = mkCName "Hondurasin lempira" ;
lin Honduras_CName = mkCName "Honduras" ;
lin Honiara_CName = mkCName "Honiara" ;
lin Hungary_CName = mkCName "Unkari" ;
lin Iceland_CName = mkCName "Islanti" ;
lin Icelandic_króna_CName = mkCName "Islannin kruunu" ;
lin India_CName = mkCName "Intia" ;
lin Indian_rupee_CName = mkCName "Intian rupia" ;
lin Indonesia_CName = mkCName "Indonesia" ;
lin Iran_CName = mkCName "Iran" ;
lin Iranian_rial_CName = mkCName "Iranin rial" ;
lin Iraq_CName = mkCName "Irak" ;
lin Iraqi_dinar_CName = mkCName "Irakin dinaari" ;
lin Ireland_CName = mkCName "Irlanti" ;
lin Islamabad_CName = mkCName "Islamabad" ;
lin Israel_CName = mkCName "Israel" ;
lin Italy_CName = mkCName "Italia" ;
lin Ivory_Coast_CName = mkCName "Norsunluurannikko" ;
lin Jakarta_CName = mkCName "Jakarta" ;
lin Jamaica_CName = mkCName "Jamaika" ;
lin Jamaican_dollar_CName = mkCName "Jamaikan dollari" ;
lin Japan_CName = mkCName "Japani" ;
lin Japanese_yen_CName = mkCName "Japanin jeni" ;
lin Jerusalem_CName = mkCName "Jerusalem" ;
lin Jordan_CName = mkCName "Jordania" ;
lin Jordanian_dinar_CName = mkCName "Jordanian dinaari" ;
lin Juba_CName = mkCName "Juba" ;
lin Kabul_CName = mkCName "Kabul" ;
lin Kampala_CName = mkCName "Kampala" ;
lin Kathmandu_CName = mkCName "Kathmandu" ;
lin Kazakhstan_CName = mkCName "Kazakstan" ;
lin Kazakhstani_tenge_CName = mkCName "Kazakstanin tenge" ;
lin Kenya_CName = mkCName "Kenia" ;
lin Kenyan_shilling_CName = mkCName "Kenian šillinki" ;
lin Khartoum_CName = mkCName "Khartum" ;
lin Kigali_CName = mkCName "Kigali" ;
lin Kingdom_of_the_Netherlands_CName = mkCName "Alankomaiden kuningaskunta" ;
lin Kingston_CName = mkCName "Kingston" ;
lin Kingstown_CName = mkCName "Kingstown" ;
lin Kinshasa_CName = mkCName "Kinshasa" ;
lin Kiribati_CName = mkCName "Kiribati" ;
lin Kiribati_dollar_CName = mkCName "Kiribati dollar" ;
lin Kuala_Lumpur_CName = mkCName "Kuala Lumpur" ;
lin Kuwait_CName = mkCName "Kuwait" ;
lin Kuwait_City_CName = mkCName "Kuwait" ;
lin Kuwaiti_dinar_CName = mkCName "Kuwaitin dinaari" ;
lin Kyiv_CName = mkCName "Kiova" ;
lin Kyrgyzstan_CName = mkCName "Kirgisia" ;
lin Kyrgyzstani_som_CName = mkCName "Kirgisian som" ;
lin La_Paz_CName = mkCName "La Paz" ;
lin Lao_kip_CName = mkCName "Laosin kip" ;
lin Laos_CName = mkCName "Laos" ;
lin Latvia_CName = mkCName "Latvia" ;
lin Lebanese_pound_CName = mkCName "Libanonin punta" ;
lin Lebanon_CName = mkCName "Libanon" ;
lin Lesotho_CName = mkCName "Lesotho" ;
lin Lesotho_loti_CName = mkCName "Lesothon loti" ;
lin Liberia_CName = mkCName "Liberia" ;
lin Liberian_dollar_CName = mkCName "Liberian dollari" ;
lin Libreville_CName = mkCName "Libreville" ;
lin Libya_CName = mkCName "Libya" ;
lin Libyan_dinar_CName = mkCName "Libyan dinaari" ;
lin Liechtenstein_CName = mkCName "Liechtenstein" ;
lin Lilongwe_CName = mkCName "Lilongwe" ;
lin Lima_CName = mkCName "Lima" ;
lin Lisbon_CName = mkCName "Lissabon" ;
lin Lithuania_CName = mkCName "Liettua" ;
lin Ljubljana_CName = mkCName "Ljubljana" ;
lin Lobamba_CName = mkCName "Lobamba" ;
lin Lomé_CName = mkCName "Lomé" ;
lin London_CName = mkCName "Lontoo" ;
lin Luanda_CName = mkCName "Luanda" ;
lin Lusaka_CName = mkCName "Lusaka" ;
lin Luxembourg_CName = mkCName "Luxemburg" ;
lin Madagascar_CName = mkCName "Madagaskar" ;
lin Madrid_CName = mkCName "Madrid" ;
lin Majuro_CName = mkCName "Majuro" ;
lin Malabo_CName = mkCName "Malabo" ;
lin Malawi_CName = mkCName "Malawi" ;
lin Malawian_kwacha_CName = mkCName "Malawin kwacha" ;
lin Malaysia_CName = mkCName "Malesia" ;
lin Malaysian_ringgit_CName = mkCName "Malesian ringgit" ;
lin Maldives_CName = mkCName "Malediivit" ;
lin Maldivian_rufiyaa_CName = mkCName "Malediivien rufiyaa" ;
lin Mali_CName = mkCName "Mali" ;
lin Malta_CName = mkCName "Malta" ;
lin Malé_CName = mkCName "Malé" ;
lin Managua_CName = mkCName "Managua" ;
lin Manama_CName = mkCName "Manama" ;
lin Manila_CName = mkCName "Manila" ;
lin Maputo_CName = mkCName "Maputo" ;
lin Marshall_Islands_CName = exCName (mkCName (mkNP thePl_Det (mkN "Marshallin" (mkN "saari" "saaria")))) ;
lin Maseru_CName = mkCName "Maseru" ;
lin Mauritania_CName = mkCName "Mauritania" ;
lin Mauritanian_ouguiya_CName = mkCName "Mauritanian ouguiya" ;
lin Mauritian_rupee_CName = mkCName "Mauritiuksen rupia" ;
lin Mauritius_CName = mkCName "Mauritius" ;
lin Mexican_peso_CName = mkCName "Meksikon peso" ;
lin Mexico_CName = mkCName "Meksiko" ;
lin Mexico_City_CName = mkCName "México" ;
lin Minsk_CName = mkCName "Minsk" ;
lin Mogadishu_CName = mkCName "Mogadishu" ;
lin Moldova_CName = mkCName "Moldova" ;
lin Moldovan_leu_CName = mkCName "Moldovan leu" ;
lin Monaco_CName = mkCName "Monaco" ;
lin Monaco_City_CName = mkCName "Monaco City" ;
lin Mongolia_CName = mkCName "Mongolia" ;
lin Monrovia_CName = mkCName "Monrovia" ;
lin Montenegro_CName = mkCName "Montenegro" ;
lin Montevideo_CName = mkCName "Montevideo" ;
lin Moroccan_dirham_CName = mkCName "Marokon dirhami" ;
lin Morocco_CName = mkCName "Marokko" ;
lin Moroni_CName = mkCName "Moroni" ;
lin Moscow_CName = mkCName "Moskova" ;
lin Mozambican_metical_CName = mkCName "Mosambikin metical" ;
lin Mozambique_CName = mkCName "Mosambik" ;
lin Muscat_CName = mkCName "Masqat" ;
lin Myanmar_CName = mkCName "Myanmar" ;
lin N'Djamena_CName = mkCName "N’Djamena" ;
lin Nairobi_CName = mkCName "Nairobi" ;
lin Namibia_CName = mkCName "Namibia" ;
lin Namibian_dollar_CName = mkCName "Namibian dollari" ;
lin Nassau_CName = mkCName "Nassau" ;
lin Nauru_CName = mkCName "Nauru" ;
lin Naypyidaw_CName = mkCName "Naypyidaw" ;
lin Nepal_CName = mkCName "Nepal" ;
lin Nepalese_rupee_CName = mkCName "Nepalin rupia" ;
lin New_Delhi_CName = mkCName "New Delhi" ;
lin New_Taiwan_dollar_CName = mkCName "Uusi Taiwanin dollari" ;
lin New_Zealand_CName = mkCName "Uusi-Seelanti" ;
lin New_Zealand_dollar_CName = mkCName "Uuden-Seelannin dollari" ;
lin Ngerulmud_CName = mkCName "Ngerulmud" ;
lin Niamey_CName = mkCName "Niamey" ;
lin Nicaragua_CName = mkCName "Nicaragua" ;
lin Nicaraguan_córdoba_CName = mkCName "Nicaraguan córdoba" ;
lin Nicosia_CName = mkCName "Nikosia" ;
lin Niger_CName = mkCName "Niger" ;
lin Nigeria_CName = mkCName "Nigeria" ;
lin Nigerian_naira_CName = mkCName "Nigerian naira" ;
lin North_Korea_CName = mkCName "Korean demokraattinen kansantasavalta" ;
lin North_Korean_won_CName = mkCName "Pohjois-Korean won" ;
lin North_Macedonia_CName = mkCName "Pohjois-Makedonia" ;
lin Norway_CName = mkCName "Norja" ;
lin Norwegian_krone_CName = mkCName "Norjan kruunu" ;
lin Nouakchott_CName = mkCName "Nouakchott" ;
lin Nuku'alofa_CName = mkCName "Nukuʻalofa" ;
lin Oman_CName = mkCName "Oman" ;
lin Omani_rial_CName = mkCName "Omanin rial" ;
lin Oslo_CName = mkCName "Oslo" ;
lin Ottawa_CName = mkCName "Ottawa" ;
lin Ouagadougou_CName = mkCName "Ouagadougou" ;
lin Pakistan_CName = mkCName "Pakistan" ;
lin Pakistani_rupee_CName = mkCName "Pakistanin rupia" ;
lin Palau_CName = mkCName "Palau" ;
lin Palikir_CName = mkCName "Palikir" ;
lin Panama_CName = mkCName "Panama" ;
lin Panama_City_CName = mkCName "Panamá" ;
lin Panamanian_balboa_CName = mkCName "Panaman balboa" ;
lin Papua_New_Guinea_CName = mkCName "Papua-Uusi-Guinea" ;
lin Paraguay_CName = mkCName "Paraguay" ;
lin Paraguayan_guaraní_CName = mkCName "Paraguayn guaraní" ;
lin Paramaribo_CName = mkCName "Paramaribo" ;
lin Paris_CName = mkCName "Pariisi" ;
lin People's_Republic_of_China_CName = mkCName "Kiina" ;
lin Peru_CName = mkCName "Peru" ;
lin Peruvian_sol_CName = mkCName "Perun nuevo sol" ;
lin Philippine_peso_CName = mkCName "Filippiinien peso" ;
lin Philippines_CName = mkCName "Filippiinit" ;
lin Phnom_Penh_CName = mkCName "Phnom Penh" ;
lin Podgorica_CName = mkCName "Podgorica" ;
lin Poland_CName = mkCName "Puola" ;
lin Port_Louis_CName = mkCName "Port Louis" ;
lin Port_Moresby_CName = mkCName "Port Moresby" ;
lin Port_Vila_CName = mkCName "Port Vila" ;
lin Port_of_Spain_CName = mkCName "Port of Spain" ;
lin Portugal_CName = mkCName "Portugali" ;
lin Prague_CName = mkCName "Praha" ;
lin Praia_CName = mkCName "Praia" ;
lin Pretoria_CName = mkCName "Pretoria" ;
lin Pyongyang_CName = mkCName "Pjongjang" ;
lin Qatar_CName = mkCName "Qatar" ;
lin Qatari_riyal_CName = mkCName "Qatarin rial" ;
lin Quito_CName = mkCName "Quito" ;
lin Rabat_CName = mkCName "Rabat" ;
lin Republic_of_the_Congo_CName = mkCName "Kongon tasavalta" ;
lin Reykjavík_CName = mkCName "Reykjavík" ;
lin Riga_CName = mkCName "Riika" ;
lin Riyadh_CName = mkCName "Riad" ;
lin Romania_CName = mkCName "Romania" ;
lin Romanian_leu_CName = mkCName "Romanian leu" ;
lin Rome_CName = mkCName "Rooma" ;
lin Roseau_CName = mkCName "Roseau" ;
lin Russia_CName = exCName (mkCName "Venäjä") ;
lin Russian_ruble_CName = mkCName "Venäjän rupla" ;
lin Rwanda_CName = mkCName "Ruanda" ;
lin Rwandan_franc_CName = mkCName "Ruandan frangi" ;
lin Saint_John's_CName = mkCName "St. John’s" ;
lin Saint_Kitts_and_Nevis_CName = mkCName "Saint Kitts ja Nevis" ;
lin Saint_Lucia_CName = mkCName "Saint Lucia" ;
lin Saint_Vincent_and_the_Grenadines_CName = mkCName "Saint Vincent ja Grenadiinit" ;
lin Samoa_CName = mkCName "Samoa" ;
lin 'Samoan_tālā_CName' = mkCName "Samoan tala" ;
lin San_José_CName = mkCName "San José" ;
lin San_Marino_CName = mkCName "San Marino" ;
lin San_Salvador_CName = mkCName "San Salvador" ;
lin Sanaa_CName = mkCName "Sanaa" ;
lin Santiago_CName = mkCName "Santiago de Chile" ;
lin Santo_Domingo_CName = mkCName "Santo Domingo" ;
lin Sarajevo_CName = mkCName "Sarajevo" ;
lin Saudi_Arabia_CName = mkCName "Saudi-Arabia" ;
lin Saudi_riyal_CName = mkCName "Saudi-Arabian rial" ;
lin Senegal_CName = mkCName "Senegal" ;
lin Seoul_CName = mkCName "Soul" ;
lin Serbia_CName = mkCName "Serbia" ;
lin Serbian_dinar_CName = mkCName "Serbian dinaari" ;
lin Seychelles_CName = mkCName "Seychellit" ;
lin Seychellois_rupee_CName = mkCName "Seychellien rupia" ;
lin Sierra_Leone_CName = mkCName "Sierra Leone" ;
lin Sierra_Leonean_leone_CName = mkCName "Sierra Leonen leone" ;
lin Singapore_CName = mkCName "Singapore" ;
lin Singapore_dollar_CName = mkCName "Singaporen dollari" ;
lin Skopje_CName = mkCName "Skopje" ;
lin Slovakia_CName = mkCName "Slovakia" ;
lin Slovenia_CName = mkCName "Slovenia" ;
lin Sofia_CName = mkCName "Sofia" ;
lin Solomon_Islands_CName = exCName (mkCName (mkNP thePl_Det (mkN "Salomon" (mkN "saari" "saaria")))) ;
lin Solomon_Islands_dollar_CName = mkCName "Salomonsaarten dollari" ;
lin Somali_shilling_CName = mkCName "Somalian šillinki" ;
lin Somalia_CName = mkCName "Somalia" ;
lin South_Africa_CName = mkCName (mkN "Etelä-Afrikka") ;
lin South_African_rand_CName = mkCName "Etelä-Afrikan randi" ;
lin South_Korea_CName = mkCName "Etelä-Korea" ;
lin South_Korean_won_CName = mkCName "Etelä-Korean won" ;
lin South_Sudan_CName = mkCName "Etelä-Sudan" ;
lin South_Sudanese_pound_CName = mkCName (mkN "Etelä-Sudanin punta") ;
lin South_Tarawa_CName = mkCName "South Tarawa" ;
lin Sovereign_Bolivar_CName = mkCName "Sovereign Bolivar" ;
lin Spain_CName = mkCName "Espanja" ;
lin Sri_Lanka_CName = mkCName "Sri Lanka" ;
lin Sri_Lankan_rupee_CName = mkCName "Sri Lankan rupia" ;
lin Stockholm_CName = mkCName "Tukholma" ;
lin Sudan_CName = mkCName "Sudan" ;
lin Sudanese_pound_CName = mkCName "Sudanin punta" ;
lin Suriname_CName = mkCName "Suriname" ;
lin Surinamese_dollar_CName = mkCName "Surinamen dollari" ;
lin Suva_CName = mkCName "Suva" ;
lin Sweden_CName = mkCName "Ruotsi" ;
lin Swedish_krona_CName = mkCName "Ruotsin kruunu" ;
lin Swiss_franc_CName = mkCName "Sveitsin frangi" ;
lin Switzerland_CName = mkCName "Sveitsi" ;
lin Syria_CName = mkCName "Syyria" ;
lin Syrian_pound_CName = mkCName "Syyrian punta" ;
lin São_Tomé_CName = mkCName "São Tomé" ;
lin São_Tomé_and_Príncipe_CName = mkCName "São Tomé ja Príncipe" ;
lin São_Tomé_and_Príncipe_dobra_CName = mkCName "São Tomén ja Príncipen dobra" ;
lin Taipei_CName = mkCName "Taipei" ;
lin Taiwan_CName = mkCName "Taiwan" ;
lin Tajikistan_CName = mkCName "Tadžikistan" ;
lin Tajikistani_somoni_CName = mkCName "Tadžikistanin somoni" ;
lin Tallinn_CName = mkCName "Tallinna" ;
lin Tanzania_CName = mkCName "Tansania" ;
lin Tanzanian_shilling_CName = mkCName "Tansanian šillinki" ;
lin Tashkent_CName = mkCName "Taškent" ;
lin Tbilisi_CName = mkCName "Tbilisi" ;
lin Tegucigalpa_CName = mkCName "Tegucigalpa" ;
lin Tehran_CName = mkCName "Teheran" ;
lin Thailand_CName = mkCName "Thaimaa" ;
lin The_Bahamas_CName = mkCName "Bahama" ;
lin The_Gambia_CName = mkCName "Gambia" ;
lin Thimphu_CName = mkCName "Thimphu" ;
lin Tirana_CName = mkCName "Tirana" ;
lin Togo_CName = mkCName "Togo" ;
lin Tokyo_CName = mkCName "Tokio" ;
lin Tonga_CName = mkCName "Tonga" ;
lin 'Tongan_paʻanga_CName' = mkCName "Tongan paʻanga" ;
lin Trinidad_and_Tobago_CName = mkCName "Trinidad ja Tobago" ;
lin Trinidad_and_Tobago_dollar_CName = mkCName "Trinidad ja Tobagon dollari" ;
lin Tripoli_CName = mkCName "Tripoli" ;
lin Tunis_CName = mkCName "Tunis" ;
lin Tunisia_CName = mkCName "Tunisia" ;
lin Tunisian_dinar_CName = mkCName "Tunisian dinaari" ;
lin Turkey_CName = mkCName (mkN "Turkki") ;
lin Turkish_lira_CName = mkCName "Turkin liira" ;
lin Turkmenistan_CName = mkCName "Turkmenistan" ;
lin Turkmenistan_manat_CName = mkCName "Turkmenistanin manat" ;
lin Tuvalu_CName = mkCName "Tuvalu" ;
lin Tuvaluan_dollar_CName = mkCName "Tuvalun dollari" ;
lin Uganda_CName = mkCName "Uganda" ;
lin Ugandan_shilling_CName = mkCName "Ugandan šillinki" ;
lin Ukraine_CName = mkCName "Ukraina" ;
lin Ulaanbaatar_CName = mkCName "Ulan Bator" ;
lin United_Arab_Emirates_CName = mkCName "Yhdistyneet arabiemiirikunnat" ;
lin United_Arab_Emirates_dirham_CName = mkCName "Yhdistyneiden arabiemiirikuntien dirhami" ;
lin United_Kingdom_CName = mkCName (mkNP (mkCN (mkA "Yhdistynyt") (mkN "kuningaskunta"))) ;
lin United_States_dollar_CName = mkCName "Yhdysvaltain dollari" ;
lin United_States_of_America_CName = sgCName (mkCName (mkNP thePl_Det (exceptPlGenN (mkN "Yhdysvalta") "Yhdysvaltain"))) ;
lin Uruguay_CName = mkCName "Uruguay" ;
lin Uruguayan_peso_CName = mkCName "Uruguayn peso" ;
lin Uzbekistan_CName = mkCName "Uzbekistan" ;
lin Uzbekistani_som_CName = mkCName "Uzbekistanin som" ;
lin Vaduz_CName = mkCName "Vaduz" ;
lin Valletta_CName = mkCName "Valletta" ;
lin Vanuatu_CName = mkCName "Vanuatu" ;
lin Vanuatu_vatus_CName = mkCName "Vanuatun vatu" ;
lin Venezuela_CName = mkCName "Venezuela" ;
lin Victoria_CName = mkCName "Victoria" ;
lin Vienna_CName = mkCName "Wien" ;
lin Vientiane_CName = mkCName "Vientiane" ;
lin Vietnam_CName = mkCName "Vietnam" ;
lin Vietnamese_dong_CName = mkCName "Vietnamin đồng" ;
lin Vilnius_CName = mkCName "Vilna" ;
lin Warsaw_CName = mkCName "Varsova" ;
lin Wellington_CName = mkCName "Wellington" ;
lin West_African_CFA_franc_CName = mkCName "West African CFA franc" ;
lin Windhoek_CName = mkCName "Windhoek" ;
lin Yamoussoukro_CName = mkCName "Yamoussoukro" ;
lin Yaoundé_CName = mkCName "Yaoundé" ;
lin Yaren_District_CName = mkCName "Yaren" ;
lin Yemen_CName = mkCName "Jemen" ;
lin Yemeni_rial_CName = mkCName "Jemenin rial" ;
lin Yerevan_CName = mkCName "Jerevan" ;
lin Zagreb_CName = mkCName "Zagreb" ;
lin Zambia_CName = mkCName "Sambia" ;
lin Zambian_kwacha_CName = mkCName "Sambian kwacha" ;
lin Zimbabwe_CName = mkCName "Zimbabwe" ;
lin ariary_CName = mkCName "Madagaskarin ariary" ;
lin baht_CName = mkCName "Baht" ;
lin birr_CName = mkCName "Etiopian birr" ;
lin boliviano_CName = mkCName "Bolivian boliviano" ;
lin convertible_mark_CName = mkCName "Bosnian ja Hertsegovinan vaihdettava markka" ;
lin dalasi_CName = mkCName "Dalasi" ;
lin denar_CName = mkCName "Makedonian denaari" ;
lin euro_CName = mkCName "euro" ;
lin forint_CName = mkCName "Unkarin forintti" ;
lin gourde_CName = mkCName "Haitin gourde" ;
lin hryvnia_CName = mkCName "Ukrainan hryvnia" ;
lin kina_CName = mkCName "Papua-Uuden-Guinean kina" ;
lin kwanza_CName = mkCName "Angolan kwanza" ;
lin kyat_CName = mkCName "Myanmarin kyat" ;
lin lilangeni_CName = mkCName "Lilangeni" ;
lin nakfa_CName = mkCName "Eritrean nakfa" ;
lin new_shekel_CName = mkCName "Uusi Israelin sekeli" ;
lin ngultrum_CName = mkCName "Bhutanin ngultrum" ;
lin pound_sterling_CName = mkCName "Englannin punta" ;
lin quetzal_CName = mkCName "Guatemalan quetzal" ;
lin renminbi_CName = mkCName "Renminbi" ;
lin riel_CName = mkCName "Kambodžan riel" ;
lin rupiah_CName = mkCName "Indonesian rupia" ;
lin tugrik_CName = mkCName "Mongolian tugrik" ;
lin 'złoty_CName' = mkCName "Puolan złoty" ;
}
