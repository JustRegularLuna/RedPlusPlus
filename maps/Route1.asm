Route1_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 10,  3, ROUTE_1_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event  6, 11, FRUITTREE_ROUTE_1, ORAN_BERRY

	const_def 1 ; object constants
