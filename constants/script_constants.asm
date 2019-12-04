; script vars
PLAYER      EQU  0
LAST_TALKED EQU -2


	const_def
	const VAR_STRINGBUFFER2    ; 00
	const VAR_PARTYCOUNT       ; 01
	const VAR_BATTLERESULT     ; 02
	const VAR_BATTLETYPE       ; 03
	const VAR_TIMEOFDAY        ; 04
	const VAR_DEXCAUGHT        ; 05
	const VAR_DEXSEEN          ; 06
	const VAR_BADGES           ; 07
	const VAR_MOVEMENT         ; 08
	const VAR_FACING           ; 09
	const VAR_HOUR             ; 0a
	const VAR_WEEKDAY          ; 0b
	const VAR_MAPGROUP         ; 0c
	const VAR_MAPNUMBER        ; 0d
	const VAR_ROOFPALETTE      ; 0e
	const VAR_BOXSPACE         ; 0f
	const VAR_CONTESTMINUTES   ; 10
	const VAR_XCOORD           ; 11
	const VAR_YCOORD           ; 12
	const VAR_SPECIALPHONECALL ; 13
	const VAR_BT_WIN_STREAK    ; 14
	const VAR_KURT_APRICORNS   ; 15
	const VAR_CALLERID         ; 16
	const VAR_BLUECARDBALANCE  ; 17
	const VAR_BUENASPASSWORD   ; 18
	const VAR_KENJI_BREAK      ; 19
	const VAR_BATTLEPOINTS     ; 1a
	const VAR_PKMN_JOURNALS    ; 1b
	const VAR_TRAINER_STARS    ; 1c
NUM_VARS EQU const_value       ; 1d

RETVAR_STRBUF2 EQU (0 << 6)
RETVAR_ADDR_DE EQU (1 << 6)
RETVAR_EXECUTE EQU (2 << 6)


; see engine/events.asm:PlayerEventScriptPointers
	const_def -1
	const PLAYEREVENT_MAPSCRIPT
	const PLAYEREVENT_NONE
	const PLAYEREVENT_SEENBYTRAINER
	const PLAYEREVENT_TALKTOTRAINER
	const PLAYEREVENT_ITEMBALL
	const PLAYEREVENT_CONNECTION
	const PLAYEREVENT_WARP
	const PLAYEREVENT_FALL
	const PLAYEREVENT_WHITEOUT
	const PLAYEREVENT_HATCH
	const PLAYEREVENT_JOYCHANGEFACING
	const PLAYEREVENT_TMHMBALL
NUM_PLAYER_EVENTS EQU const_value


; see engine/events.asm:TryReadSign.signs
	const_def
	const SIGNPOST_READ
	const SIGNPOST_UP
	const SIGNPOST_DOWN
	const SIGNPOST_RIGHT
	const SIGNPOST_LEFT
	const SIGNPOST_IFSET
	const SIGNPOST_IFNOTSET
	const SIGNPOST_JUMPTEXT
	const SIGNPOST_JUMPSTD
	const SIGNPOST_GROTTOITEM
; SIGNPOST_ITEM has to be the last signpost type, since hidden item signposts
; use type SIGNPOST_ITEM + (item id) to save space.
; Note that this requires SIGNPOST_ITEM + (item id) <= $ff, so currently most
; of the mail items cannot be hidden.
SIGNPOST_ITEM EQU const_value

; see engine/events.asm:TryObjectEvent.pointers
	const_def
	const PERSONTYPE_SCRIPT         ; 0
	const PERSONTYPE_POKEBALL       ; 1
	const PERSONTYPE_TRAINER        ; 2
	const PERSONTYPE_GENERICTRAINER ; 3
	const PERSONTYPE_POKEMON        ; 4
	const PERSONTYPE_COMMAND        ; 5
NUM_PERSONTYPES EQU const_value


CMDQUEUE_ENTRY_SIZE EQU 6
CMDQUEUE_CAPACITY EQU 4
CMDQUEUE_ADDR EQU 1 ; offsets 0, 3, 4, and 5 are unused
CMDQUEUE_STONETABLE EQU 2 ; types 0, 1, 3, and 4 are unused


; elevator floors
	const_def
	const _B4F
	const _B3F
	const _B2F
	const _B1F
	const _1F
	const _2F
	const _3F
	const _4F
	const _5F
	const _6F
	const _7F
	const _8F
	const _9F
	const _10F
	const _11F
	const _ROOF

; see engine/overworld.asm:EmotesPointers
	const_def
	const EMOTE_SHOCK ; 0
	const EMOTE_QUESTION ; 1
	const EMOTE_HAPPY ; 2
	const EMOTE_SAD ; 3
	const EMOTE_HEART ; 4
	const EMOTE_BOLT ; 5
	const EMOTE_SLEEP ; 6
	const EMOTE_FISH ; 7
	const EMOTE_SHADOW ; 8
	const EMOTE_ROD ; 9
	const EMOTE_BOULDER_DUST ; 10
	const EMOTE_SHAKING_GRASS ; 11
	const EMOTE_PUDDLE_SPLASH ; 12
EMOTE_MEM EQU -1

