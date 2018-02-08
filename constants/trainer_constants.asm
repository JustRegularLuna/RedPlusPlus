trainerclass: MACRO
	enum \1
const_value = 1
ENDM

; trainer groups
	enum_start
CHRIS EQU __enum__
	trainerclass TRAINER_NONE ; 0
	const PHONECONTACT_MOM
	const PHONECONTACT_BIKESHOP
	const PHONECONTACT_BILL
	const PHONECONTACT_ELM
	const PHONECONTACT_LYRA
	const PHONECONTACT_BUENA

KRIS EQU __enum__
	trainerclass CARRIE ; 1

	trainerclass CAL ; 2

	trainerclass FALKNER ; 3

	trainerclass BUGSY ; 4

	trainerclass WHITNEY ; 5

	trainerclass MORTY ; 6

	trainerclass CHUCK ; 7

	trainerclass JASMINE ; 8

	trainerclass PRYCE ; 9

	trainerclass CLAIR ; a

	trainerclass WILL ; b

	trainerclass KOGA ; c

	trainerclass BRUNO ; d

	trainerclass KAREN ; e

	trainerclass CHAMPION ; f

	trainerclass BROCK ; 10

	trainerclass MISTY ; 11

	trainerclass LT_SURGE ; 12

	trainerclass ERIKA ; 13

	trainerclass JANINE ; 14

	trainerclass SABRINA ; 15

	trainerclass BLAINE ; 16

	trainerclass BLUE ; 17

	trainerclass RED ; 18

	trainerclass LEAF ; 19

	trainerclass RIVAL0 ; 1a

	trainerclass RIVAL1 ; 1b

	trainerclass RIVAL2 ; 1c

	trainerclass LYRA1 ; 1d

	trainerclass LYRA2 ; 1e

	trainerclass YOUNGSTER ; 1f

	trainerclass BUG_CATCHER ; 20

	trainerclass CAMPER ; 21

	trainerclass PICNICKER ; 22

	trainerclass TWINS ; 23

	trainerclass FISHER ; 24

	trainerclass BIRD_KEEPER ; 25

	trainerclass HIKER ; 26

	trainerclass GRUNTM ; 27

	trainerclass GRUNTF ; 28

	trainerclass POKEFANM ; 29

	trainerclass POKEFANF ; 2a

	trainerclass OFFICERM ; 2b

	trainerclass OFFICERF ; 2c

	trainerclass NURSE ; 2d

	trainerclass POKEMANIAC ; 2e

	trainerclass COSPLAYER ; 2f

	trainerclass SUPER_NERD ; 30

	trainerclass LASS ; 31

	trainerclass BEAUTY ; 32

	trainerclass BUG_MANIAC ; 33

	trainerclass RUIN_MANIAC ; 34

	trainerclass FIREBREATHER ; 35

	trainerclass JUGGLER ; 36

	trainerclass SCHOOLBOY ; 37

	trainerclass SCHOOLGIRL ; 38

	trainerclass PSYCHIC_T ; 39

	trainerclass HEX_MANIAC ; 3a

	trainerclass SAGE ; 3b

	trainerclass MEDIUM ; 3c

	trainerclass KIMONO_GIRL ; 3d

	trainerclass ELDER ; 3e

	trainerclass SR_AND_JR ; 3f

	trainerclass COUPLE ; 40

	trainerclass GENTLEMAN ; 41

	trainerclass RICH_BOY ; 42

	trainerclass LADY ; 43

	trainerclass BREEDER ; 44

	trainerclass BAKER ; 45

	trainerclass COWGIRL ; 46

	trainerclass SAILOR ; 47

	trainerclass SWIMMERM ; 48

	trainerclass SWIMMERF ; 49

	trainerclass BURGLAR ; 4a

	trainerclass PI ; 4b

	trainerclass SCIENTIST ; 4c

	trainerclass ROCKET_SCIENTIST ; 4d

	trainerclass BOARDER ; 4e

	trainerclass SKIER ; 4f

	trainerclass BLACKBELT_T ; 50

	trainerclass BATTLE_GIRL ; 51

	trainerclass DRAGON_TAMER ; 52

	trainerclass ENGINEER ; 53

	trainerclass TEACHER ; 54

	trainerclass GUITARISTM ; 55

	trainerclass GUITARISTF ; 56

	trainerclass BIKER ; 57

	trainerclass ROUGHNECK ; 58

	trainerclass TAMER ; 59

	trainerclass ARTIST ; 5a

	trainerclass AROMA_LADY ; 5b

	trainerclass WAITRESS ; 5c

	trainerclass SIGHTSEERM ; 5d

	trainerclass SIGHTSEERF ; 5e

	trainerclass SIGHTSEERS ; 5f

	trainerclass COOLTRAINERM ; 60

	trainerclass COOLTRAINERF ; 61

	trainerclass ACE_DUO ; 62

	trainerclass VETERANM ; 63

	trainerclass VETERANF ; 64

	trainerclass PROTON ; 65

	trainerclass PETREL ; 66

	trainerclass ARCHER ; 67

	trainerclass ARIANA ; 68

	trainerclass GIOVANNI ; 69

	trainerclass PROF_OAK ; 6a

	trainerclass PROF_ELM ; 6b

	trainerclass PROF_IVY ; 6c

	trainerclass MYSTICALMAN ; 6d

	trainerclass KARATE_KING ; 6e

	trainerclass TOWERTYCOON ; 6f

	trainerclass JESSIE_JAMES ; 70

	trainerclass LORELEI ; 71

	trainerclass AGATHA ; 72

	trainerclass STEVEN ; 73

	trainerclass CYNTHIA ; 74

	trainerclass INVER ; 75

	trainerclass CHERYL ; 76

	trainerclass RILEY ; 77

	trainerclass BUCK ; 78

	trainerclass MARLEY ; 79

	trainerclass MIRA ; 7a

	trainerclass ANABEL ; 7b

	trainerclass DARACH ; 7c

	trainerclass CAITLIN ; 7d

	trainerclass CANDELA ; 7e

	trainerclass BLANCHE ; 7f

	trainerclass SPARK_T ; 80

	trainerclass FLANNERY ; 81

	trainerclass MAYLENE ; 82

	trainerclass SKYLA ; 83

	trainerclass VALERIE ; 84

	trainerclass KUKUI ; 85

	trainerclass VICTOR  ; 86

	trainerclass BILL_T ; 87

	trainerclass YELLOW ; 88

	trainerclass WALKER ; 89

	trainerclass IMAKUNI ; 8a

	trainerclass LAWRENCE ; 8b

	trainerclass REI ; 8c

	trainerclass OMASTAR_FOSSIL ; 8d

	trainerclass KABUTOPS_FOSSIL ; 8e

	trainerclass AERODACTYL_FOSSIL ; 8f

	trainerclass CUBONE_ARMOR ; 90

	trainerclass METEORITE ; 91

	trainerclass SILHOUETTE ; 92

NUM_TRAINER_CLASSES EQU __enum__
