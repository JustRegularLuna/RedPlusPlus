WhirlIslandB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event  5,  5, WHIRL_ISLAND_NW, 2
	warp_event 35,  3, WHIRL_ISLAND_NE, 2
	warp_event 29,  9, WHIRL_ISLAND_NE, 3
	warp_event  9, 31, WHIRL_ISLAND_SW, 3
	warp_event 23, 31, WHIRL_ISLAND_SW, 2
	warp_event 31, 29, WHIRL_ISLAND_SE, 2
	warp_event 25, 21, WHIRL_ISLAND_B2F, 1
	warp_event 13, 27, WHIRL_ISLAND_B2F, 2
	warp_event 17, 21, WHIRL_ISLAND_CAVE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
