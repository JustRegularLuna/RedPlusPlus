Route16Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, ROUTE_16_NORTHWEST, 2
	warp_event  0,  5, ROUTE_16_NORTHWEST, 3
	warp_event  9,  4, ROUTE_16_NORTHEAST, 3
	warp_event  9,  5, ROUTE_16_NORTHEAST, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
