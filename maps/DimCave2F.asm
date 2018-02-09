DimCave2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 15,  1, CERULEAN_CAPE, 2
	warp_event 29,  5, DIM_CAVE_3F, 4
	warp_event 27, 25, DIM_CAVE_3F, 5
	warp_event 14, 20, DIM_CAVE_3F, 6 ; hole
	warp_event 30,  2, DIM_CAVE_1F, 1
	warp_event  5, 17, DIM_CAVE_1F, 2
	warp_event 28, 18, DIM_CAVE_1F, 3
	warp_event 26, 32, DIM_CAVE_1F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
