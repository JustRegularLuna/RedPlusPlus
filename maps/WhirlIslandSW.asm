WhirlIslandSW_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  5,  7, ROUTE_41, 3
	warp_event 17,  3, WHIRL_ISLAND_B1F, 5
	warp_event  3,  3, WHIRL_ISLAND_B1F, 4
	warp_event  3, 15, WHIRL_ISLAND_NW, 3
	warp_event 17, 15, WHIRL_ISLAND_B2F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
