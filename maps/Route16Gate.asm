Route16Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, ROUTE_16_MIDDLE, 3
	warp_event  0,  5, ROUTE_16_MIDDLE, 4
	warp_event  9,  4, ROUTE_16_EAST, 3
	warp_event  9,  5, ROUTE_16_EAST, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
