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

	trainerclass LEAF ; 2

	trainerclass PROF_OAK ; 3
	
	trainerclass YOUNGSTER
	
	trainerclass BUG_CATCHER
	
	trainerclass LASS
	
	trainerclass SAILOR
	
	trainerclass JR_TRAINER_M
	
	trainerclass JR_TRAINER_F
	
	trainerclass POKEMANIAC
	
	trainerclass SUPER_NERD
	
	trainerclass HIKER
	
	trainerclass BIKER
	
	trainerclass BURGLAR
	
	trainerclass ENGINEER
	
	trainerclass COUPLE
	
	trainerclass FISHER
	
	trainerclass SWIMMER
	
	trainerclass CUE_BALL
	
	trainerclass GAMBLER
	
	trainerclass BEAUTY
	
	trainerclass PSYCHIC_TR
	
	trainerclass ROCKER
	
	trainerclass JUGGLER
	
	trainerclass TAMER
	
	trainerclass BIRD_KEEPER
	
	trainerclass BLACKBELT_T
	
	trainerclass SONY1
	
	trainerclass SWIMMER_F
	
	trainerclass ROCKET_F
	
	trainerclass SCIENTIST
	
	trainerclass GIOVANNI
	
	trainerclass ROCKET
	
	trainerclass COOLTRAINER_M
	
	trainerclass COOLTRAINER_F
	
	trainerclass BRUNO
	
	trainerclass BROCK
	
	trainerclass MISTY
	
	trainerclass LT_SURGE
	
	trainerclass ERIKA
	
	trainerclass KOGA
	
	trainerclass BLAINE
	
	trainerclass SABRINA
	
	trainerclass GENTLEMAN
	
	trainerclass SONY2
	
	trainerclass SONY3
	
	trainerclass LORELEI
	
	trainerclass CHANNELER
	
	trainerclass AGATHA
	
	trainerclass LANCE
	
	trainerclass HEX_MANIAC
	
	trainerclass TRACEY
	
	trainerclass EXECUTIVE_F
	
	trainerclass EXECUTIVE_M
	
	trainerclass ROCKER_F
	
	trainerclass JESSIE_JAMES
	
	trainerclass COSPLAY_GIRL
	
	trainerclass JANINE
	
	trainerclass PI_TRAINER
	
	trainerclass FLANNERY
	
	trainerclass JESSIE
	
	trainerclass JAMES
	
	trainerclass GIOVANNI_2

NUM_TRAINER_CLASSES EQU __enum__
