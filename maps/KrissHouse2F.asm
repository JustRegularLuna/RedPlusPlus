KrissHouse2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  7,  0, KRISS_HOUSE_1F, 3

	db 0 ; coord events

if DEF(DEBUG)
	db 1 ; bg events
	bg_event  3,  1, SIGNPOST_READ, DebugCheatRadio
endc

	db 0 ; object events

	const_def 1 ; object constants

if DEF(DEBUG)

DebugCheatRadio:
	opentext
	; time
	special Special_SetDayOfWeek
	special Special_InitialClearDSTFlag
	; full pokegear
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	setflag ENGINE_MAP_CARD
	setflag ENGINE_RADIO_CARD
	setflag ENGINE_EXPN_CARD
	; pokedex
	setflag ENGINE_POKEDEX
	; all hms
	givetmhm HM_CUT
	givetmhm HM_FLY
	givetmhm HM_SURF
	givetmhm HM_STRENGTH
	givetmhm HM_WATERFALL
	givetmhm HM_WHIRLPOOL
	; max money
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 1000000
	givemoney $0, 999999
	giveitem COIN_CASE
	givecoins 50000
	; all badges
	setflag ENGINE_ZEPHYRBADGE
	setflag ENGINE_HIVEBADGE
	setflag ENGINE_PLAINBADGE
	setflag ENGINE_FOGBADGE
	setflag ENGINE_STORMBADGE
	setflag ENGINE_MINERALBADGE
	setflag ENGINE_GLACIERBADGE
	setflag ENGINE_RISINGBADGE
	setflag ENGINE_BOULDERBADGE
	setflag ENGINE_CASCADEBADGE
	setflag ENGINE_THUNDERBADGE
	setflag ENGINE_RAINBOWBADGE
	setflag ENGINE_MARSHBADGE
	setflag ENGINE_SOULBADGE
	setflag ENGINE_VOLCANOBADGE
	setflag ENGINE_EARTHBADGE
	setevent EVENT_BEAT_FALKNER
	setevent EVENT_BEAT_BUGSY
	setevent EVENT_BEAT_WHITNEY
	setevent EVENT_BEAT_MORTY
	setevent EVENT_BEAT_CHUCK
	setevent EVENT_BEAT_JASMINE
	setevent EVENT_BEAT_PRYCE
	setevent EVENT_BEAT_CLAIR
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_MISTY
	setevent EVENT_BEAT_LTSURGE
	setevent EVENT_BEAT_ERIKA
	setevent EVENT_BEAT_JANINE
	setevent EVENT_BEAT_SABRINA
	setevent EVENT_BEAT_BLAINE
	setevent EVENT_BEAT_BLUE
	setevent EVENT_BEAT_ELITE_FOUR
	setevent EVENT_BEAT_ELITE_FOUR_AGAIN
	; fly anywhere
	setflag ENGINE_FLYPOINT_NEW_BARK
	setflag ENGINE_FLYPOINT_CHERRYGROVE
	setflag ENGINE_FLYPOINT_VIOLET
	setflag ENGINE_FLYPOINT_UNION_CAVE
	setflag ENGINE_FLYPOINT_AZALEA
	setflag ENGINE_FLYPOINT_GOLDENROD
	setflag ENGINE_FLYPOINT_ECRUTEAK
	setflag ENGINE_FLYPOINT_OLIVINE
	setflag ENGINE_FLYPOINT_CIANWOOD
	setflag ENGINE_FLYPOINT_MAHOGANY
	setflag ENGINE_FLYPOINT_LAKE_OF_RAGE
	setflag ENGINE_FLYPOINT_BLACKTHORN
	setflag ENGINE_FLYPOINT_SILVER_CAVE
	setflag ENGINE_FLYPOINT_INDIGO_PLATEAU
	setflag ENGINE_FLYPOINT_PALLET
	setflag ENGINE_FLYPOINT_VIRIDIAN
	setflag ENGINE_FLYPOINT_PEWTER
	setflag ENGINE_FLYPOINT_MT_MOON
	setflag ENGINE_FLYPOINT_CERULEAN
	setflag ENGINE_FLYPOINT_VERMILION
	setflag ENGINE_FLYPOINT_CELADON
	setflag ENGINE_FLYPOINT_ROCK_TUNNEL
	setflag ENGINE_FLYPOINT_LAVENDER
	setflag ENGINE_FLYPOINT_FUCHSIA
	setflag ENGINE_FLYPOINT_SAFFRON
	setflag ENGINE_FLYPOINT_CINNABAR
	; useful items
	giveitem ESCAPE_ROPE, 99
	; shiny dex
	setflag ENGINE_CREDITS_SKIP
	giveitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	; hm slaves
	givepoke MEW, 100, LEFTOVERS
	givepoke MEW, 100, LEFTOVERS
	callasm TeachHMSlaveMoves
	; pokedex
	callasm FillPokedex
	; phone
	addcellnum PHONE_MOM
	closetext
	end

TeachHMSlaveMoves:
	ld hl, PartyMon1Moves
	ld a, FLY
	ld [hli], a
	ld a, SURF
	ld [hli], a
	ld a, STRENGTH
	ld [hli], a
	ld a, CUT
	ld [hl], a
	ld hl, PartyMon1PP
	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
	ld a, 30
	ld [hl], a
	ld hl, PartyMon2Moves
	ld a, FLASH
	ld [hli], a
	ld a, ROCK_SMASH
	ld [hli], a
	ld a, WHIRLPOOL
	ld [hli], a
	ld a, WATERFALL
	ld [hl], a
	ld hl, PartyMon2PP
	ld a, 20
	ld [hli], a
	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hli], a
;	ld a, 15
	ld [hl], a
	ret

FillPokedex:
	ld a, 1
	ld [wFirstUnownSeen], a
	ld [wFirstMagikarpSeen], a
	ld hl, PokedexSeen
	call .Fill
	ld hl, PokedexCaught
.Fill:
	ld a, %11111111
	ld bc, 31 ; 001-248
	call ByteFill
	ld a, %00011111
	ld [hl], a ; 249-253
	ret

endc
