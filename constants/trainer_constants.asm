trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer groups
	enum_start
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_OAK
	const PHONECONTACT_BILL

	trainerclass RED ; 1
	; TODO: Add unchosen player as second rival

	trainerclass LEAF ; 2
	; TODO: Add unchosen player as second rival

	trainerclass PROF_OAK ; 3
	; TODO: Add Oak battle
	
	trainerclass YOUNGSTER
	const BEN
	const CALVIN
	const JOSH
	const TIMMY
	const JOEL
	const DAN
	const IAN
	const TYLER
	const EDDIE
	const DILLON
	const YASU
	const DAVE
	
	trainerclass BUG_CATCHER
	const RICK
	const DOUG
	const TAJIRI
	const SAMMY
	const COLTON
	const GREG
	const JAMES
	const KENT
	const ROBBY
	const CALE
	const KEIGO
	const ELIJAH
	const BRENT
	const CONNER
	
	trainerclass LASS
	const SARAH
	const JANICE
	const SALLY
	const ROBIN
	const CRISSY
	const MIRIAM
	const IRIS
	const RELI
	const ALI
	const KELSEY
	const HALEY
	const ANN
	const DAWN
	const PAIGE
	const ANDREA
	const MEGAN
	const JULIA
	const KAY
	const LISA
	
	trainerclass SAILOR
	const EDMOND
	const TREVOR
	const LEONARD
	const DUNCAN
	const HUEY
	const DYLAN
	const PHILLIP
	const DWAYNE
	
	trainerclass CAMPER
	const LIAM
	const SHANE
	const ETHAN
	const FLINT
	const RICKY
	const JEFF
	const CHRIS
	const DREW
	const JUSTIN
	
	trainerclass PICNICKER
	const NANCY
	const ISABELLE
	const ALICIA
	const CAITLIN
	const HEIDI
	const CAROL
	const TINA
	const SUSIE
	const VALERIE
	const GWEN
	const ALMA
	const MISSY
	const IRENE
	const LEAH
	const DANA
	const ARIANA
	const SOFIA
	const MARTHA
	const KINDRA
	const BECKY
	const CELIA
	const YASMIN
	
	trainerclass POKEMANIAC
	const MARK
	const HERMAN
	const ASHTON
	const SCOTT
	const WINSTON
	const DAWSON
	
	trainerclass SUPER_NERD
	const JOVAN
	const MIGUEL
	const AIDAN
	const GLENN
	const LESLIE
	const ERIK
	const AVERY
	const DEREK
	const ZAC
	
	trainerclass HIKER
	const MARCOS
	const FRANKLIN
	const NOB
	const WAYNE
	const ALAN
	const BRICE
	const JEREMY
	const CLARK
	const TRENT
	const DUDLEY
	const ALLEN
	const ERIC
	const LENNY
	const OLIVER
	const LUCAS
	
	trainerclass BIKER
	const JARED
	const MALIK
	const LUKAS
	const ISAAC
	const GERALD
	const ERNEST
	const ALEX
	const LAO
	const HIDEO
	const RUBEN
	const VIRGIL
	const BILLY
	const NIKOLAS
	const JAXON
	const WILLIAM
	
	trainerclass BURGLAR
	const QUINN
	const RAMON
	const DUSTY
	const ARNIE
	const SIMON
	const LEWIS
	
	trainerclass ENGINEER
	const BRAXTON
	const BERNIE
	
	trainerclass COUPLE
	const MIKE_AND_NAT
	
	trainerclass FISHER
	const DALE
	const BARNY
	const NED
	const CHIP
	const HANK
	const ELLIOT
	const ANDREW
	const RONALD
	const CLAUDE
	const WADE
	const JIMMY
	
	trainerclass SWIMMER
	const LUIS
	const RICHARD
	const REECE
	const MATTHEW
	const DOUGLAS
	const DAVID
	const TONY
	const AXLE
	const BARRY
	const DEAN
	const DARRIN
	const SPENCER
	const JACK
	const JEROME
	const ROLAND
	const JOSIAH
	
	trainerclass CUE_BALL
	const KOJI
	const LUKE
	const CHAD
	const RAUL
	const ISAIAH
	const ZEEK
	const JAMAL
	const COREY
	
	trainerclass GAMBLER
	const HUGO
	const JASPER
	const DIRK
	const DARIAN
	const STAN
	const RICH
	
	trainerclass BEAUTY
	const TAMIA
	const BRIDGET
	const LORI
	const LOLA
	const SHEILA
	const GRACE
	const OLIVIA
	
	trainerclass PSYCHIC_TR
	const JOHAN
	const TYRON
	const CAMERON
	const PRESTON
	
	trainerclass ROCKER
	const C_C
	
	trainerclass JUGGLER
	const NATE
	const KIRK
	const KAYDEN
	const SHAWN
	const DALTON
	const NELSON
	const GREGORY
	
	trainerclass TAMER
	const PHIL
	const EDGAR
	const EVAN
	const COLE
	const VINCENT
	
	trainerclass BIRD_KEEPER
	const JASON
	const PERRY
	const ROBERT
	const DONALD
	const BENNY
	const CARTER
	const MITCH
	const BECK
	const MARLON
	const EDWIN
	const CHET
	const WILTON
	const RAMIRO
	const JACOB
	const ROGER
	
	trainerclass BLACKBELT_T
	const KIYO
	const MIKE
	const HIDEKI
	const AARON
	const HITOSHI
	const ATSUSHI
	const KENJI
	const TAKASHI
	const DAISUKE
	
	trainerclass SONY1
	
	trainerclass SWIMMER_F
	const COLBY
	const ANYA
	const ALICE
	const CONNIE
	const SHIRLEY
	const DEBRA
	const MELISSA
	const TIFFANY
	const NORA
	const MINA
	
	trainerclass ROCKET_F
	; use normal ROCKET constants
	
	trainerclass SCIENTIST
	const CONNOR
	const JERRY
	const JOSE
	const RODNEY
	const BEAU
	const TAYLOR
	const JOSHUA
	const PARKER
	const ED
	const TRAVIS
	const TED
	const BRAYDON
	const IVAN
	
	trainerclass GIOVANNI ; BOSS as Class Name
	const GIOVANNI_HIDEOUT
	const GIOVANNI_SILPH
	
	trainerclass ROCKET
	const GRUNT_MTMOON_1
	const GRUNT_MTMOON_2
	const GRUNT_MTMOON_3
	const GRUNT_CERULEAN
	const GRUNT_GAME_CORNER
	const GRUNT_HIDEOUT_B1F_1
	const GRUNT_HIDEOUT_B1F_2
	const GRUNT_HIDEOUT_B1F_3
	const GRUNT_HIDEOUT_B1F_4
	const GRUNT_HIDEOUT_B1F_5
	const GRUNT_HIDEOUT_B2F
	const GRUNT_HIDEOUT_B3F_1
	const GRUNT_HIDEOUT_B3F_2
	const GRUNT_HIDEOUT_B4F
	const GRUNT_PKMNTOWER1
	const GRUNT_PKMNTOWER2
	const GRUNT_SILPH2F_1
	const GRUNT_SILPH2F_2
	const GRUNT_SILPH3F
	const GRUNT_SILPH4F_1
	const GRUNT_SILPH4F_2
	const GRUNT_SILPH5F_1
	const GRUNT_SILPH5F_2
	const GRUNT_SILPH6F_1
	const GRUNT_SILPH6F_2
	const GRUNT_SILPH7F_1
	const GRUNT_SILPH7F_2
	const GRUNT_SILPH7F_3
	const GRUNT_SILPH8F_1
	const GRUNT_SILPH8F_2
	const GRUNT_SILPH9F_1
	const GRUNT_SILPH9F_2
	const GRUNT_SILPH10F
	const GRUNT_SILPH11F
	
	trainerclass COOLTRAINER_M
	const SAMUEL
	const YUJI
	const WARREN
	const CLYDE
	const GEORGE
	const CODY
	
	trainerclass COOLTRAINER_F
	const BETH
	const NAOMI
	const CHRISTY
	const ALEXA
	
	trainerclass BRUNO
	
	trainerclass BROCK
	
	trainerclass MISTY
	
	trainerclass LT_SURGE
	
	trainerclass ERIKA
	
	trainerclass KOGA
	
	trainerclass BLAINE
	
	trainerclass SABRINA
	
	trainerclass GENTLEMAN
	const TUCKER
	const THOMAS
	const ARTHUR
	const BROOKS
	const LAMAR
	
	trainerclass SONY2
	
	trainerclass SONY3
	
	trainerclass LORELEI
	
	trainerclass CHANNELER
	const HOPE
	const CARLY
	const PATRICIA
	const PAULA
	const LAUREL
	const JODY
	const TAMMY
	const RUTH
	const KATRINA
	const JANAE
	const ANGELICA
	const JENNIFER
	const EMILIA
	
	trainerclass AGATHA
	
	trainerclass LANCE
	
	trainerclass HEX_MANIAC
	const AMANDA
	const STACY
	const TASHA
	
	trainerclass TRACEY
	; TODO: Add Tracey battle
	
	trainerclass EXECUTIVE_F
	const ARIANA_MTMOON
	
	trainerclass EXECUTIVE_M
	const ARCHER_PKMNTOWER
	const ARCHER_SILPH
	
	trainerclass ROCKER_F
	const DEBBIE
	
	trainerclass JESSIE_JAMES
	const JESSIE_JAMES_MTMOON
	const JESSIE_JAMES_HIDEOUT
	
	trainerclass COSPLAY_GIRL
	const JESSICA
	
	trainerclass JANINE
	
	trainerclass UNDERCOVER
	const RECRUITER
	
	trainerclass FLANNERY
	
	trainerclass GIOVANNI_2 ; LEADER as Class Name
	const GIOVANNI_GYM
	
	trainerclass SHRINE_MAIDEN
	
	trainerclass AROMA_LADY
	
	trainerclass BATTLE_GIRL
	
	trainerclass BREEDER
	
	trainerclass BOARDER
	
	trainerclass SKIER
	
	trainerclass FIREBREATHER
	
	trainerclass SR_AND_JR
	
	trainerclass KIMONO_GIRL
	
	trainerclass SAGE
	
	trainerclass MEDIUM
	
	trainerclass LADY
	
	trainerclass OFFICER_M
	
	trainerclass OFFICER_F
	
	trainerclass ARTIST
	
	trainerclass PARASOL_LADY
	
	trainerclass POKEFAN_M
	
	trainerclass POKEFAN_F
	
	trainerclass RICH_BOY
	
	trainerclass RUIN_MANIAC
	
	trainerclass SCHOOLBOY
	
	trainerclass SCHOOLGIRL
	
	trainerclass TEACHER
	
	trainerclass TWINS
	
	trainerclass LOOKER

	trainerclass OMASTAR_FOSSIL ; for museum
	
	trainerclass KABUTOPS_FOSSIL ; for museum
	
	trainerclass AERODACTYL_FOSSIL ; for museum
	
	trainerclass METEORITE ; for museum

NUM_TRAINER_CLASSES EQU __enum__
