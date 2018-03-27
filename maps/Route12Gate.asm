Route12Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  4,  0, ROUTE_12_NORTH, 1
	warp_event  5,  0, ROUTE_12_NORTH, 2
	warp_event  4,  9, ROUTE_12_SOUTH, 1
	warp_event  5,  9, ROUTE_12_SOUTH, 1
	warp_event  8,  8, ROUTE_12_GATE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
