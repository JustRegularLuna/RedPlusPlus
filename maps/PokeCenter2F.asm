PokeCenter2F_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, PokeCenter2FTileCallback

	db 3 ; warp events
	warp_event  0,  7, POKECENTER_2F, -1
	warp_event  5,  0, TRADE_CENTER, 1
	warp_event  9,  0, COLOSSEUM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

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
