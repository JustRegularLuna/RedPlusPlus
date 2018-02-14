Route2South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 16,  1, ROUTE_2_GATE, 3
	warp_event  3,  5, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
