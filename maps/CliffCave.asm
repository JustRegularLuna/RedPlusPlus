CliffCave_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 7 ; warp events
	warp_event  5, 19, ROUTE_47, 2
	warp_event  7,  9, ROUTE_47, 3
	warp_event  5, 33, ROUTE_47, 4
	warp_event  3, 17, CLIFF_CAVE, 6
	warp_event  7, 17, CLIFF_CAVE, 7
	warp_event  3,  3, CLIFF_CAVE, 4
	warp_event  7, 27, CLIFF_CAVE, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
