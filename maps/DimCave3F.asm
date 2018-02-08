DimCave3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  5,  5, DIM_CAVE_4F, 4
	warp_event 28, 22, DIM_CAVE_4F, 5
	warp_event 15, 10, DIM_CAVE_4F, 6 ; hole
	warp_event 29,  5, DIM_CAVE_2F, 2
	warp_event 27, 25, DIM_CAVE_2F, 3
	warp_event 14, 21, DIM_CAVE_2F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
