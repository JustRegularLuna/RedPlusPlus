TohjoFalls_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 13, 15, ROUTE_27_WEST, 1
	warp_event 25, 15, ROUTE_27_EAST, 1
	warp_event  3,  7, GIOVANNIS_CAVE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
