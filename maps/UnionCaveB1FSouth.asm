UnionCaveB1FSouth_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  3,  5, UNION_CAVE_1F, 2
	warp_event 17,  3, UNION_CAVE_B2F, 1
	warp_event  5, 33, MURKY_SWAMP, 3
	warp_event 17, 23, ROUTE_32_COAST, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
