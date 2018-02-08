DimCave5F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 13, 31, ROUTE_10_NORTH, 5
	warp_event  2, 16, DIM_CAVE_4F, 1
	warp_event 27, 29, DIM_CAVE_4F, 2
	warp_event 28, 25, DIM_CAVE_4F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
