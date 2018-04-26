Route33_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, Route33RainScript

	db 1 ; warp events
	warp_event 11, 11, UNION_CAVE_1F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 14, 18, FRUITTREE_ROUTE_33, ORAN_BERRY

	const_def 1 ; object constants

Route33RainScript:
	special Special_GetOvercastIndex
	ifequal AZALEA_OVERCAST, .rain
	changemap Route33_BlockData
	return

.rain
	changemap Route33Raining_BlockData
	return
