Route7_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 13, 20, ROUTE_7_SAFFRON_GATE, 1
	warp_event 13, 21, ROUTE_7_SAFFRON_GATE, 2
	warp_event 10, 14, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	cavebase_event 10, 13, SECRET_BASE_ROUTE_7, EVENT_SECRET_BASE_ROUTE_7
	fruittree_event 11, 25, FRUITTREE_ROUTE_7, ORAN_BERRY

	const_def 1 ; object constants
