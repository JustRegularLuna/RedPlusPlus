UnionCaveB1FNorth_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  3,  3, RUINS_OF_ALPH_OUTSIDE, 7
	warp_event  3, 11, RUINS_OF_ALPH_OUTSIDE, 8
	warp_event 15, 23, UNION_CAVE_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
