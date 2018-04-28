DiglettsCave_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 37, 15, ROUTE_11, 3
	warp_event 39, 13, DIGLETTS_CAVE, 5
	warp_event 37,  5, ROUTE_2_NORTH, 4
	warp_event 39,  3, DIGLETTS_CAVE, 6
	warp_event 37, 31, DIGLETTS_CAVE, 2
	warp_event  5,  5, DIGLETTS_CAVE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
