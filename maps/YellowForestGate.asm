YellowForestGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, YELLOW_FOREST, 1
	warp_event  5,  0, YELLOW_FOREST, 2
	warp_event  4,  7, ROUTE_48, 1
	warp_event  5,  7, ROUTE_48, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
