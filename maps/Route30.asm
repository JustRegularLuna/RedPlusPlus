Route30_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  7, 41, ROUTE_30_BERRY_SPEECH_HOUSE, 1
	warp_event 17,  5, MR_POKEMONS_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	cuttree_event  8,  5, -1
	fruittree_event 10, 41, FRUITTREE_ROUTE_30_1, ORAN_BERRY
	fruittree_event 11,  4, FRUITTREE_ROUTE_30_2, ORAN_BERRY

	const_def 1 ; object constants
