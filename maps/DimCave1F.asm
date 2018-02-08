DimCave1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 30,  2, DIM_CAVE_2F, 5
	warp_event  5, 17, DIM_CAVE_2F, 6
	warp_event 28, 18, DIM_CAVE_2F, 7
	warp_event 24, 32, DIM_CAVE_2F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
