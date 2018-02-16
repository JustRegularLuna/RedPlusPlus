Route12Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  4,  0, LAVENDER_TOWN, 8
	warp_event  5,  0, LAVENDER_TOWN, 9
	warp_event  4,  9, ROUTE_12, 1
	warp_event  5,  9, ROUTE_12, 1
	warp_event  8,  8, ROUTE_12_GATE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
