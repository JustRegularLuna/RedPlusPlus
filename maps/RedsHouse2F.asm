RedsHouse2F_MapScriptHeader:
	db 2 ; scene scripts
	scene_script PlayersBedroomFaceSNES
	scene_script PlayersBedroomDoNothing

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, RedsHouse2FInitializeEvents

	db 1 ; warp events
	warp_event  7,  0, REDS_HOUSE_1F, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, SIGNPOST_UP, RedsHouse2FPCScript
if DEF(DEBUG)
	bg_event  3,  5, SIGNPOST_READ, DebugCheatScript
else
	bg_event  3,  5, SIGNPOST_UP, RedsHouse2FSNESScipt
endc
	bg_event  5,  0, SIGNPOST_UP, RedsHouse2FPosterScript

	db 0 ; object events

	const_def 1 ; object constants

PlayersBedroomFaceSNES:
; In Gen 1, there was a script in your bedroom making you look UP toward the SNES at the start.
	turnobject PLAYER, UP
	setscene $1
PlayersBedroomDoNothing:
	end

RedsHouse2FInitializeEvents:
	checkevent EVENT_INITIALIZED_EVENTS
	iftrue .SkipInizialization
	jumpstd initializeevents

.SkipInizialization:
	return

if DEF(DEBUG)

DebugCheatScript:
	opentext
	; gear
	setflag ENGINE_POKEDEX
	setflag ENGINE_VS_SEEKER
	; all hms
	givetmhm HM_CUT
	givetmhm HM_FLY
	givetmhm HM_SURF
	givetmhm HM_STRENGTH
	givetmhm HM_WATERFALL
	givetmhm HM_DIVE
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
	giveitem BICYCLE
	giveitem TOWN_MAP
	giveitem POKE_FLUTE
	giveitem VS_SEEKER
	giveitem MAX_REPEL, 99
	giveitem ESCAPE_ROPE, 99
	; shiny dex
	setflag ENGINE_CREDITS_SKIP
	giveitem SHINY_CHARM
	setflag ENGINE_HAVE_SHINY_CHARM
	; hm slaves
	givepoke MEW, 100, LEFTOVERS
	givepoke MEW, 100, LEFTOVERS
	loadvar PartyMon1Moves+0, FLY
	loadvar PartyMon1Moves+1, SURF
	loadvar PartyMon1Moves+2, STRENGTH
	loadvar PartyMon1Moves+3, CUT
	loadvar PartyMon1PP+0, 15
	loadvar PartyMon1PP+1, 15
	loadvar PartyMon1PP+2, 15
	loadvar PartyMon1PP+3, 30
	loadvar PartyMon2Moves+0, FLASH
	loadvar PartyMon2Moves+1, ROCK_SMASH
	loadvar PartyMon2Moves+2, WATERFALL
	loadvar PartyMon2Moves+3, DIVE
	loadvar PartyMon2PP+0, 20
	loadvar PartyMon2PP+1, 15
	loadvar PartyMon2PP+2, 15
	loadvar PartyMon2PP+3, 10
	; pokedex
	callasm FillPokedex
	; phone
	addcellnum PHONE_MOM
	addcellnum PHONE_OAK
	addcellnum PHONE_BILL
	closetext
	end

FillPokedex:
	ld a, 1
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

RedsHouse2FPCScript:
	opentext
	special Special_PlayersHousePC
	endtext

RedsHouse2FSNESScipt:
	thistext

	text "<PLAYER> is"
	line "playing the SNES."

	para "…Okay!"
	line "It's time to go!"
	done

RedsHouse2FPosterScript:
	thistext

	text "It's a poster of a"
	line "cute Marill."
	done
