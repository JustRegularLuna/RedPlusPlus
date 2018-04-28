Route1617Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  0,  5, ROUTE_16_MIDDLE, 1
	warp_event  0,  6, ROUTE_16_MIDDLE, 2
	warp_event  9,  5, ROUTE_16_EAST, 1
	warp_event  9,  6, ROUTE_16_EAST, 2
	warp_event  8,  8, ROUTE_16_17_GATE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
