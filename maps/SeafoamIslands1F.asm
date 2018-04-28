SeafoamIslands1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 15, 33, ROUTE_20, 1
	warp_event 15, 31, SEAFOAM_GYM, 1
	warp_event 12, 28, SEAFOAM_ISLANDS_B1F, 1
	warp_event  5,  5, ROUTE_20, 2
	warp_event  5,  3, SEAFOAM_ISLANDS_B1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
