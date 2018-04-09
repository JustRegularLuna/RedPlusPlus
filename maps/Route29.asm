Route29_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 27,  1, ROUTE_29_46_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	itemball_event 49,  2, POKE_BALL, 1, -1
	cuttree_event 30,  9, -1
	cuttree_event 21, 11, -1
	fruittree_event 12,  3, FRUITTREE_ROUTE_29, ORAN_BERRY

	const_def 1 ; object constants
