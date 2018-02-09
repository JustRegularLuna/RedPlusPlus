Route31_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4
	warp_event 34,  5, DARK_CAVE_VIOLET_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
