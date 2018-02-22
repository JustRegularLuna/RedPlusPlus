Route7_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 13, 22, ROUTE_7_SAFFRON_GATE, 1
	warp_event 13, 23, ROUTE_7_SAFFRON_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	fruittree_event 11, 27, FRUITTREE_ROUTE_7, ORAN_BERRY

	const_def 1 ; object constants
