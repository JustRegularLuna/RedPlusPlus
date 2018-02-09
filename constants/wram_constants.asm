; MonType: ; cf5f
PARTYMON   EQU 0
OTPARTYMON EQU 1
BOXMON     EQU 2
BREEDMON   EQU 3
WILDMON    EQU 4

; Options1: ; cfcc
FAST_TEXT      EQU $0
MED_TEXT       EQU $1
SLOW_TEXT      EQU $2
INST_TEXT      EQU $3
; bits
NO_TEXT_SCROLL EQU 4
STEREO         EQU 5
BATTLE_EFFECTS EQU 6

; Options2:
FONT_MASK      EQU %00000111
NORMAL_FONT    EQU %000
NARROW_FONT    EQU %001
BOLD_FONT      EQU %010
ITALIC_FONT    EQU %011
SERIF_FONT     EQU %100
UNOWN_FONT     EQU %101
; bits
RUNNING_SHOES  EQU 3
CLOCK_FORMAT   EQU 4
POKEDEX_UNITS  EQU 5
BATTLE_SWITCH  EQU 6
BATTLE_PREDICT EQU 7

; InitialOptions:
NATURES_OPT      EQU 0
ABILITIES_OPT    EQU 1
COLOR_VARY_OPT   EQU 2
PERFECT_IVS_OPT  EQU 3
TRADED_AS_OT_OPT EQU 4
NUZLOCKE_MODE    EQU 5
RESET_INIT_OPTS  EQU 7

; WalkingDirection: ; d043
STANDING EQU -1
DOWN     EQU 0
UP       EQU 1
LEFT     EQU 2
RIGHT    EQU 3

; FacingDirection: ; d044
FACE_CURRENT EQU 0
FACE_DOWN  EQU 8
FACE_UP    EQU 4
FACE_LEFT  EQU 2
FACE_RIGHT EQU 1

; TimeOfDay: ; d269
MORN     EQU 0
DAY      EQU 1
NITE     EQU 2
DARKNESS EQU 3

; ScriptFlags: ; d434
SCRIPT_RUNNING EQU 2

; ScriptMode: ; d437
SCRIPT_OFF EQU 0
SCRIPT_READ EQU 1
SCRIPT_WAIT_MOVEMENT EQU 2
SCRIPT_WAIT EQU 3

; CurDay: ; d4cb
SUNDAY    EQU 0
MONDAY    EQU 1
TUESDAY   EQU 2
WEDNESDAY EQU 3
THURSDAY  EQU 4
FRIDAY    EQU 5
SATURDAY  EQU 6

; MapObjects: ; d71e
PLAYER_OBJECT EQU 0
NUM_OBJECTS EQU $15

; InputType: ; c2c7
AUTO_INPUT EQU $ff

; PlayerState: ; d95d
PLAYER_NORMAL    EQU 0
PLAYER_BIKE      EQU 1
PLAYER_SLIP      EQU 2
PLAYER_SURF      EQU 4
PLAYER_SURF_PIKA EQU 8

OBJECT_STRUCT_LENGTH EQU 33
NUM_OBJECT_STRUCTS EQU 13

; After-Champion Spawn
SPAWN_LANCE EQU 1
SPAWN_LEAF EQU 2

; wPokemonWithdrawDepositParameter
PC_WITHDRAW EQU 0
PC_DEPOSIT EQU 1
DAYCARE_WITHDRAW EQU 2
DAYCARE_DEPOSIT EQU 3

; wCurrentDexMode
	const_def
	const DEXMODE_NEW
	const DEXMODE_OLD
	const DEXMODE_ABC
	const DEXMODE_UNOWN

; HiddenGrottoContents
	const_def
	const GROTTO_UNDEFINED
	const GROTTO_POKEMON
	const GROTTO_ITEM
	const GROTTO_HIDDEN_ITEM
	const GROTTO_EMPTY

	const_def
	const ZEPHYRBADGE
	const HIVEBADGE
	const PLAINBADGE
	const FOGBADGE
	const MINERALBADGE
	const STORMBADGE
	const GLACIERBADGE
	const RISINGBADGE
NUM_JOHTO_BADGES EQU const_value
	const_def
	const BOULDERBADGE
	const CASCADEBADGE
	const THUNDERBADGE
	const RAINBOWBADGE
	const MARSHBADGE
	const SOULBADGE
	const VOLCANOBADGE
	const EARTHBADGE
NUM_KANTO_BADGES EQU const_value
NUM_BADGES EQU NUM_JOHTO_BADGES + NUM_KANTO_BADGES

	const_def
	const FALKNER_JOURNAL ; Violet Pokémon Center
	const BUGSY_JOURNAL ; Azalea Pokémon Center
	const WHITNEY_JOURNAL ; Goldenrod PokéCom Center
	const MORTY_JOURNAL ; Ecruteak Pokémon Center
	const CHUCK_JOURNAL ; Cianwood Pokémon Center
	const JASMINE_JOURNAL ; Olivine Pokémon Center
	const PRYCE_JOURNAL ; Mahogany Pokémon Center
	const CLAIR_JOURNAL ; Blackthorn Pokémon Center
	const BROCK_JOURNAL ; Pewter Pokémon Center
	const MISTY_JOURNAL ; Cerulean Pokémon Center
	const LT_SURGE_JOURNAL ; Vermilion Pokémon Center
	const ERIKA_JOURNAL ; Celadon Pokémon Center
	const JANINE_JOURNAL ; Fuchsia Pokémon Center
	const SABRINA_JOURNAL ; Saffron Pokémon Center
	const BLAINE_JOURNAL ; Cinnabar Pokémon Center
	const BLUE_JOURNAL ; Viridian Pokémon Center
	const WILL_JOURNAL ; Earl's Pokémon Academy
	const KOGA_JOURNAL ; Safari Zone rest houses
	const BRUNO_JOURNAL ; Pokémon Trainer Fan Club
	const KAREN_JOURNAL ; Mt. Moon Pokémon Center
	const LANCE_JOURNAL ; Silver Cave Pokémon Center
	const RED_JOURNAL ; Cherrygrove Pokémon Center
	const GREEN_JOURNAL ; Pokémon Fan Club
	const PROF_OAK_JOURNAL ; Red's house, Blue's house
	const PROF_ELM_JOURNAL ; Kris's house, Lyra's house
	const PROF_WESTWOOD_JOURNAL ; Kurt's house
	const GIOVANNI_JOURNAL ; Indigo Plateau Pokémon Center
	const LORELEI_JOURNAL ; Shamouti Island Pokémon Center
	const AGATHA_JOURNAL ; Rock Tunnel Pokémon Center
	const BILL_JOURNAL ; Bill's house
	const KURT_JOURNAL ; Union Cave Pokémon Center
	const MR_FUJI_JOURNAL ; Lavender Town Pokémon Center
NUM_POKEMON_JOURNALS EQU const_value
