Route8_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2, 12, ROUTE_8_SAFFRON_GATE, 3
	warp_event  2, 13, ROUTE_8_SAFFRON_GATE, 4
	warp_event 15,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	cavebase_event 15,  3, SECRET_BASE_ROUTE_8, EVENT_SECRET_BASE_ROUTE_8
	fruittree_event 47,  7, FRUITTREE_ROUTE_8, ORAN_BERRY
	cuttree_event 23, 14, -1
	cuttree_event 34, 13, -1

	const_def 1 ; object constants