; fruit trees
; see engine/events/fruit_trees.asm
	const_def 1
	const FRUITTREE_ROUTE_1         ; 01
	const FRUITTREE_VIRIDIAN_FOREST ; 02
	const FRUITTREE_ROUTE_2         ; 03
	const FRUITTREE_PEWTER_CITY_1   ; 04
	const FRUITTREE_PEWTER_CITY_2   ; 05
	const FRUITTREE_ROUTE_3         ; 06
	const FRUITTREE_ROUTE_4         ; 07
	const FRUITTREE_ROUTE_7         ; 08
	const FRUITTREE_ROUTE_8         ; 09
	const FRUITTREE_ROUTE_11        ; 0a
	const FRUITTREE_ROUTE_16        ; 0b
	const FRUITTREE_FUCHSIA_CITY    ; 0c
	const FRUITTREE_ROUTE_26        ; 0d
	const FRUITTREE_ROUTE_27        ; 0e
	const FRUITTREE_ROUTE_29        ; 0f
	const FRUITTREE_ROUTE_30_1      ; 10
	const FRUITTREE_ROUTE_30_2      ; 11
	const FRUITTREE_ROUTE_31        ; 12
	const FRUITTREE_VIOLET_CITY     ; 13
	const FRUITTREE_ROUTE_32_COAST  ; 14
	const FRUITTREE_ROUTE_33        ; 15
	const FRUITTREE_AZALEA_TOWN     ; 16
	const FRUITTREE_ROUTE_35        ; 17
	const FRUITTREE_ROUTE_36        ; 18
	const FRUITTREE_ROUTE_37_1      ; 19
	const FRUITTREE_ROUTE_37_2      ; 1a
	const FRUITTREE_ROUTE_37_3      ; 1b
	const FRUITTREE_ROUTE_38        ; 1c
	const FRUITTREE_ROUTE_39        ; 1d
	const FRUITTREE_ROUTE_42_1      ; 1e
	const FRUITTREE_ROUTE_42_2      ; 1f
	const FRUITTREE_ROUTE_42_3      ; 20
	const FRUITTREE_ROUTE_43        ; 21
	const FRUITTREE_ROUTE_44        ; 22
	const FRUITTREE_ROUTE_45        ; 23
	const FRUITTREE_ROUTE_46_1      ; 24
	const FRUITTREE_ROUTE_46_2      ; 25
	const FRUITTREE_SHAMOUTI_ISLAND ; 26
	const FRUITTREE_ROUTE_49        ; 27
NUM_FRUIT_TREES EQU const_value +- 1

; secret bases
; see data/events/hidden_grottoes/grottoes.asm:HiddenGrottoData
	const_def 1
	const SECRET_BASE_ROUTE_2_SOUTH
	const SECRET_BASE_ROUTE_2_NORTH
	const SECRET_BASE_ROUTE_3_TREE
	const SECRET_BASE_ROUTE_3_CAVE
	const SECRET_BASE_ROUTE_4_TREE
	const SECRET_BASE_ROUTE_4_CAVE
	const SECRET_BASE_MT_MOON_SQUARE
	const SECRET_BASE_ROUTE_6
	const SECRET_BASE_ROUTE_7
	const SECRET_BASE_CELADON_CITY
	const SECRET_BASE_ROUTE_8
	const SECRET_BASE_ROUTE_9
	const SECRET_BASE_SAFFRON_CITY
	const SECRET_BASE_ROUTE_10_NORTH
	const SECRET_BASE_ROUTE_10_SOUTH
	const SECRET_BASE_ROUTE_11
	const SECRET_BASE_ROUTE_13
	const SECRET_BASE_ROUTE_15
	const SECRET_BASE_ROUTE_16_TREE_1
	const SECRET_BASE_ROUTE_16_TREE_2
	const SECRET_BASE_ROUTE_16_CAVE
	const SECRET_BASE_URAGA_CHANNEL
	const SECRET_BASE_CINNABAR_ISLAND
	const SECRET_BASE_ROUTE_21
	const SECRET_BASE_ROUTE_22
	const SECRET_BASE_ROUTE_24
	const SECRET_BASE_CERULEAN_CAPE
	const SECRET_BASE_CHERRYGROVE_CITY
	const SECRET_BASE_CHERRYGROVE_BAY
	const SECRET_BASE_VIOLET_OUTSKIRTS
	const SECRET_BASE_ROUTE_32
	const SECRET_BASE_ROUTE_32_COAST
	const SECRET_BASE_ROUTE_33
	const SECRET_BASE_STORMY_BEACH
	const SECRET_BASE_ROUTE_35
	const SECRET_BASE_ROUTE_36
	const SECRET_BASE_BELLCHIME_TRAIL
	const SECRET_BASE_ROUTE_39
	const SECRET_BASE_OLIVINE_CITY
	const SECRET_BASE_CIANWOOD_CITY
	const SECRET_BASE_ROUTE_47
	const SECRET_BASE_ROUTE_48
	const SECRET_BASE_YELLOW_FOREST
	const SECRET_BASE_LAKE_OF_RAGE
	const SECRET_BASE_ROUTE_43
	const SECRET_BASE_DRAGONS_DEN
	const SECRET_BASE_ROUTE_44
	const SECRET_BASE_ROUTE_27
	const SECRET_BASE_ROUTE_26
	const SECRET_BASE_SILVER_CAVE
NUM_SECRET_BASES EQU const_value +- 1

; swarm arguments
; StoreSwarmMapIndices arguments
	const_def
	const SWARM_DUNSPARCE ; 0
	const SWARM_YANMA     ; 1


; ActivateFishingSwarm writebyte arguments
	const_def
	const FISHSWARM_NONE     ; 0
	const FISHSWARM_QWILFISH ; 1
	const FISHSWARM_REMORAID ; 2

; paintings
	const_def
	const HO_OH_PAINTING
	const LUGIA_PAINTING
	const BELL_TOWER_PAINTING
	const KABUTO_PUZZLE
	const OMANYTE_PUZZLE
	const AERODACTYL_PUZZLE
	const HO_OH_PUZZLE
NUM_PAINTINGS EQU const_value
