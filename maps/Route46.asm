Route46_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 11, 35, ROUTE_29_46_GATE, 1
	warp_event 12, 35, ROUTE_29_46_GATE, 2
	warp_event 18,  5, DARK_CAVE_VIOLET_ENTRANCE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
