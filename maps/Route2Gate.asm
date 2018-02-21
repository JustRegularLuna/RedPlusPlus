Route2Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  4,  0, ROUTE_2_NORTH, 2
	warp_event  5,  0, ROUTE_2_NORTH, 3
	warp_event  4,  7, ROUTE_2_SOUTH, 1
	warp_event  5,  7, ROUTE_2_SOUTH, 1
	warp_event  9,  3, ROUTE_16_WEST, 1
	warp_event  9,  4, ROUTE_16_WEST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
