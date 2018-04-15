Route43_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, Route43RainScript

	db 5 ; warp events
	warp_event  9, 51, ROUTE_43_MAHOGANY_GATE, 1
	warp_event 10, 51, ROUTE_43_MAHOGANY_GATE, 2
	warp_event 17, 35, ROUTE_43_GATE, 3
	warp_event 17, 31, ROUTE_43_GATE, 1
	warp_event 18, 31, ROUTE_43_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	fruittree_event  1, 25, FRUITTREE_ROUTE_43, ORAN_BERRY
	cuttree_event  2, 27, -1

	const_def 1 ; object constants

Route43RainScript:
	special Special_GetOvercastIndex
	ifequal LAKE_OF_RAGE_OVERCAST, .rain
	changemap Route43_BlockData
	return

.rain
	changemap Route43Raining_BlockData
	return
