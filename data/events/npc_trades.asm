npctrade: MACRO
	db \1, \2, \3, \4 ; dialog set, requested mon, offered mon, nickname
	db \5, \6, \7 ; dvs
	db \8, \9 ; personality
	shift
	db \9 ; item
	shift
	db \9 ; ball
	shift
	dw \9 ; OT ID
	shift
	db \9, 0 ; OT name
ENDM

; TODO: Fix Natures, port trade dialog sets from RBY
NPCTrades:
; OT names have 3 characters less padding so the total struct is 31 bytes
; Route 11
	npctrade 0, NIDORINO,   NIDORINA,   "Terry@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | ADAMANT, FEMALE, LEVEL_BALL,   EVERSTONE,    37460, "Taylor@@"
; Route 2
	npctrade 0, ABRA,       SNEASEL,    "Shadow@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | HASTY,   MALE,   DUSK_BALL,    SITRUS_BERRY, 48926, "Calvin@@"
; Pewter Museum
	npctrade 1, PIKACHU,    TOGEPI,     "Shelly@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | BRAVE,   FEMALE, FRIEND_BALL,  ORAN_BERRY,   29189, "Bob@@@@@"
; Route 5
	npctrade 0, PONYTA,     SEEL,       "Sailor@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | TIMID,   MALE,   DIVE_BALL,    MYSTIC_WATER, 00283, "Sally@@@"
; Vermillion City
	npctrade 2, SPEAROW,    FARFETCH_D, "Dux@@@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | JOLLY,   MALE,   NEST_BALL,    STICK,        15616, "Alice@@@"
; Route 18
	npctrade 0, SLOWBRO,    LICKITUNG,  "Marc@@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | CALM,    MALE,   SAFARI_BALL,  LEFTOVERS,    26491, "Jake@@@@"
; Cerulean City
	npctrade 1, POLIWHIRL,  JYNX,       "Lola@@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | CAREFUL, FEMALE, LOVE_BALL,    NEVERMELTICE, 50082, "Ralph@@@"
; Cinnabar Island
	npctrade 1, HAUNTER,    MISDREAVUS, "Doris@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | HASTY,   FEMALE, FAST_BALL,    SPELL_TAG,    43972, "Dwayne@@"
; Cinnabar Island
	npctrade 2, VENONAT,    TANGELA,    "Crinkles@@@", $EE, $EE, $EE, HIDDEN_ABILITY | HASTY,   FEMALE, FAST_BALL,    MIRACLE_SEED, 43972, "Christy@"
; Cinnabar Island
	npctrade 2, GROWLITHE,  HOUNDOUR,   "Spot@@@@@@@", $EE, $EE, $EE, HIDDEN_ABILITY | HASTY,   MALE,   FAST_BALL,    QUICK_CLAW,   43972, "Ross@@@@"
