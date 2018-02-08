UnionCave1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  3,  3, UNION_CAVE_B1F_NORTH, 3
	warp_event  3, 45, UNION_CAVE_B1F_SOUTH, 1
	warp_event 17, 43, ROUTE_33, 1
	warp_event 17, 15, ROUTE_32, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
