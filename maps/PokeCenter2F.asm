PokeCenter2F_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, PokeCenter2FTileCallback

	db 3 ; warp events
	warp_event  0,  7, POKECENTER_2F, -1
	warp_event  5,  0, TRADE_CENTER, 1
	warp_event  9,  0, COLOSSEUM, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event   7,  2, SIGNPOST_READ, PokeCenter2FLinkRecordSign
	bg_event  11,  2, SIGNPOST_READ, PokeCenter2FLinkRecordSign

	db 3 ; object events
	object_event   1,  1, SPRITE_CABLE_CLUB_WOMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, WonderTradeReceptionistScript, -1
	object_event   6,  1, SPRITE_CABLE_CLUB_WOMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event  10,  1, SPRITE_CABLE_CLUB_WOMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1

	const_def 1 ; object constants

PokeCenter2FTileCallback:
	callasm .CheckJohtoRegion
	iftrue .done
	changemap JohtoPokeCenter2F_BlockData
.done
	return

.CheckJohtoRegion:
	call GetBackupLandmark
	ld hl, ScriptVar
	cp KANTO_LANDMARK
	jr c, .not_kanto
	cp SHAMOUTI_LANDMARK
	jr nc, .not_kanto
	ld a, TRUE
	ld [hl], a
	ret
.not_kanto
	xor a ; FALSE
	ld [hl], a
	ret

PokeCenter2FLinkRecordSign:
	refreshscreen
	special Special_DisplayLinkRecord
	endtext

WonderTradeReceptionistScript:
	opentext
	writetext WonderTradeIntroText
	waitbutton
	checkevent EVENT_GOT_POKEDEX
	iffalse_jumpopenedtext WonderTradeOfflineText
	writetext WonderTradeExplanationText
	buttonsound
	special WonderTrade
	jumpopenedtext WonderTradeGoodbyeText

WonderTradeIntroText:
	text "Hello! Welcome to"
	line "Wonder Trade Hub."
	done

WonderTradeOfflineText:
	text "The system is"
	line "currently under"
	cont "maintenance."
	
	para "Please try back"
	line "later."
	done

WonderTradeExplanationText:
	text "You can trade"
	line "#mon with other"
	cont "people far away."
	done

WonderTradeGoodbyeText:
	text "We hope to see you"
	line "again."
	done
