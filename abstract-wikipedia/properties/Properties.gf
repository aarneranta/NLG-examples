--# -path=.:gf-wordnet

abstract Properties = Parse [CN, VP, AP, VPS, S, NP, QS, Card, Adv] ** {

fun P6_CN : CN ; -- head of government
fun P10_CN : CN ; -- video
fun P14_VP : VP ; -- traffic sign
fun P15_VP : VP ; -- route map
fun P16_VP : VP ; -- transport network
fun P17_CN : CN ; -- country
fun P18_CN : CN ; -- image
fun P19_CN : CN ; -- place of birth
fun P20_CN : CN ; -- place of death
fun P21_CN : CN ; -- sex or gender
fun P22_CN : CN ; -- father
fun P25_CN : CN ; -- mother
fun P26_CN : CN ; -- spouse
fun P27_CN : CN ; -- country of citizenship
fun P30_AP : AP ; -- continent
fun P31_CN : CN ; -- instance of
fun P35_CN : CN ; -- head of state
fun P36_NP : NP ; -- capital
fun P37_CN : CN ; -- official language
fun P38_CN : CN ; -- currency
fun P39_AP : AP ; -- position held
fun P40_CN : CN ; -- child
fun P41_VP : VP ; -- flag image
fun P47_VPS : VPS ; -- shares border with
fun P50_CN : CN ; -- author
fun P51_AP : AP ; -- audio
fun P53_CN : CN ; -- family
fun P54_CN : CN ; -- member of sports team
fun P57_CN : CN ; -- director
fun P58_CN : CN ; -- screenwriter
fun P59_CN : CN ; -- constellation
fun P61_CN : CN ; -- discoverer or inventor
fun P65_CN : CN ; -- site of astronomical discovery
fun P66_AP : AP ; -- ancestral home
fun P69_VPS : VPS ; -- educated at
fun P78_CN : CN ; -- top-level Internet domain
fun P81_CN : CN ; -- connecting line
fun P84_CN : CN ; -- architect
fun P85_CN : CN ; -- anthem
fun P86_CN : CN ; -- composer
fun P87_CN : CN ; -- librettist
fun P88_AP : AP ; -- commissioned by
fun P91_CN : CN ; -- sexual orientation
fun P92_CN : CN ; -- main regulatory text
fun P94_CN : CN ; -- coat of arms image
fun P97_CN : CN ; -- noble title
fun P98_CN : CN ; -- editor
fun P101_CN : CN ; -- field of work
fun P102_CN : CN ; -- member of political party
fun P103_CN : CN ; -- native language
fun P106_CN : CN ; -- occupation
fun P108_CN : CN ; -- employer
fun P109_CN : CN ; -- signature
fun P110_CN : CN ; -- illustrator
fun P111_CN : CN ; -- measured physical quantity
fun P112_AP : AP ; -- founded by
fun P113_CN : CN ; -- airline hub
fun P114_CN : CN ; -- airline alliance
fun P115_CN : CN ; -- home venue
fun P117_CN : CN ; -- chemical structure
fun P118_VP : VP ; -- league
fun P119_CN : CN ; -- place of burial
fun P121_CN : CN ; -- item operated
fun P122_CN : CN ; -- basic form of government
fun P123_CN : CN ; -- publisher
fun P126_AP : AP ; -- maintained by
fun P127_AP : AP ; -- owned by
fun P129_VPS : VPS ; -- physically interacts with
fun P131_VPS : VPS ; -- located in the administrative territorial entity
fun P135_CN : CN ; -- movement
fun P136_CN : CN ; -- genre
fun P137_CN : CN ; -- operator
fun P138_AP : AP ; -- named after
fun P144_AP : AP ; -- based on
fun P149_CN : CN ; -- architectural style
fun P150_VPS : VPS ; -- contains the administrative territorial entity
fun P154_CN : CN ; -- logo image
fun P155_VPS : VPS ; -- follows
fun P156_AP : AP ; -- followed by
fun P157_AP : AP ; -- killed by
fun P158_VP : VP ; -- seal image
fun P159_CN : CN ; -- headquarters location
fun P161_CN : CN ; -- cast member
fun P162_CN : CN ; -- producer
fun P163_VP : VP ; -- flag
fun P166_VP : VP ; -- award received
fun P167_CN : CN ; -- structure replaced by
fun P169_CN : CN ; -- chief executive officer
fun P170_CN : CN ; -- creator
fun P172_CN : CN ; -- ethnic group
fun P175_CN : CN ; -- performer
fun P176_CN : CN ; -- manufacturer
fun P177_VPS : VPS ; -- crosses
fun P178_CN : CN ; -- developer
fun P179_CN : CN ; -- part of the series
fun P180_VPS : VPS ; -- depicts
fun P183_AP : AP ; -- endemic to
fun P184_CN : CN ; -- doctoral advisor
fun P185_CN : CN ; -- doctoral student
fun P186_CN : CN ; -- made from material
fun P189_CN : CN ; -- location of discovery
fun P190_CN : CN ; -- twinned administrative body
fun P193_CN : CN ; -- main building contractor
fun P194_CN : CN ; -- legislative body
fun P195_CN : CN ; -- collection
fun P196_CN : CN ; -- minor planet group
fun P197_CN : CN ; -- adjacent station
fun P199_CN : CN ; -- business division
fun P200_NP : NP ; -- inflows
fun P201_CN : CN ; -- lake outflow
fun P205_CN : CN ; -- basin country
fun P206_Adv : Adv ; -- located in or next to body of water
fun P207_CN : CN ; -- bathymetry image
fun P208_CN : CN ; -- executive body
fun P209_CN : CN ; -- highest judicial authority
fun P210_CN : CN ; -- party chief representative
fun P215_CN : CN ; -- spectral class
fun P217_CN : CN ; -- inventory number
fun P223_CN : CN ; -- galaxy morphological type
fun P232_CN : CN ; -- EC number
fun P233_S : S ; -- canonical SMILES
fun P237_CN : CN ; -- coat of arms
fun P241_CN : CN ; -- military branch
fun P242_CN : CN ; -- locator map image
fun P244_CN : CN ; -- Library of Congress authority ID
fun P245_CN : CN ; -- Union List of Artist Names ID
fun P246_CN : CN ; -- element symbol
fun P248_VPS : VPS ; -- stated in
fun P249_CN : CN ; -- ticker symbol
fun P263_CN : CN ; -- official residence
fun P264_VP : VP ; -- record label
fun P272_CN : CN ; -- production company
fun P274_CN : CN ; -- chemical formula
fun P275_VP : VP ; -- copyright license
fun P276_CN : CN ; -- location
fun P277_VPS : VPS ; -- programmed in
fun P279_CN : CN ; -- subclass of
fun P281_CN : CN ; -- postal code
fun P282_CN : CN ; -- writing system
fun P286_VP : VP ; -- head coach
fun P287_AP : AP ; -- designed by
fun P289_CN : CN ; -- vessel class
fun P291_CN : CN ; -- place of publication
fun P296_VP : VP ; -- station code
fun P301_NP : NP ; -- category's main topic
fun P306_CN : CN ; -- operating system
fun P344_CN : CN ; -- director of photography
fun P348_CN : CN ; -- software version identifier
fun P355_VPS : VPS ; -- has subsidiary
fun P358_CN : CN ; -- discography
fun P360_QS : QS ; -- is a list of
fun P361_CN : CN ; -- part of
fun P364_CN : CN ; -- original language of film or TV show
fun P366_VPS : VPS ; -- has use
fun P367_CN : CN ; -- astronomic symbol image
fun P369_CN : CN ; -- Sandbox-Item
fun P370_CN : CN ; -- Sandbox-String
fun P371_CN : CN ; -- presenter
fun P373_CN : CN ; -- Commons category
fun P375_VP : VP ; -- space launch vehicle
fun P376_CN : CN ; -- located on astronomical body
fun P393_CN : CN ; -- edition number
fun P395_VP : VP ; -- licence plate code
fun P397_CN : CN ; -- parent astronomical body
fun P398_CN : CN ; -- child astronomical body
fun P399_CN : CN ; -- companion of
fun P400_CN : CN ; -- platform
fun P403_CN : CN ; -- mouth of the watercourse
fun P404_CN : CN ; -- game mode
fun P406_CN : CN ; -- soundtrack release
fun P407_CN : CN ; -- language of work or name
fun P408_CN : CN ; -- software engine
fun P409_NP : NP ; -- Libraries Australia ID
fun P410_AP : AP ; -- military rank
fun P411_CN : CN ; -- canonization status
fun P412_VP : VP ; -- voice type
fun P414_CN : CN ; -- stock exchange
fun P415_CN : CN ; -- radio format
fun P417_CN : CN ; -- patron saint
fun P421_CN : CN ; -- located in time zone
fun P423_CN : CN ; -- shooting handedness
fun P425_CN : CN ; -- field of this occupation
fun P426_CN : CN ; -- aircraft registration
fun P427_CN : CN ; -- taxonomic type
fun P428_CN : CN ; -- botanist author abbreviation
fun P432_CN : CN ; -- callsign of airline
fun P433_VP : VP ; -- issue
fun P437_CN : CN ; -- distribution format
fun P439_CN : CN ; -- German municipality key
fun P440_CN : CN ; -- German district key
fun P442_CN : CN ; -- China administrative division code
fun P443_AP : AP ; -- pronunciation audio
fun P444_VP : VP ; -- review score
fun P447_VP : VP ; -- review score by
fun P449_CN : CN ; -- original broadcaster
fun P450_CN : CN ; -- astronaut mission
fun P451_CN : CN ; -- unmarried partner
fun P452_CN : CN ; -- industry
fun P453_CN : CN ; -- character role
fun P459_CN : CN ; -- determination method
fun P460_AP : AP ; -- said to be the same as
fun P461_CN : CN ; -- opposite of
fun P462_VP : VP ; -- color
fun P463_CN : CN ; -- member of
fun P464_NP : NP ; -- NOR
fun P466_CN : CN ; -- occupant
fun P467_AP : AP ; -- legislated by
fun P469_CN : CN ; -- lake on watercourse
fun P470_CN : CN ; -- Eight Banner register
fun P473_AP : AP ; -- local dialing code
fun P474_CN : CN ; -- country calling code
fun P477_CN : CN ; -- Canadian Register of Historic Places ID
fun P478_CN : CN ; -- volume
fun P479_CN : CN ; -- input method
fun P483_AP : AP ; -- recorded at studio or venue
fun P485_CN : CN ; -- archives at
fun P486_VP : VP ; -- MeSH descriptor ID
fun P489_CN : CN ; -- currency symbol description
fun P490_CN : CN ; -- provisional designation
fun P491_VP : VP ; -- orbit diagram
fun P495_CN : CN ; -- country of origin
fun P501_CN : CN ; -- enclave within
fun P504_AP : AP ; -- home port
fun P505_CN : CN ; -- general manager
fun P507_CN : CN ; -- Swedish county code
fun P509_CN : CN ; -- cause of death
fun P511_CN : CN ; -- honorific prefix
fun P512_CN : CN ; -- academic degree
fun P514_VPS : VPS ; -- interleaves with
fun P515_CN : CN ; -- phase of matter
fun P516_AP : AP ; -- powered by
fun P517_CN : CN ; -- interaction
fun P518_VPS : VPS ; -- applies to part
fun P520_CN : CN ; -- armament
fun P521_CN : CN ; -- scheduled service destination
fun P522_CN : CN ; -- type of orbit
fun P523_CN : CN ; -- temporal range start
fun P524_CN : CN ; -- temporal range end
fun P525_CN : CN ; -- Swedish municipality code
fun P528_VP : VP ; -- catalog code
fun P529_CN : CN ; -- runway
fun P530_CN : CN ; -- diplomatic relation
fun P531_CN : CN ; -- diplomatic mission sent
fun P532_CN : CN ; -- port of registry
fun P533_CN : CN ; -- target
fun P534_AP : AP ; -- streak color
fun P535_VP : VP ; -- Find a Grave memorial ID
fun P537_AP : AP ; -- twinning
fun P538_CN : CN ; -- mineral fracture
fun P541_CN : CN ; -- office contested
fun P542_AP : AP ; -- officially opened by
fun P543_CN : CN ; -- oath made by
fun P545_CN : CN ; -- torch lit by
fun P546_AP : AP ; -- docking port
fun P547_VPS : VPS ; -- commemorates
fun P548_CN : CN ; -- version type
fun P549_CN : CN ; -- Mathematics Genealogy Project ID
fun P550_CN : CN ; -- chivalric order
fun P551_CN : CN ; -- residence
fun P552_CN : CN ; -- handedness
fun P553_CN : CN ; -- website account on
fun P555_CN : CN ; -- doubles record
fun P556_CN : CN ; -- crystal system
fun P559_CN : CN ; -- terminus
fun P560_CN : CN ; -- direction
fun P561_NP : NP ; -- NATO reporting name
fun P564_CN : CN ; -- singles record
fun P565_CN : CN ; -- crystal habit
fun P567_VPS : VPS ; -- underlies
fun P568_VPS : VPS ; -- overlies
fun P569_CN : CN ; -- date of birth
fun P570_CN : CN ; -- date of death
fun P571_CN : CN ; -- inception
fun P575_CN : CN ; -- time of discovery or invention
fun P576_CN : CN ; -- dissolved, abolished or demolished date
fun P577_CN : CN ; -- publication date
fun P580_VP : VP ; -- start time
fun P582_VP : VP ; -- end time
fun P585_CN : CN ; -- point in time
fun P588_CN : CN ; -- coolant
fun P589_VP : VP ; -- point group
fun P591_CN : CN ; -- EC enzyme number
fun P595_VP : VP ; -- Guide to Pharmacology Ligand ID
fun P605_CN : CN ; -- NUTS code
fun P606_CN : CN ; -- first flight
fun P607_VP : VP ; -- conflict
fun P608_CN : CN ; -- exhibition history
fun P609_CN : CN ; -- terminus location
fun P610_CN : CN ; -- highest point
fun P611_CN : CN ; -- religious order
fun P612_VP : VP ; -- mother house
fun P613_CN : CN ; -- OS grid reference
fun P617_CN : CN ; -- yard number
fun P618_CN : CN ; -- source of energy
fun P621_CN : CN ; -- time of object orbit decay
fun P624_CN : CN ; -- guidance system
fun P625_CN : CN ; -- coordinate location
fun P629_CN : CN ; -- edition or translation of
fun P630_CN : CN ; -- Paris city digital code
fun P631_CN : CN ; -- structural engineer
fun P633_NP : NP ; -- Quebec cultural heritage directory ID
fun P634_CN : CN ; -- captain
fun P636_CN : CN ; -- route of administration
fun P641_VP : VP ; -- sport
fun P642_NP : NP ; -- of
fun P647_AP : AP ; -- drafted by
fun P648_CN : CN ; -- Open Library ID
fun P654_CN : CN ; -- direction relative to location
fun P655_CN : CN ; -- translator
fun P660_CN : CN ; -- EC enzyme classification
fun P664_CN : CN ; -- organizer
fun P669_VPS : VPS ; -- located on street
fun P670_VP : VP ; -- house number
fun P672_CN : CN ; -- MeSH tree code
fun P674_NP : NP ; -- characters
fun P675_S : S ; -- Google Books ID
fun P676_NP : NP ; -- lyrics by
fun P680_CN : CN ; -- molecular function
fun P681_AP : AP ; -- cell component
fun P682_CN : CN ; -- biological process
fun P686_CN : CN ; -- Gene Ontology ID
fun P688_VPS : VPS ; -- encodes
fun P689_VPS : VPS ; -- afflicts
fun P690_VP : VP ; -- space group
fun P692_CN : CN ; -- Gene Atlas Image
fun P693_CN : CN ; -- cleavage
fun P695_CN : CN ; -- UN number
fun P699_CN : CN ; -- Disease Ontology ID
fun P702_AP : AP ; -- encoded by
fun P707_CN : CN ; -- satellite bus
fun P708_CN : CN ; -- diocese
fun P709_AP : AP ; -- Historic Scotland ID
fun P710_CN : CN ; -- participant
fun P717_CN : CN ; -- Minor Planet Center observatory code
fun P720_CN : CN ; -- asteroid spectral type
fun P724_CN : CN ; -- Internet Archive ID
fun P725_VP : VP ; -- voice actor
fun P726_CN : CN ; -- candidate
fun P729_VP : VP ; -- service entry
fun P730_VP : VP ; -- service retirement
fun P734_CN : CN ; -- family name
fun P735_AP : AP ; -- given name
fun P736_VP : VP ; -- cover art by
fun P737_AP : AP ; -- influenced by
fun P739_CN : CN ; -- ammunition
fun P740_CN : CN ; -- location of formation
fun P741_CN : CN ; -- playing hand
fun P742_CN : CN ; -- pseudonym
fun P744_CN : CN ; -- asteroid family
fun P745_CN : CN ; -- Low German Bibliography and Biography ID
fun P746_CN : CN ; -- date of disappearance
fun P747_VPS : VPS ; -- has edition or translation
fun P748_AP : AP ; -- appointed by
fun P749_CN : CN ; -- parent organization
fun P750_AP : AP ; -- distributed by
fun P751_CN : CN ; -- introduced feature
fun P756_CN : CN ; -- removed feature
fun P757_CN : CN ; -- World Heritage Site ID
fun P759_S : S ; -- Alberta Register of Historic Places ID
fun P762_CN : CN ; -- Czech cultural heritage ID
fun P765_VP : VP ; -- surface played on
fun P767_CN : CN ; -- contributor to the creative work or subject
fun P768_CN : CN ; -- electoral district
fun P769_CN : CN ; -- significant drug interaction
fun P770_CN : CN ; -- cause of destruction
fun P771_CN : CN ; -- Swiss municipality code
fun P775_CN : CN ; -- Swedish urban area code
fun P776_CN : CN ; -- Swedish minor urban area code
fun P778_CN : CN ; -- Church of Sweden parish code
fun P780_NP : NP ; -- symptoms and signs
fun P783_CN : CN ; -- hymenium type
fun P784_CN : CN ; -- mushroom cap shape
fun P785_CN : CN ; -- hymenium attachment
fun P786_CN : CN ; -- stipe character
fun P787_CN : CN ; -- spore print color
fun P788_CN : CN ; -- mushroom ecological type
fun P789_CN : CN ; -- edibility
fun P790_AP : AP ; -- approved by
fun P792_CN : CN ; -- chapter
fun P793_CN : CN ; -- significant event
fun P795_CN : CN ; -- located on linear feature
fun P797_CN : CN ; -- authority
fun P798_CN : CN ; -- military designation
fun P799_VP : VP ; -- Air Ministry specification ID
fun P800_CN : CN ; -- notable work
fun P802_CN : CN ; -- student
fun P803_CN : CN ; -- professorship
fun P805_CN : CN ; -- statement is subject of
fun P807_AP : AP ; -- separated from
fun P811_AP : AP ; -- academic minor
fun P812_AP : AP ; -- academic major
fun P813_AP : AP ; -- retrieved
fun P816_VPS : VPS ; -- decays to
fun P817_CN : CN ; -- decay mode
fun P822_CN : CN ; -- mascot
fun P823_CN : CN ; -- speaker
fun P824_CN : CN ; -- Meteoritical Bulletin Database ID
fun P825_AP : AP ; -- dedicated to
fun P826_CN : CN ; -- tonality
---fun P827_ImpPl : ImpPl ; -- BBC programme ID
fun P828_VPS : VPS ; -- has cause
fun P830_CN : CN ; -- Encyclopedia of Life ID
fun P831_CN : CN ; -- parent club
fun P832_CN : CN ; -- public holiday
fun P833_VP : VP ; -- interchange station
fun P834_VP : VP ; -- train depot
fun P837_CN : CN ; -- day in year for periodic occurrence
fun P840_CN : CN ; -- narrative location
fun P841_CN : CN ; -- feast day
fun P845_NP : NP ; -- Saskatchewan Register of Heritage Property ID
fun P847_NP : NP ; -- United States Navy aircraft designation
fun P849_CN : CN ; -- Japanese military aircraft designation
fun P853_CN : CN ; -- CERO rating
fun P856_CN : CN ; -- official website
fun P859_CN : CN ; -- sponsor
fun P862_CN : CN ; -- Operational Requirement of the UK Air Ministry
fun P868_NP : NP ; -- foods traditionally associated
fun P870_CN : CN ; -- instrumentation
fun P872_AP : AP ; -- printed by
fun P873_VP : VP ; -- phase point
fun P874_CN : CN ; -- UN class
fun P875_CN : CN ; -- UN classification code
fun P876_CN : CN ; -- UN packaging group
fun P878_CN : CN ; -- avionics
fun P879_CN : CN ; -- pennant number
fun P881_CN : CN ; -- type of variable star
fun P885_CN : CN ; -- origin of the watercourse
fun P887_CN : CN ; -- based on heuristic
fun P889_S : S ; -- Mathematical Reviews ID
fun P897_NP : NP ; -- United States Army and Air Force aircraft designation
fun P905_CN : CN ; -- PORT film ID
fun P909_S : S ; -- Nova Scotia Register of Historic Places ID
fun P910_NP : NP ; -- topic's main category
fun P911_CN : CN ; -- South African municipality code
fun P912_VPS : VPS ; -- has facility
fun P913_CN : CN ; -- notation
fun P915_CN : CN ; -- filming location
fun P921_AP : AP ; -- main subject
fun P922_CN : CN ; -- magnetic ordering
fun P923_CN : CN ; -- medical examination
fun P924_CN : CN ; -- possible treatment
fun P927_CN : CN ; -- anatomical location
fun P928_AP : AP ; -- activating neurotransmitter
fun P929_CN : CN ; -- color space
fun P930_CN : CN ; -- type of electrification
fun P931_CN : CN ; -- place served by transport hub
fun P935_CN : CN ; -- Commons gallery
fun P937_VP : VP ; -- work location
fun P941_AP : AP ; -- inspired by
fun P942_CN : CN ; -- theme music
fun P943_CN : CN ; -- programmer
fun P944_CN : CN ; -- Code of nomenclature
fun P945_CN : CN ; -- allegiance
fun P948_AP : AP ; -- page banner
fun P958_NP : NP ; -- section, verse, paragraph, or clause
fun P964_CN : CN ; -- Austrian municipality key
fun P965_CN : CN ; -- burial plot reference
fun P967_CN : CN ; -- guest of honor
fun P968_CN : CN ; -- email address
fun P970_CN : CN ; -- neurological function
fun P971_S : S ; -- category combines topics
fun P972_CN : CN ; -- catalog
fun P974_AP : AP ; -- tributary
fun P981_VP : VP ; -- BAG residence ID
fun P988_CN : CN ; -- Philippine Standard Geographic Code
fun P989_NP : NP ; -- spoken text audio
fun P990_CN : CN ; -- audio recording of the subject's spoken voice
fun P991_CN : CN ; -- successful candidate
fun P1000_AP : AP ; -- record held
fun P1001_VPS : VPS ; -- applies to jurisdiction
fun P1002_CN : CN ; -- engine configuration
fun P1003_CN : CN ; -- National Library of Romania ID
fun P1005_CN : CN ; -- Portuguese National Library ID
fun P1010_NP : NP ; -- Iran statistics ID
fun P1011_AP : AP ; -- excluding
fun P1012_CN : CN ; -- including
fun P1013_AP : AP ; -- criterion used
fun P1014_CN : CN ; -- Art & Architecture Thesaurus ID
fun P1016_CN : CN ; -- asteroid taxonomy
fun P1018_CN : CN ; -- language regulatory body
fun P1026_CN : CN ; -- academic thesis
fun P1027_AP : AP ; -- conferred by
fun P1028_AP : AP ; -- donated by
fun P1030_AP : AP ; -- light characteristic
fun P1031_CN : CN ; -- legal citation of this text
fun P1032_S : S ; -- Digital Rights Management system
fun P1034_CN : CN ; -- main food source
fun P1035_CN : CN ; -- honorific suffix
fun P1038_AP : AP ; -- relative
fun P1039_CN : CN ; -- kinship to subject
fun P1040_VP : VP ; -- film editor
fun P1041_CN : CN ; -- socket supported
fun P1046_CN : CN ; -- discovery method
fun P1047_CN : CN ; -- Catholic Hierarchy person ID
fun P1049_AP : AP ; -- worshipped by
fun P1050_CN : CN ; -- medical condition
fun P1056_CN : CN ; -- product or material produced
fun P1057_CN : CN ; -- chromosome
fun P1058_CN : CN ; -- ERA Journal ID
fun P1060_CN : CN ; -- disease transmission process
fun P1064_VP : VP ; -- track gauge
fun P1066_CN : CN ; -- student of
fun P1067_NP : NP ; -- Thailand central administrative unit code
fun P1068_CN : CN ; -- instruction set
fun P1071_CN : CN ; -- location of creation
fun P1072_CN : CN ; -- readable file format
fun P1074_CN : CN ; -- fictional analog of
fun P1075_CN : CN ; -- rector
fun P1079_VP : VP ; -- launch contractor
fun P1080_Adv : Adv ; -- from narrative universe
fun P1081_CN : CN ; -- Human Development Index
fun P1082_CN : CN ; -- population
fun P1083_CN : CN ; -- maximum capacity
fun P1086_CN : CN ; -- atomic number
fun P1092_VP : VP ; -- total produced
fun P1093_CN : CN ; -- gross tonnage
fun P1096_CN : CN ; -- orbital eccentricity
fun P1097_CN : CN ; -- g-factor
fun P1098_NP : NP ; -- number of speakers, writers, or signers
fun P1099_CN : CN ; -- number of masts
fun P1100_CN : CN ; -- number of cylinders
fun P1101_VPS : VPS ; -- floors above ground
fun P1102_AP : AP ; -- flattening
fun P1103_S : S ; -- number of platform tracks
fun P1104_CN : CN ; -- number of pages
fun P1106_CN : CN ; -- Sandbox-Quantity
fun P1107_CN : CN ; -- proportion
fun P1108_CN : CN ; -- electronegativity
fun P1109_CN : CN ; -- refractive index
fun P1110_CN : CN ; -- attendance
fun P1111_VPS : VPS ; -- votes received
fun P1113_CN : CN ; -- number of episodes
fun P1114_CN : CN ; -- quantity
fun P1120_CN : CN ; -- number of deaths
fun P1121_CN : CN ; -- oxidation state
fun P1122_VP : VP ; -- spin quantum number
fun P1123_CN : CN ; -- parity quantum number
fun P1128_NP : NP ; -- employees
fun P1129_NP : NP ; -- national team appearances
fun P1132_CN : CN ; -- number of participants
fun P1136_AP : AP ; -- solved by
fun P1137_CN : CN ; -- fossil found in this unit
fun P1139_VPS : VPS ; -- floors below ground
fun P1141_CN : CN ; -- number of processor cores
fun P1142_CN : CN ; -- political ideology
fun P1146_CN : CN ; -- World Athletics athlete ID
fun P1148_CN : CN ; -- neutron number
fun P1149_CN : CN ; -- Library of Congress Classification
fun P1150_NP : NP ; -- Regensburg Classification
fun P1157_Adv : Adv ; -- US Congress Bio ID
fun P1158_CN : CN ; -- location of landing
fun P1163_VP : VP ; -- MIME type
fun P1164_VP : VP ; -- group cardinality
fun P1165_CN : CN ; -- home world
fun P1170_CN : CN ; -- transmitted signal type
fun P1171_CN : CN ; -- approximation algorithm
fun P1174_NP : NP ; -- visitors per year
fun P1181_CN : CN ; -- numeric value
fun P1184_VP : VP ; -- Handle ID
fun P1189_CN : CN ; -- Chinese Library Classification
fun P1190_CN : CN ; -- Universal Decimal Classification
fun P1191_CN : CN ; -- date of first performance
fun P1192_CN : CN ; -- connecting service
fun P1193_CN : CN ; -- prevalence
fun P1194_CN : CN ; -- received signal type
fun P1195_VP : VP ; -- file extension
fun P1196_CN : CN ; -- manner of death
fun P1198_CN : CN ; -- unemployment rate
fun P1199_CN : CN ; -- mode of inheritance
fun P1200_NP : NP ; -- bodies of water basin category
fun P1201_VP : VP ; -- space tug
fun P1202_VPS : VPS ; -- carries scientific instrument
fun P1203_CN : CN ; -- Finnish municipality number
fun P1210_CN : CN ; -- supercharger
fun P1211_VP : VP ; -- fuel system
fun P1212_CN : CN ; -- Atlas ID
fun P1215_CN : CN ; -- apparent magnitude
fun P1216_CN : CN ; -- National Heritage List for England number
fun P1221_CN : CN ; -- compressor type
fun P1227_CN : CN ; -- astronomical filter
fun P1232_CN : CN ; -- Linguist List code
fun P1233_CN : CN ; -- Internet Speculative Fiction Database author ID
fun P1236_NP : NP ; -- Parsons code
fun P1238_CN : CN ; -- Swedish Football Association player ID
fun P1241_CN : CN ; -- Swiss Football Association club number
fun P1246_CN : CN ; -- patent number
fun P1247_CN : CN ; -- compression ratio
fun P1249_CN : CN ; -- time of earliest written record
fun P1258_NP : NP ; -- Rotten Tomatoes ID
fun P1259_VPS : VPS ; -- coordinates of the point of view
fun P1264_AP : AP ; -- valid in period
fun P1268_VPS : VPS ; -- represents
fun P1269_CN : CN ; -- facet of
fun P1270_CN : CN ; -- Norwegian Register journal ID
fun P1271_NP : NP ; -- Norway Database for Statistics on Higher education publisher ID
fun P1272_NP : NP ; -- Norway Import Service and Registration Authority periodical code
fun P1275_NP : NP ; -- Norway Import Service and Registration Authority publisher code
fun P1278_CN : CN ; -- Legal Entity Identifier
fun P1279_CN : CN ; -- inflation rate
fun P1283_CN : CN ; -- filmography
fun P1290_CN : CN ; -- godparent
fun P1299_AP : AP ; -- depicted by
fun P1301_CN : CN ; -- number of elevators
fun P1302_NP : NP ; -- primary destinations
fun P1303_CN : CN ; -- instrument
fun P1304_CN : CN ; -- central bank
fun P1307_CN : CN ; -- Swiss parliament ID
fun P1308_CN : CN ; -- officeholder
fun P1310_CN : CN ; -- statement disputed by
fun P1313_CN : CN ; -- office held by head of government
fun P1314_CN : CN ; -- number of spans
fun P1316_CN : CN ; -- Swedish Media Database ID
fun P1318_AP : AP ; -- proved by
fun P1319_CN : CN ; -- earliest date
fun P1322_AP : AP ; -- dual to
fun P1324_CN : CN ; -- source code repository
fun P1325_CN : CN ; -- external data available at
fun P1326_CN : CN ; -- latest date
fun P1327_CN : CN ; -- partner in business or sport
fun P1329_VP : VP ; -- phone number
fun P1331_Adv : Adv ; -- PACE member ID
fun P1332_VPS : VPS ; -- coordinates of northernmost point
fun P1333_VPS : VPS ; -- coordinates of southernmost point
fun P1334_VPS : VPS ; -- coordinates of easternmost point
fun P1335_VPS : VPS ; -- coordinates of westernmost point
fun P1336_CN : CN ; -- territory claimed by
fun P1339_CN : CN ; -- number of injured
fun P1340_AP : AP ; -- eye color
fun P1342_CN : CN ; -- number of seats
fun P1343_AP : AP ; -- described by source
fun P1344_CN : CN ; -- participant in
fun P1345_CN : CN ; -- number of victims of killer
fun P1346_CN : CN ; -- winner
fun P1347_CN : CN ; -- military casualty classification
fun P1352_CN : CN ; -- ranking
fun P1353_CN : CN ; -- original spelling
fun P1354_NP : NP ; -- shown with features
fun P1355_CN : CN ; -- number of wins
fun P1356_CN : CN ; -- number of losses
fun P1358_VPS : VPS ; -- points for
fun P1365_VPS : VPS ; -- replaces
fun P1366_AP : AP ; -- replaced by
fun P1367_CN : CN ; -- Art UK artist ID
fun P1369_CN : CN ; -- Iranian National Heritage registration number
fun P1372_CN : CN ; -- binding of software library
fun P1373_CN : CN ; -- daily patronage
fun P1376_CN : CN ; -- capital of
fun P1382_AP : AP ; -- partially coincident with
fun P1383_VPS : VPS ; -- contains settlement
fun P1386_CN : CN ; -- Japanese High School Code
fun P1387_CN : CN ; -- political alignment
fun P1388_CN : CN ; -- German regional key
fun P1389_CN : CN ; -- product certification
fun P1390_VP : VP ; -- match time of event
fun P1393_CN : CN ; -- proxy
fun P1395_CN : CN ; -- National Cancer Institute ID
fun P1398_S : S ; -- structure replaces
fun P1399_AP : AP ; -- convicted of
fun P1401_VP : VP ; -- bug tracking system
fun P1403_CN : CN ; -- original combination
fun P1404_CN : CN ; -- World Glacier Inventory ID
fun P1406_CN : CN ; -- script directionality
fun P1408_AP : AP ; -- licensed to broadcast to
fun P1409_CN : CN ; -- Cycling Archives cyclist ID
fun P1410_CN : CN ; -- number of seats in legislature
fun P1411_AP : AP ; -- nominated for
fun P1412_NP : NP ; -- languages spoken, written or signed
fun P1415_CN : CN ; -- Oxford Dictionary of National Biography ID
fun P1416_CN : CN ; -- affiliation
fun P1418_VPS : VPS ; -- orbits completed
fun P1419_NP : NP ; -- shape
fun P1423_S : S ; -- template has topic
fun P1424_NP : NP ; -- topic's main template
fun P1427_VP : VP ; -- start point
fun P1428_CN : CN ; -- Lost Art ID
fun P1429_VPS : VPS ; -- has pet
fun P1431_CN : CN ; -- executive producer
fun P1433_VPS : VPS ; -- published in
fun P1434_VPS : VPS ; -- takes place in fictional universe
fun P1435_CN : CN ; -- heritage designation
fun P1436_NP : NP ; -- collection or exhibition size
fun P1437_CN : CN ; -- plea
fun P1439_CN : CN ; -- Norwegian filmography ID
fun P1441_CN : CN ; -- present in work
fun P1442_CN : CN ; -- image of grave
fun P1443_VP : VP ; -- score method
fun P1444_CN : CN ; -- destination point
fun P1445_S : S ; -- fictional universe described in
fun P1446_CN : CN ; -- number of missing
fun P1448_CN : CN ; -- official name
fun P1449_CN : CN ; -- nickname
fun P1450_CN : CN ; -- Sandbox-Monolingual text
fun P1451_CN : CN ; -- motto text
fun P1454_CN : CN ; -- legal form
fun P1455_CN : CN ; -- list of works
fun P1456_CN : CN ; -- list of monuments
fun P1457_CN : CN ; -- absolute magnitude
fun P1458_CN : CN ; -- color index
fun P1462_NP : NP ; -- standards body
fun P1463_CN : CN ; -- Post-Reformation Digital Library author ID
fun P1464_CN : CN ; -- category for people born here
fun P1465_CN : CN ; -- category for people who died here
fun P1470_CN : CN ; -- maximum glide ratio
fun P1471_CN : CN ; -- reporting mark
fun P1472_CN : CN ; -- Commons Creator page
fun P1476_CN : CN ; -- title
fun P1477_CN : CN ; -- birth name
fun P1478_VPS : VPS ; -- has immediate cause
fun P1479_VPS : VPS ; -- has contributing factor
fun P1482_VP : VP ; -- Stack Exchange tag
fun P1529_NP : NP ; -- Gertrude identifier
fun P1531_CN : CN ; -- parent of this hybrid, breed, or cultivar
fun P1532_CN : CN ; -- country for sport
fun P1533_CN : CN ; -- family name identical to this given name
fun P1534_VP : VP ; -- end cause
fun P1535_AP : AP ; -- used by
fun P1536_CN : CN ; -- immediate cause of
fun P1537_CN : CN ; -- contributing factor of
fun P1538_CN : CN ; -- number of households
fun P1539_CN : CN ; -- female population
fun P1540_CN : CN ; -- male population
fun P1542_VPS : VPS ; -- has effect
fun P1543_CN : CN ; -- monogram
fun P1544_CN : CN ; -- Federal Register Document Number
fun P1545_AP : AP ; -- series ordinal
fun P1546_CN : CN ; -- motto
fun P1547_VPS : VPS ; -- depends on software
fun P1552_VPS : VPS ; -- has quality
fun P1555_CN : CN ; -- Executive Order number
fun P1557_CN : CN ; -- manifestation of
fun P1558_CN : CN ; -- tempo marking
fun P1559_VP : VP ; -- name in native language
fun P1560_AP : AP ; -- given name version for other gender
fun P1561_CN : CN ; -- number of survivors
fun P1564_Adv : Adv ; -- At the Circulating Library ID
fun P1568_CN : CN ; -- definition domain
fun P1573_NP : NP ; -- BBC Genome ID
fun P1574_CN : CN ; -- exemplar of
fun P1576_CN : CN ; -- lifestyle
fun P1581_CN : CN ; -- official blog
fun P1585_CN : CN ; -- Brazilian municipality code
fun P1586_CN : CN ; -- Catalan object of cultural interest ID
fun P1588_CN : CN ; -- Statistics Indonesia area code
---fun P1589_ImpPl : ImpPl ; -- lowest point
fun P1591_CN : CN ; -- defendant
fun P1592_CN : CN ; -- prosecutor
fun P1593_CN : CN ; -- defender
fun P1594_VP : VP ; -- judge
fun P1595_VP : VP ; -- charge
fun P1596_CN : CN ; -- penalty
fun P1599_NP : NP ; -- Cambridge Alumni Database ID
fun P1602_CN : CN ; -- Art UK venue ID
fun P1603_CN : CN ; -- number of cases
fun P1604_AP : AP ; -- biosafety level
fun P1605_VPS : VPS ; -- has natural reservoir
fun P1606_CN : CN ; -- natural reservoir of
fun P1611_NP : NP ; -- NATO code for grade
fun P1612_CN : CN ; -- Commons Institution page
fun P1614_CN : CN ; -- History of Parliament ID
fun P1616_CN : CN ; -- SIREN number
fun P1617_NP : NP ; -- BBC Things ID
fun P1618_VP : VP ; -- sport number
fun P1619_CN : CN ; -- date of official opening
fun P1620_CN : CN ; -- plaintiff
fun P1621_VP : VP ; -- detail map
fun P1622_CN : CN ; -- driving side
fun P1625_VPS : VPS ; -- has melody
fun P1626_CN : CN ; -- Thai cultural heritage ID
fun P1628_CN : CN ; -- equivalent property
fun P1635_CN : CN ; -- religious name
fun P1636_CN : CN ; -- date of baptism in early childhood
fun P1637_CN : CN ; -- undercarriage
fun P1638_CN : CN ; -- working title
fun P1639_CN : CN ; -- pendant of
fun P1640_CN : CN ; -- curator
fun P1641_AP : AP ; -- port
fun P1642_CN : CN ; -- acquisition transaction
fun P1643_CN : CN ; -- departure transaction
fun P1648_CN : CN ; -- Dictionary of Welsh Biography ID
fun P1652_VP : VP ; -- referee
fun P1654_VP : VP ; -- wing configuration
fun P1656_AP : AP ; -- unveiled by
fun P1659_NP : NP ; -- related properties
fun P1660_VPS : VPS ; -- has index case
fun P1669_S : S ; -- Cultural Objects Names Authority ID
fun P1671_VP : VP ; -- route number
fun P1673_CN : CN ; -- general formula
fun P1674_VP : VP ; -- number confirmed
fun P1675_AP : AP ; -- number probable
fun P1676_VP : VP ; -- number suspected
fun P1677_VP : VP ; -- index case of
fun P1678_VPS : VPS ; -- has vertex figure
fun P1679_CN : CN ; -- Art UK artwork ID
fun P1680_CN : CN ; -- subtitle
fun P1683_CN : CN ; -- quotation
fun P1684_CN : CN ; -- inscription
fun P1686_Adv : Adv ; -- for work
fun P1696_CN : CN ; -- inverse property
fun P1697_S : S ; -- total valid votes
fun P1703_QS : QS ; -- is pollinated by
fun P1704_QS : QS ; -- is pollinator of
fun P1705_CN : CN ; -- native label
fun P1706_Adv : Adv ; -- together with
fun P1709_CN : CN ; -- equivalent class
fun P1711_CN : CN ; -- British Museum person or institution ID
fun P1716_CN : CN ; -- brand
fun P1721_CN : CN ; -- pinyin transliteration
fun P1725_VPS : VPS ; -- beats per minute
fun P1733_VP : VP ; -- Steam application ID
fun P1734_CN : CN ; -- oath of office date
fun P1736_AP : AP ; -- Information Center for Israeli Art artist ID
fun P1740_CN : CN ; -- category for films shot at this location
fun P1747_CN : CN ; -- Flora of China ID
fun P1750_CN : CN ; -- name day
fun P1751_CN : CN ; -- Art UK collection ID
fun P1752_VP : VP ; -- scale
fun P1753_AP : AP ; -- list related to category
fun P1754_AP : AP ; -- category related to list
fun P1755_CN : CN ; -- Aviation Safety Network accident ID
fun P1763_CN : CN ; -- National Pipe Organ Register ID
fun P1764_CN : CN ; -- Flemish Heritage Object ID
fun P1766_CN : CN ; -- place name sign
fun P1774_CN : CN ; -- workshop of
fun P1775_CN : CN ; -- follower of
fun P1776_CN : CN ; -- circle of
fun P1777_CN : CN ; -- manner of
fun P1778_AP : AP ; -- forgery after
fun P1779_CN : CN ; -- possible creator
fun P1780_CN : CN ; -- school of
fun P1782_CN : CN ; -- courtesy name
fun P1785_CN : CN ; -- temple name
fun P1786_CN : CN ; -- posthumous name
fun P1789_CN : CN ; -- chief operating officer
fun P1791_CN : CN ; -- category of people buried here
fun P1792_CN : CN ; -- category of associated people
fun P1793_CN : CN ; -- format as a regular expression
fun P1799_CN : CN ; -- Maltese Islands National Inventory of Cultural Property ID
fun P1801_CN : CN ; -- commemorative plaque image
fun P1802_CN : CN ; -- Early Modern Letters Online person ID
fun P1809_CN : CN ; -- choreographer
fun P1810_CN : CN ; -- subject named as
fun P1811_CN : CN ; -- list of episodes
fun P1813_CN : CN ; -- short name
fun P1817_CN : CN ; -- addressee
fun P1820_NP : NP ; -- Open Food Facts food additive ID
fun P1821_NP : NP ; -- Open Food Facts food category ID
fun P1824_CN : CN ; -- road number
fun P1830_CN : CN ; -- owner of
fun P1831_CN : CN ; -- electorate
fun P1836_VP : VP ; -- draft pick number
---fun P1839_ImpPl : ImpPl ; -- US Federal Election Commission ID
fun P1840_AP : AP ; -- investigated by
fun P1841_CN : CN ; -- Swedish district code
fun P1845_CN : CN ; -- anti-virus alias
fun P1846_CN : CN ; -- distribution map
fun P1851_CN : CN ; -- input set
fun P1852_CN : CN ; -- Perry Index
fun P1853_CN : CN ; -- blood type
fun P1866_CN : CN ; -- Catholic Hierarchy diocese ID
fun P1867_NP : NP ; -- eligible voters
fun P1868_S : S ; -- ballots cast
fun P1869_CN : CN ; -- Hall of Valor ID
fun P1870_VP : VP ; -- Name Assigning Authority Number
fun P1872_CN : CN ; -- minimum number of players
fun P1873_CN : CN ; -- maximum number of players
fun P1875_AP : AP ; -- represented by
fun P1876_CN : CN ; -- vehicle
fun P1877_Adv : Adv ; -- after a work by
fun P1880_CN : CN ; -- measurement scale
fun P1881_CN : CN ; -- list of characters
fun P1882_CN : CN ; -- Web Gallery of Art ID
fun P1884_AP : AP ; -- hair color
fun P1885_AP : AP ; -- cathedral
fun P1887_CN : CN ; -- vice-county
fun P1888_S : S ; -- Dictionary of Medieval Names from European Sources entry
fun P1889_AP : AP ; -- different from
fun P1891_CN : CN ; -- signatory
fun P1894_CN : CN ; -- Danish urban area code
fun P1896_CN : CN ; -- source website for the property
fun P1897_CN : CN ; -- highest note
fun P1898_CN : CN ; -- lowest note
fun P1900_CN : CN ; -- EAGLE id
fun P1906_CN : CN ; -- office held by head of state
fun P1907_CN : CN ; -- Australian Dictionary of Biography ID
fun P1909_CN : CN ; -- side effect
fun P1910_CN : CN ; -- decreased expression in
fun P1911_CN : CN ; -- increased expression in
fun P1912_CN : CN ; -- gene deletion association with
fun P1913_CN : CN ; -- gene duplication association with
fun P1914_CN : CN ; -- gene insertion association with
fun P1915_CN : CN ; -- gene inversion association with
fun P1916_CN : CN ; -- gene substitution association with
fun P1918_NP : NP ; -- altered regulation leads to
fun P1919_CN : CN ; -- Ministry of Education of Chile school ID
fun P1922_CN : CN ; -- first line
fun P1923_CN : CN ; -- participating team
fun P1924_CN : CN ; -- vaccine for
fun P1925_CN : CN ; -- VIOLIN ID
fun P1928_CN : CN ; -- Vaccine Ontology ID
fun P1932_CN : CN ; -- object named as
fun P1935_CN : CN ; -- Database of Classical Scholars ID
fun P1936_CN : CN ; -- Digital Atlas of the Roman Empire ID
fun P1943_CN : CN ; -- location map
fun P1944_CN : CN ; -- relief location map
fun P1945_CN : CN ; -- street key
---fun P1950_ImpSg : ImpSg ; -- second family name in Spanish name
fun P1951_CN : CN ; -- investor
fun P1956_CN : CN ; -- takeoff and landing capability
fun P1959_CN : CN ; -- Dutch Senate person ID
fun P1960_NP : NP ; -- Google Scholar author ID
fun P1963_VPS : VPS ; -- has property
---fun P1968_ImpPol : ImpPol ; -- Foursquare City Guide venue ID
fun P1971_CN : CN ; -- number of children
fun P1972_CN : CN ; -- Open Hub ID
fun P1979_AP : AP ; -- Righteous Among The Nations ID
fun P1982_CN : CN ; -- Anime News Network person ID
fun P1983_CN : CN ; -- Anime News Network company ID
fun P1984_CN : CN ; -- Anime News Network manga ID
fun P1985_CN : CN ; -- Anime News Network anime ID
fun P1986_CN : CN ; -- Biographical Dictionary of Italian People ID
fun P1990_CN : CN ; -- species kept
fun P1995_CN : CN ; -- health specialty
fun P1997_S : S ; -- Facebook Places ID
fun P1999_NP : NP ; -- UNESCO language status
fun P2012_CN : CN ; -- cuisine
fun P2013_NP : NP ; -- Facebook ID
fun P2014_CN : CN ; -- Museum of Modern Art work ID
fun P2017_S : S ; -- isomeric SMILES
fun P2024_CN : CN ; -- German cattle breed ID
fun P2025_VP : VP ; -- Find A Grave cemetery ID
fun P2027_VPS : VPS ; -- Colour Index International constitution ID
fun P2028_NP : NP ; -- United States Armed Forces service number
fun P2029_CN : CN ; -- Dictionary of Ulster Biography ID
fun P2030_NP : NP ; -- NASA biographical ID
fun P2033_CN : CN ; -- category for pictures taken with camera
fun P2036_CN : CN ; -- African Plant Database ID
fun P2041_CN : CN ; -- National Gallery of Victoria artist ID
fun P2043_CN : CN ; -- length
fun P2044_CN : CN ; -- elevation above sea level
fun P2045_CN : CN ; -- orbital inclination
fun P2046_CN : CN ; -- area
fun P2047_CN : CN ; -- duration
fun P2048_CN : CN ; -- height
fun P2049_CN : CN ; -- width
fun P2050_CN : CN ; -- wingspan
fun P2052_VP : VP ; -- speed
fun P2053_CN : CN ; -- watershed area
fun P2054_CN : CN ; -- density
fun P2055_CN : CN ; -- electrical conductivity
fun P2056_CN : CN ; -- specific heat capacity
fun P2058_CN : CN ; -- depositary
fun P2060_CN : CN ; -- luminosity
fun P2063_S : S ; -- LIPID MAPS ID
fun P2064_CN : CN ; -- KNApSAcK ID
fun P2067_VP : VP ; -- mass
fun P2068_CN : CN ; -- thermal conductivity
fun P2069_CN : CN ; -- magnetic moment
fun P2070_CN : CN ; -- Fellow of the Royal Society ID
fun P2073_CN : CN ; -- vehicle range
fun P2075_CN : CN ; -- speed of sound
fun P2076_CN : CN ; -- temperature
fun P2077_Adv : Adv ; -- under pressure
fun P2079_CN : CN ; -- fabrication method
fun P2084_CN : CN ; -- ZINC ID
fun P2090_CN : CN ; -- Power of 10 athlete ID
fun P2093_CN : CN ; -- author name string
fun P2094_CN : CN ; -- competition class
fun P2095_CN : CN ; -- co-driver
fun P2096_CN : CN ; -- media legend
fun P2097_VP : VP ; -- term length of office
fun P2101_CN : CN ; -- melting point
fun P2102_CN : CN ; -- boiling point
fun P2103_CN : CN ; -- size of team at start
fun P2105_CN : CN ; -- size of team at finish
fun P2107_CN : CN ; -- decomposition point
fun P2109_CN : CN ; -- installed capacity
fun P2112_VP : VP ; -- wing area
fun P2113_CN : CN ; -- sublimation temperature
fun P2114_CN : CN ; -- half-life
fun P2119_CN : CN ; -- vapor pressure
fun P2120_CN : CN ; -- radius
fun P2121_CN : CN ; -- prize money
fun P2124_CN : CN ; -- member count
fun P2127_CN : CN ; -- International Nuclear Event Scale
fun P2128_VP : VP ; -- flash point
fun P2129_AP : AP ; -- immediately dangerous to life or health
fun P2130_CN : CN ; -- cost
fun P2133_CN : CN ; -- total debt
fun P2134_S : S ; -- total reserves
fun P2135_S : S ; -- total exports
fun P2136_NP : NP ; -- total imports
fun P2137_CN : CN ; -- total equity
fun P2138_CN : CN ; -- total liabilities
fun P2139_CN : CN ; -- total revenue
fun P2140_NP : NP ; -- foreign direct investment net outflow
fun P2141_NP : NP ; -- foreign direct investment net inflow
fun P2142_CN : CN ; -- box office
fun P2143_AP : AP ; -- genome size
fun P2144_CN : CN ; -- frequency
fun P2145_CN : CN ; -- explosive energy equivalent
fun P2146_CN : CN ; -- orbital period
fun P2147_CN : CN ; -- rotation period
fun P2148_VP : VP ; -- distance from river mouth
fun P2149_VP : VP ; -- clock frequency
fun P2151_CN : CN ; -- focal length
fun P2152_CN : CN ; -- antiparticle
fun P2154_CN : CN ; -- binding energy
fun P2155_CN : CN ; -- solid solution series with
fun P2156_CN : CN ; -- pseudo crystal habit
fun P2158_CN : CN ; -- Cell Line Ontology ID
fun P2159_VPS : VPS ; -- computes solution to
fun P2160_AP : AP ; -- mass excess
fun P2163_CN : CN ; -- FAST ID
fun P2168_CN : CN ; -- Swedish Film Database person ID
fun P2172_CN : CN ; -- Parliamentary record identifier
fun P2173_NP : NP ; -- BBC News Democracy Live ID
fun P2174_CN : CN ; -- Museum of Modern Art artist ID
fun P2175_CN : CN ; -- medical condition treated
fun P2176_CN : CN ; -- drug or therapy used for treatment
fun P2177_CN : CN ; -- solubility
fun P2178_AP : AP ; -- solvent
fun P2181_CN : CN ; -- Finnish MP ID
fun P2182_S : S ; -- Finnish Ministers database ID
fun P2184_CN : CN ; -- history of topic
fun P2186_S : S ; -- Wiki Loves Monuments ID
fun P2196_S : S ; -- students count
fun P2197_CN : CN ; -- production rate
fun P2198_CN : CN ; -- average gradient
fun P2200_CN : CN ; -- electric charge
fun P2201_CN : CN ; -- electric dipole moment
fun P2202_CN : CN ; -- lower flammable limit
fun P2203_CN : CN ; -- upper flammable limit
fun P2204_CN : CN ; -- minimum explosive concentration
fun P2208_CN : CN ; -- average shot length
fun P2210_AP : AP ; -- relative to
fun P2211_VP : VP ; -- position angle
fun P2212_CN : CN ; -- angular distance
fun P2213_CN : CN ; -- longitude of ascending node
fun P2214_CN : CN ; -- parallax
fun P2216_CN : CN ; -- radial velocity
fun P2217_VP : VP ; -- cruise speed
fun P2218_AP : AP ; -- net worth
fun P2220_CN : CN ; -- household wealth
fun P2221_CN : CN ; -- flux
fun P2223_CN : CN ; -- decay width
fun P2225_VP : VP ; -- discharge
fun P2226_VP : VP ; -- market capitalization
fun P2228_CN : CN ; -- maximum thrust
fun P2229_CN : CN ; -- thermal design power
fun P2230_CN : CN ; -- torque
fun P2231_CN : CN ; -- explosive velocity
fun P2232_NP : NP ; -- cash
fun P2234_CN : CN ; -- volume as quantity
fun P2238_CN : CN ; -- official symbol
fun P2239_VP : VP ; -- first aid measures
fun P2241_VP : VP ; -- reason for deprecated rank
fun P2243_CN : CN ; -- apoapsis
fun P2244_CN : CN ; -- periapsis
fun P2248_CN : CN ; -- argument of periapsis
fun P2250_CN : CN ; -- life expectancy
fun P2252_CN : CN ; -- National Gallery of Art artist ID
fun P2254_CN : CN ; -- maximum operating altitude
fun P2257_CN : CN ; -- event interval
fun P2258_CN : CN ; -- mobile country code
fun P2259_CN : CN ; -- mobile network code
fun P2260_CN : CN ; -- ionization energy
fun P2261_VP : VP ; -- beam
fun P2262_CN : CN ; -- draft
fun P2278_CN : CN ; -- Member of the Hellenic Parliament ID
fun P2280_CN : CN ; -- Austrian Parliament ID
fun P2283_NP : NP ; -- uses
fun P2284_NP : NP ; -- price
fun P2285_CN : CN ; -- periapsis date
fun P2286_CN : CN ; -- arterial supply
fun P2288_CN : CN ; -- lymphatic drainage
fun P2289_CN : CN ; -- venous drainage
fun P2290_CN : CN ; -- Danish parish code
fun P2291_VPS : VPS ; -- charted in
fun P2292_CN : CN ; -- consumption rate
fun P2293_CN : CN ; -- genetic association
fun P2294_CN : CN ; -- balance of trade
fun P2295_CN : CN ; -- net profit
fun P2296_CN : CN ; -- money supply
fun P2297_CN : CN ; -- employment by economic sector
fun P2300_CN : CN ; -- minimal lethal dose
fun P2302_CN : CN ; -- property constraint
fun P2303_CN : CN ; -- exception to constraint
fun P2304_VP : VP ; -- group by
fun P2305_CN : CN ; -- item of property constraint
fun P2306_CN : CN ; -- property
fun P2308_CN : CN ; -- class
fun P2309_CN : CN ; -- relation
fun P2312_CN : CN ; -- maximum value
fun P2313_CN : CN ; -- minimum value
fun P2316_CN : CN ; -- constraint status
fun P2317_VP : VP ; -- call sign
fun P2318_VP : VP ; -- debut participant
fun P2319_CN : CN ; -- elector
fun P2320_NP : NP ; -- aftershocks
fun P2321_CN : CN ; -- general classification of race participants
fun P2322_VP : VP ; -- article ID
fun P2323_CN : CN ; -- Swedish Olympic Committee athlete ID
fun P2324_CN : CN ; -- quantity buried
fun P2325_CN : CN ; -- mean anomaly
fun P2329_CN : CN ; -- antagonist muscle
fun P2330_S : S ; -- Cycling Archives race ID
fun P2331_CN : CN ; -- Cycling Archives team ID
fun P2332_CN : CN ; -- Dictionary of Art Historians ID
fun P2333_CN : CN ; -- Norwegian organisation number
fun P2334_CN : CN ; -- Swedish Film Database film ID
fun P2335_CN : CN ; -- Swedish Film Database company ID
fun P2336_CN : CN ; -- Swedish Film Database soundtrack ID
fun P2337_CN : CN ; -- Swedish Film Database group ID
fun P2341_AP : AP ; -- indigenous to
fun P2343_CN : CN ; -- playing range image
fun P2348_VP : VP ; -- time period
fun P2349_NP : NP ; -- Stuttgart Database of Scientific Illustrators ID
fun P2351_CN : CN ; -- number of graves
fun P2353_CN : CN ; -- statistical unit
fun P2354_VPS : VPS ; -- has list
fun P2355_NP : NP ; -- UNESCO Atlas of the World's Languages in Danger ID
fun P2357_CN : CN ; -- Classification of Instructional Programs code
fun P2358_CN : CN ; -- Roman praenomen
fun P2360_CN : CN ; -- intended public
fun P2361_AP : AP ; -- online service
fun P2362_CN : CN ; -- time to altitude
fun P2364_CN : CN ; -- production code
fun P2365_CN : CN ; -- Roman cognomen
fun P2366_CN : CN ; -- Roman agnomen
fun P2368_CN : CN ; -- Sandbox-Property
fun P2370_CN : CN ; -- conversion to SI unit
fun P2371_CN : CN ; -- FAO risk status
fun P2373_CN : CN ; -- Genius artist ID
fun P2374_CN : CN ; -- natural abundance
fun P2378_AP : AP ; -- issued by
fun P2379_AP : AP ; -- deprecated in version
fun P2380_CN : CN ; -- French Sculpture Census artist ID
fun P2381_CN : CN ; -- Academic Tree ID
fun P2384_S : S ; -- statement describes
fun P2385_CN : CN ; -- French diocesan architects ID
fun P2386_CN : CN ; -- diameter
fun P2388_CN : CN ; -- office held by head of the organization
fun P2389_CN : CN ; -- organization directed by the office or position
fun P2392_CN : CN ; -- teaching method
fun P2396_CN : CN ; -- image of function
fun P2399_CN : CN ; -- British Council artist ID
fun P2401_Card : Card ; -- Six Degrees of Francis Bacon ID
fun P2402_CN : CN ; -- total expenditure
fun P2403_CN : CN ; -- total assets
fun P2405_CN : CN ; -- ceiling exposure limit
fun P2406_CN : CN ; -- maximum peak exposure limit
fun P2407_CN : CN ; -- short-term exposure limit
fun P2408_CN : CN ; -- set in period
fun P2414_CN : CN ; -- substrate of
fun P2415_AP : AP ; -- personal best
fun P2416_S : S ; -- sports discipline competed in
fun P2417_VP : VP ; -- stage classification
fun P2423_CN : CN ; -- International Fencing Federation fencer ID
fun P2424_CN : CN ; -- Berlin cultural heritage ID
fun P2425_VP : VP ; -- service ribbon image
fun P2427_CN : CN ; -- GRID ID
fun P2429_CN : CN ; -- expected completeness
fun P2430_CN : CN ; -- takeoff roll
fun P2433_CN : CN ; -- gender of a scientific name of a genus
fun P2435_CN : CN ; -- PORT person ID
fun P2436_CN : CN ; -- voltage
fun P2437_CN : CN ; -- number of seasons
fun P2438_CN : CN ; -- narrator
fun P2440_CN : CN ; -- transliteration
fun P2441_CN : CN ; -- literal translation
fun P2442_CN : CN ; -- conversion to standard unit
fun P2443_VP : VP ; -- stage reached
fun P2448_CN : CN ; -- Turkish Football Federation player ID
fun P2449_CN : CN ; -- Turkish Football Federation coach  ID
fun P2453_CN : CN ; -- nominee
fun P2455_CN : CN ; -- Species Profile and Threats Database ID
fun P2457_CN : CN ; -- Australian National Shipwreck ID
fun P2460_NP : NP ; -- Persons of Ancient Athens
fun P2478_NP : NP ; -- Railways Archive event ID
fun P2481_NP : NP ; -- Elite Prospects player ID
fun P2494_CN : CN ; -- Latvian cultural heritage register ID
fun P2497_CN : CN ; -- Latvian National Address Register ID
fun P2498_CN : CN ; -- Catalan Biographical Dictionary of Women ID
fun P2499_AP : AP ; -- league level above
fun P2500_AP : AP ; -- league level below
fun P2501_NP : NP ; -- results
fun P2502_CN : CN ; -- classification of race
fun P2504_CN : CN ; -- Norwegian municipality number
fun P2505_VPS : VPS ; -- carries
fun P2509_CN : CN ; -- Movie Walker Press film ID
fun P2512_CN : CN ; -- series spin-off
fun P2515_CN : CN ; -- costume designer
fun P2517_CN : CN ; -- category for recipients of this award
fun P2521_CN : CN ; -- female form of label
fun P2522_CN : CN ; -- victory
fun P2524_VP : VP ; -- SEED number
fun P2526_NP : NP ; -- National Historic Sites of Canada ID
fun P2527_CN : CN ; -- earthquake magnitude on the moment magnitude scale
fun P2531_CN : CN ; -- Box Office Mojo studio ID
fun P2532_CN : CN ; -- lowest atmospheric pressure
fun P2534_CN : CN ; -- defining formula
fun P2535_CN : CN ; -- Sandbox-Mathematical expression
fun P2536_CN : CN ; -- Sandbox-External identifier
fun P2537_CN : CN ; -- Free Software Directory entry
fun P2541_CN : CN ; -- operating area
fun P2542_NP : NP ; -- acceptable daily intake
fun P2545_CN : CN ; -- bowling style
fun P2546_CN : CN ; -- sidekick of
fun P2547_CN : CN ; -- perimeter
fun P2548_VP : VP ; -- strand orientation
fun P2549_CN : CN ; -- Italian Senate of the Republic ID
fun P2550_CN : CN ; -- recording or performance of
fun P2551_CN : CN ; -- used metre
fun P2552_CN : CN ; -- quantitative metrical pattern
fun P2553_Adv : Adv ; -- in work
fun P2554_CN : CN ; -- production designer
fun P2555_CN : CN ; -- fee
fun P2556_CN : CN ; -- bore
fun P2557_CN : CN ; -- stroke
fun P2561_CN : CN ; -- name
fun P2562_CN : CN ; -- married name
fun P2563_CN : CN ; -- superhuman feature or ability
fun P2565_CN : CN ; -- global warming potential
fun P2567_AP : AP ; -- amended by
fun P2568_AP : AP ; -- repealed by
fun P2571_S : S ; -- uncertainty corresponds to
fun P2575_NP : NP ; -- measures
fun P2577_CN : CN ; -- admissible rule in
fun P2578_QS : QS ; -- is the study of
fun P2579_AP : AP ; -- studied by
fun P2583_CN : CN ; -- distance from Earth
fun P2584_NP : NP ; -- Australian Wetlands Code
fun P2587_VPS : VPS ; -- has phoneme
fun P2588_CN : CN ; -- administrative code of Indonesia
fun P2589_CN : CN ; -- Statistics Indonesia ethnicity code
fun P2590_CN : CN ; -- Statistics Indonesia language code
fun P2591_NP : NP ; -- grammatical option indicates
fun P2595_CN : CN ; -- maximum gradient
fun P2596_CN : CN ; -- culture
fun P2597_CN : CN ; -- Gram staining
fun P2598_CN : CN ; -- serial number
fun P2599_AP : AP ; -- block size
fun P2610_CN : CN ; -- thickness
fun P2611_CN : CN ; -- TED speaker ID
fun P2612_CN : CN ; -- TED topic ID
fun P2613_CN : CN ; -- TED talk ID
fun P2614_CN : CN ; -- World Heritage criteria
fun P2618_VP : VP ; -- inHerit Place Number
fun P2619_CN : CN ; -- Hungarian company ID
fun P2622_S : S ; -- Companies House company ID
fun P2626_CN : CN ; -- Danish National Filmography person ID
fun P2628_CN : CN ; -- German tax authority ID
fun P2630_CN : CN ; -- cost of damage
fun P2632_CN : CN ; -- place of detention
fun P2633_CN : CN ; -- geography of topic
fun P2634_VP : VP ; -- model
fun P2635_CN : CN ; -- number of parts of this work
fun P2645_CN : CN ; -- mean lifetime
fun P2647_CN : CN ; -- source of material
fun P2650_VPS : VPS ; -- interested in
fun P2652_CN : CN ; -- partnership with
fun P2659_CN : CN ; -- topographic isolation
fun P2660_CN : CN ; -- topographic prominence
fun P2661_VP : VP ; -- target interest rate
fun P2664_S : S ; -- units sold
fun P2665_CN : CN ; -- alcohol by volume
fun P2667_CN : CN ; -- corresponding template
fun P2668_CN : CN ; -- stability of property value
fun P2669_CN : CN ; -- discontinued date
fun P2671_NP : NP ; -- Google Knowledge Graph ID
fun P2673_AP : AP ; -- next crossing upstream
fun P2674_AP : AP ; -- next crossing downstream
fun P2675_VP : VP ; -- reply to
fun P2676_CN : CN ; -- rating certificate ID
fun P2677_CN : CN ; -- relative position within image
fun P2679_CN : CN ; -- author of foreword
fun P2681_QS : QS ; -- is recto of
fun P2682_QS : QS ; -- is verso of
fun P2688_CN : CN ; -- Box Office Mojo person ID
fun P2696_CN : CN ; -- FIG gymnast licence number
fun P2700_CN : CN ; -- protocol
fun P2701_VP : VP ; -- file format
fun P2705_S : S ; -- Karate Records ID
fun P2710_CN : CN ; -- minimal lethal concentration
fun P2713_CN : CN ; -- sectional view
fun P2715_AP : AP ; -- elected in
fun P2716_CN : CN ; -- collage image
fun P2719_CN : CN ; -- Hungarian-style transcription
fun P2727_CN : CN ; -- International Wrestling Database ID
fun P2736_CN : CN ; -- Biographical Directory of Federal Judges ID
fun P2737_CN : CN ; -- union of
fun P2738_CN : CN ; -- disjoint union of
fun P2742_NP : NP ; -- Australian Geological Provinces ID
fun P2743_NP : NP ; -- this zoological name is coordinate with
fun P2745_CN : CN ; -- Dictionary of New Zealand Biography ID
fun P2746_CN : CN ; -- production statistics
fun P2750_S : S ; -- Photographers' Identities Catalog ID
fun P2751_CN : CN ; -- Roller Coaster Database ID
fun P2752_S : S ; -- New Zealand Organisms Register ID
fun P2753_CN : CN ; -- Dictionary of Canadian Biography ID
fun P2754_CN : CN ; -- production date
fun P2755_CN : CN ; -- exploitation visa number
fun P2761_S : S ; -- Research Papers in Economics Series handle
fun P2763_CN : CN ; -- Danish protected area ID
fun P2769_CN : CN ; -- budget
fun P2770_CN : CN ; -- source of income
fun P2781_VP : VP ; -- race time
fun P2783_CN : CN ; -- Danish listed buildings case ID
fun P2786_CN : CN ; -- aerodrome reference point
fun P2787_CN : CN ; -- longest span
fun P2788_CN : CN ; -- Czech neighbourhood ID code
fun P2789_VPS : VPS ; -- connects with
fun P2790_CN : CN ; -- net tonnage
fun P2791_VP : VP ; -- power consumed
fun P2793_CN : CN ; -- clearance
fun P2795_NP : NP ; -- directions
fun P2797_VP : VP ; -- sound power level
fun P2798_VP : VP ; -- Loop ID
fun P2800_VP : VP ; -- Beach Volleyball Database ID
fun P2802_CN : CN ; -- fleet or registration number
fun P2806_CN : CN ; -- vibration
fun P2807_CN : CN ; -- molar volume
fun P2808_CN : CN ; -- wavelength
fun P2813_VP : VP ; -- house publication
fun P2817_VPS : VPS ; -- appears in the heritage monument list
fun P2820_CN : CN ; -- cardinality of this set
fun P2821_CN : CN ; -- by-product
fun P2822_CN : CN ; -- by-product of
fun P2823_CN : CN ; -- Royal Belgian Football Association player ID
fun P2824_CN : CN ; -- Gazetteer of Planetary Nomenclature ID
fun P2825_Adv : Adv ; -- via
fun P2827_AP : AP ; -- flower color
fun P2828_CN : CN ; -- corporate officer
fun P2829_CN : CN ; -- Internet Wrestling Database ID
fun P2830_CN : CN ; -- Online World of Wrestling ID
fun P2831_CN : CN ; -- totem
fun P2832_CN : CN ; -- Joint Electronics Type Designation Automated System designation
fun P2834_CN : CN ; -- individual tax rate
fun P2835_CN : CN ; -- lowest income threshold
fun P2836_CN : CN ; -- highest income threshold
fun P2839_CN : CN ; -- gait
fun P2841_CN : CN ; -- age of onset
fun P2842_CN : CN ; -- place of marriage
fun P2844_CN : CN ; -- incidence
fun P2845_VPS : VPS ; -- RAN ID
fun P2846_CN : CN ; -- wheelchair accessibility
fun P2849_AP : AP ; -- produced by
fun P2851_S : S ; -- payment types accepted
fun P2852_CN : CN ; -- emergency phone number
fun P2853_CN : CN ; -- electrical plug type
fun P2854_CN : CN ; -- disease burden
fun P2855_CN : CN ; -- VAT rate
fun P2858_CN : CN ; -- Killer List of Videogames ID
fun P2860_VPS : VPS ; -- cites work
fun P2865_VP : VP ; -- band number
fun P2868_S : S ; -- subject has role
fun P2869_VPS : VPS ; -- record or record progression
fun P2872_CN : CN ; -- visitor centre
fun P2873_CN : CN ; -- time in space
fun P2875_CN : CN ; -- property usage tracking category
fun P2876_CN : CN ; -- type of unit for this property
fun P2879_CN : CN ; -- Library of the National Congress of Argentina ID
fun P2881_AP : AP ; -- promoted
fun P2882_AP : AP ; -- relegated
fun P2884_CN : CN ; -- mains voltage
fun P2888_CN : CN ; -- exact match
fun P2894_CN : CN ; -- day of week
fun P2895_S : S ; -- maximum sustained winds
fun P2896_CN : CN ; -- publication interval
fun P2898_CN : CN ; -- Swedish county letter
fun P2899_CN : CN ; -- minimum age
fun P2900_CN : CN ; -- fax number
fun P2904_CN : CN ; -- Beer Advocate brewery ID
fun P2910_CN : CN ; -- icon
fun P2911_VP : VP ; -- time gap
fun P2912_AP : AP ; -- distinctive jersey
fun P2913_VP : VP ; -- date depicted
fun P2916_CN : CN ; -- syntax clarification
---fun P2918_ImpSg : ImpSg ; -- PO Box
fun P2919_VP : VP ; -- label in sign language
fun P2922_CN : CN ; -- month of the year
fun P2923_CN : CN ; -- focal height
fun P2924_CN : CN ; -- Great Russian Encyclopedia Online ID
fun P2925_CN : CN ; -- domain of saint or deity
fun P2927_VP : VP ; -- water as percent of area
fun P2928_CN : CN ; -- memory capacity
fun P2929_CN : CN ; -- lighthouse range
fun P2931_S : S ; -- Encyclopedia of Triangle Centers identifier
fun P2935_CN : CN ; -- connector
fun P2936_AP : AP ; -- language used
fun P2937_CN : CN ; -- parliamentary term
fun P2945_CN : CN ; -- British Book Trade Index ID
fun P2948_CN : CN ; -- Estonian cultural monument ID
fun P2952_CN : CN ; -- Boat of Heritage Interest ID
fun P2953_CN : CN ; -- Estonian Research Portal person ID
fun P2954_CN : CN ; -- Transferred Account Data Interchange Group Code
fun P2955_CN : CN ; -- point of penalty
fun P2956_CN : CN ; -- NAIF ID
fun P2957_CN : CN ; -- throughput
fun P2959_S : S ; -- permanent duplicated item
fun P2960_CN : CN ; -- archive date
fun P2962_CN : CN ; -- title of chess person
fun P2964_AP : AP ; -- right to vote
fun P2966_CN : CN ; -- National Library of Wales Authority ID
fun P2967_NP : NP ; -- Queensland Heritage Register ID
fun P2972_VP : VP ; -- SNAP ID
fun P2974_CN : CN ; -- habitat
fun P2975_CN : CN ; -- host
fun P2978_VP : VP ; -- wheel arrangement
fun P2979_NP : NP ; -- maritime identification digits
fun P2986_CN : CN ; -- aircraft registration prefix
fun P2989_VPS : VPS ; -- has grammatical case
fun P2992_CN : CN ; -- software quality assurance
fun P2997_CN : CN ; -- age of majority
fun P2998_CN : CN ; -- age of candidacy
fun P2999_CN : CN ; -- age of consent
fun P3000_CN : CN ; -- marriageable age
fun P3001_CN : CN ; -- retirement age
fun P3005_AP : AP ; -- valid in place
fun P3006_NP : NP ; -- Marine Regions Geographic ID
fun P3008_CN : CN ; -- Australian Heritage Database Place ID
fun P3010_CN : CN ; -- World Archery Federation ID
fun P3012_CN : CN ; -- Statistics Canada Geographic code
fun P3013_CN : CN ; -- surface tension
fun P3014_S : S ; -- laws applied
fun P3015_CN : CN ; -- backup or reserve team or crew
fun P3016_CN : CN ; -- French national research structure identifier
fun P3017_CN : CN ; -- Rolling Stone artist ID
fun P3018_CN : CN ; -- located in protected area
fun P3019_CN : CN ; -- railway signalling system
fun P3020_CN : CN ; -- residence time of water
fun P3022_VP : VP ; -- flag bearer
fun P3023_NP : NP ; -- Legacies of British Slave-ownership person ID
fun P3025_CN : CN ; -- open days
fun P3026_AP : AP ; -- closed on
fun P3027_VP : VP ; -- open period from
fun P3028_VP : VP ; -- open period to
fun P3029_NP : NP ; -- UK National Archives ID
fun P3030_CN : CN ; -- sheet music
fun P3032_CN : CN ; -- adjacent building
fun P3033_VP : VP ; -- package management system
fun P3034_CN : CN ; -- Indonesian ethnicity code
fun P3036_CN : CN ; -- precipitation height
fun P3037_CN : CN ; -- spatial reference system
fun P3039_CN : CN ; -- wheelbase
fun P3041_CN : CN ; -- luminous intensity
fun P3048_CN : CN ; -- Racing-Reference driver ID
fun P3049_CN : CN ; -- Scottish Football Association player ID
fun P3051_CN : CN ; -- Kindred Britain ID
fun P3063_CN : CN ; -- gestation period
fun P3066_CN : CN ; -- GLAM Identifier
fun P3069_CN : CN ; -- UN document symbol
fun P3070_CN : CN ; -- dynamic viscosity
fun P3071_CN : CN ; -- standard molar entropy
fun P3074_NP : NP ; -- Grace's Guide ID
fun P3075_CN : CN ; -- official religion
fun P3076_NP : NP ; -- Open Beauty Facts category ID
fun P3080_CN : CN ; -- game artist
fun P3081_AP : AP ; -- damaged
fun P3082_AP : AP ; -- destroyed
fun P3085_VPS : VPS ; -- qualifies for event
fun P3086_CN : CN ; -- speed limit
fun P3088_CN : CN ; -- Catalogue of Life in Taiwan ID
fun P3089_VPS : VPS ; -- Flags of the World ID
fun P3090_VP : VP ; -- flight number
fun P3091_VP : VP ; -- mount
fun P3092_VP : VP ; -- film crew member
fun P3093_AP : AP ; -- recovered by
fun P3094_VPS : VPS ; -- develops from
fun P3095_AP : AP ; -- practiced by
fun P3099_CN : CN ; -- Internet Bird Collection species ID
fun P3103_VPS : VPS ; -- has tense
fun P3106_CN : CN ; -- Guardian topic ID
fun P3108_CN : CN ; -- Yelp ID
fun P3113_VPS : VPS ; -- does not have part
fun P3119_VP : VP ; -- Code for China Reservoir Name
fun P3123_NP : NP ; -- Stanford Encyclopedia of Philosophy ID
fun P3124_CN : CN ; -- Polish scientist ID
fun P3132_CN : CN ; -- last line
fun P3137_CN : CN ; -- parent peak
fun P3147_S : S ; -- United States Reports ID
fun P3148_NP : NP ; -- repeals
fun P3149_CN : CN ; -- molecule conformation
fun P3150_CN : CN ; -- birthday
fun P3156_CN : CN ; -- Australian Classification
fun P3157_CN : CN ; -- event distance
fun P3158_CN : CN ; -- enclosure
fun P3160_NP : NP ; -- Minnesota legislator ID
fun P3161_VPS : VPS ; -- has grammatical mood
fun P3162_CN : CN ; -- Rock and Roll Hall of Fame ID
fun P3163_CN : CN ; -- Scottish Charity number
fun P3170_CN : CN ; -- Cultural Heritage Armenia ID
fun P3172_CN : CN ; -- World Bridge Federation ID
fun P3173_VPS : VPS ; -- offers view on
fun P3174_CN : CN ; -- art director
fun P3176_VPS : VPS ; -- uses property
fun P3178_NP : NP ; -- Zaragoza monument ID
fun P3179_S : S ; -- territory overlaps
fun P3180_CN : CN ; -- Visual Novel Database ID
fun P3183_NP : NP ; -- Wall Street Journal topic ID
fun P3184_CN : CN ; -- Czech National Bibliography ID
fun P3195_S : S ; -- league points system
fun P3200_NP : NP ; -- Northern Ireland charity number
fun P3201_CN : CN ; -- Medical Dictionary for Regulatory Activities ID
fun P3205_CN : CN ; -- patient of
fun P3207_CN : CN ; -- Vine user ID
fun P3208_CN : CN ; -- New General Catalogue ID
fun P3209_CN : CN ; -- Heritage Railway Station of Canada ID
fun P3211_CN : CN ; -- Heritage Lighthouse of Canada ID
fun P3217_CN : CN ; -- Dictionary of Swedish National Biography ID
fun P3221_NP : NP ; -- New York Times topic ID
fun P3223_CN : CN ; -- Online List of Lights ID
fun P3226_VPS : VPS ; -- HAS member ID
fun P3229_CN : CN ; -- South Dakota legislator ID
fun P3230_CN : CN ; -- SCAR Composite Gazetteer place ID
fun P3234_VP : VP ; -- Code List for Cultural Heritage Organizations
fun P3238_CN : CN ; -- trunk prefix
fun P3241_CN : CN ; -- Catholic Encyclopedia ID
---fun P3242_ImpSg : ImpSg ; -- SIC code
fun P3251_CN : CN ; -- minimum viable temperature
fun P3252_CN : CN ; -- maximum viable temperature
fun P3253_CN : CN ; -- optimum viable temperature
fun P3254_CN : CN ; -- property proposal discussion
---fun P3257_ImpPl : ImpPl ; -- Queensland place ID
fun P3259_CN : CN ; -- intangible cultural heritage status
fun P3260_VPS : VPS ; -- points awarded
fun P3261_CN : CN ; -- anatomical branch of
fun P3262_VPS : VPS ; -- has anatomical branch
fun P3263_VP : VP ; -- base
fun P3265_CN : CN ; -- Myspace ID
fun P3266_CN : CN ; -- Library of Congress Format Description Document ID
fun P3274_CN : CN ; -- content deliverer
fun P3276_CN : CN ; -- Angel List ID
fun P3279_CN : CN ; -- statistical leader
fun P3281_CN : CN ; -- French National Assembly Lobbyist ID
fun P3285_CN : CN ; -- Mathematics Subject Classification ID
fun P3286_VP : VP ; -- Squash Info player ID
fun P3288_CN : CN ; -- World Spider Catalog ID
fun P3294_CN : CN ; -- encoding
fun P3295_CN : CN ; -- code
fun P3297_CN : CN ; -- Flemish Parliament person ID
fun P3298_CN : CN ; -- Belgian Senate person ID
fun P3300_CN : CN ; -- musical conductor
fun P3301_Adv : Adv ; -- broadcast by
---fun P3302_ImpPl : ImpPl ; -- Open Media Database film ID
fun P3310_VP : VP ; -- muscle action
fun P3311_S : S ; -- image of design plans
fun P3320_VP : VP ; -- board member
fun P3321_CN : CN ; -- male form of label
fun P3323_AP : AP ; -- opponent during disputation
fun P3326_CN : CN ; -- World Waterfall Database ID
fun P3329_CN : CN ; -- CIViC variant ID
fun P3335_CN : CN ; -- associated hazard
fun P3337_CN : CN ; -- generation time
fun P3338_CN : CN ; -- Encyclopedia of Surfing ID
fun P3339_CN : CN ; -- World Surf League ID
fun P3342_CN : CN ; -- significant person
fun P3344_AP : AP ; -- Vote Smart ID
fun P3348_CN : CN ; -- National Library of Greece ID
fun P3349_AP : AP ; -- designed to carry
fun P3351_CN : CN ; -- Adult Film Database actor ID
fun P3353_S : S ; -- National Recreation Trails Database ID
fun P3354_CN : CN ; -- positive therapeutic predictor for
fun P3355_CN : CN ; -- negative therapeutic predictor for
fun P3356_CN : CN ; -- positive diagnostic predictor for
fun P3357_CN : CN ; -- negative diagnostic predictor for
fun P3358_CN : CN ; -- positive prognostic predictor for
fun P3359_CN : CN ; -- negative prognostic predictor for
---fun P3360_ImpPl : ImpPl ; -- Nobel Prize People Nomination ID
fun P3362_CN : CN ; -- operating income
fun P3363_CN : CN ; -- Tennis Hall of Fame player ID
fun P3372_NP : NP ; -- Auckland Art Gallery artist ID
fun P3373_CN : CN ; -- sibling
fun P3379_AP : AP ; -- Model Manual ID
fun P3381_VP : VP ; -- File Format Wiki page ID
fun P3383_VP : VP ; -- film poster
fun P3385_VP : VP ; -- Japan Sumo Association ID
fun P3386_CN : CN ; -- French Sculpture Census work ID
fun P3387_CN : CN ; -- minimum frequency of audible sound
fun P3389_CN : CN ; -- Royal Swedish Academy of Letters member ID
fun P3394_CN : CN ; -- Finnish Lake ID
fun P3395_CN : CN ; -- heart rate
fun P3396_CN : CN ; -- French Catholic Church structure ID
fun P3397_CN : CN ; -- Guide of the French Church person ID
fun P3398_NP : NP ; -- Butterflies and Moths of North America ID
---fun P3401_ImpPol : ImpPol ; -- Wilderness Connect ID
fun P3403_AP : AP ; -- coextensive with
fun P3404_NP : NP ; -- The Vogue List ID
fun P3410_CN : CN ; -- Clergy of the Church of England database ID
fun P3411_CN : CN ; -- Saxon Academy of Sciences member ID
fun P3415_VP : VP ; -- start period
fun P3416_VP : VP ; -- end period
fun P3421_CN : CN ; -- Belvedere artist ID
fun P3424_CN : CN ; -- Polish cultural heritage register number
fun P3429_CN : CN ; -- Electronic Enlightenment ID
fun P3432_CN : CN ; -- parent cell line
fun P3433_CN : CN ; -- biological variant of
fun P3437_CN : CN ; -- people or cargo transported
fun P3438_CN : CN ; -- vehicle normally used
fun P3439_CN : CN ; -- angular resolution
fun P3440_VP : VP ; -- time signature
fun P3443_CN : CN ; -- Victorian Heritage Database ID
fun P3445_CN : CN ; -- Cinema of Israel ID
fun P3446_CN : CN ; -- Italian Athletics Federation athlete ID
fun P3447_VPS : VPS ; -- mirrors data from
fun P3448_CN : CN ; -- stepparent
fun P3450_VPS : VPS ; -- sports season of league or competition
fun P3451_CN : CN ; -- nighttime view
fun P3452_AP : AP ; -- inferred from
fun P3457_VP : VP ; -- case fatality rate
fun P3460_AP : AP ; -- colonel-in-chief
fun P3461_CN : CN ; -- designated as terrorist by
fun P3463_CN : CN ; -- Fedora package
fun P3464_VP : VP ; -- medicine marketing authorization
fun P3465_CN : CN ; -- maximum frequency of audible sound
fun P3468_NP : NP ; -- National Inventors Hall of Fame ID
fun P3470_CN : CN ; -- Woodland Trust wood ID
fun P3481_S : S ; -- Parks & Gardens UK record ID
fun P3485_VP : VP ; -- bite force quotient
fun P3486_CN : CN ; -- normal respiratory rate
fun P3487_CN : CN ; -- maximal incubation period in humans
fun P3488_CN : CN ; -- minimal incubation period in humans
fun P3489_CN : CN ; -- pregnancy category
fun P3490_VP : VP ; -- muscle origin
fun P3491_VP : VP ; -- muscle insertion
fun P3492_CN : CN ; -- basic reproduction number
fun P3494_VPS : VPS ; -- points classification
fun P3496_NP : NP ; -- teams classification by points
fun P3497_NP : NP ; -- teams classification by time
fun P3501_CN : CN ; -- Christian liturgical rite
fun P3512_CN : CN ; -- means of locomotion
fun P3516_CN : CN ; -- National Park Foundation ID
fun P3521_CN : CN ; -- European Tour golf player ID
fun P3524_CN : CN ; -- Simple Modular Architecture Research Tool ID
fun P3529_CN : CN ; -- median income
fun P3530_CN : CN ; -- par
fun P3534_S : S ; -- Australian Government Organisations Register ID
fun P3535_VP : VP ; -- Japan Golf Tour player ID
fun P3548_CN : CN ; -- Australian Business Number
fun P3549_CN : CN ; -- Australian Company Number
fun P3550_CN : CN ; -- Australian Register of Therapeutic Goods ID
fun P3551_CN : CN ; -- Australian Registered Body Number
fun P3552_CN : CN ; -- Australian Registered Scheme Number
fun P3554_CN : CN ; -- World Series of Poker ID
fun P3555_CN : CN ; -- World Guide to Covered Bridges ID
fun P3557_CN : CN ; -- World Curling Federation ID
fun P3559_CN : CN ; -- maximum size or capacity
fun P3560_CN : CN ; -- College Football Data Warehouse ID
fun P3562_CN : CN ; -- Admiralty number
fun P3564_CN : CN ; -- Global Poker Index ID
fun P3568_CN : CN ; -- Official World Golf Ranking player ID
fun P3570_CN : CN ; -- European Case Law ID
fun P3573_CN : CN ; -- European Handball Federation player ID
fun P3575_AP : AP ; -- data size
fun P3578_CN : CN ; -- autologous cell line
fun P3582_CN : CN ; -- Sunshine Tour golf player ID
fun P3587_NP : NP ; -- Common Vulnerabilities and Exposures ID
fun P3590_NP : NP ; -- Relations Ontology ID
fun P3596_CN : CN ; -- Danish ancient monument ID
fun P3600_CN : CN ; -- protected heritage site in Brussels ID
fun P3602_CN : CN ; -- candidacy in election
fun P3603_NP : NP ; -- Minneapolis Institute of Art constituent ID
fun P3610_CN : CN ; -- fare zone
fun P3615_CN : CN ; -- Vision of Britain unit ID
fun P3616_CN : CN ; -- Vision of Britain place ID
fun P3618_CN : CN ; -- base salary
}