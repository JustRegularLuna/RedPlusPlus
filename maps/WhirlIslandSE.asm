WhirlIslandSE_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  5, 13, ROUTE_41, 4
	warp_event  5,  3, WHIRL_ISLAND_B1F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
