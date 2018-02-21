Route16West_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  4, 10, ROUTE_2_GATE, 5
	warp_event  4, 11, ROUTE_2_GATE, 6
	warp_event 63,  2, ROUTE_16_GATE, 1
	warp_event 63,  3, ROUTE_16_GATE, 2
	warp_event 28,  5, PSYCHIC_INVERS_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	fruittree_event 37,  4, FRUITTREE_ROUTE_16, ORAN_BERRY
	cuttree_event 15,  5, -1

	const_def 1 ; object constants
