Route8_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2, 12, ROUTE_8_SAFFRON_GATE, 3
	warp_event  2, 13, ROUTE_8_SAFFRON_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	fruittree_event 47,  7, FRUITTREE_ROUTE_8, ORAN_BERRY
	cuttree_event 23, 14, -1
	cuttree_event 34, 13, -1

	const_def 1 ; object constants
