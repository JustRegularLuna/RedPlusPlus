Route30_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  7, 41, ROUTE_30_BERRY_SPEECH_HOUSE, 1
	warp_event 17,  5, MR_POKEMONS_HOUSE, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 14,  9, SIGNPOST_ITEM + POTION, -1

	db 4 ; object events
	itemball_event  8, 37, POKE_BALL, 1, -1
	cuttree_event 11,  6, -1
	fruittree_event 10, 41, FRUITTREE_ROUTE_30_1, ORAN_BERRY
	fruittree_event 13,  5, FRUITTREE_ROUTE_30_2, ORAN_BERRY

	const_def 1 ; object constants
