FireIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 14 ; warp events
	warp_event  5, 29, SHAMOUTI_COAST, 1
	warp_event 19, 29, FIRE_ISLAND_ROOF, 1
	warp_event  7,  5, FIRE_ISLAND, 4
	warp_event 21,  5, FIRE_ISLAND, 3
	warp_event  7,  9, FIRE_ISLAND, 6
	warp_event 21,  9, FIRE_ISLAND, 5
	warp_event  2, 16, FIRE_ISLAND, 8
	warp_event 16, 16, FIRE_ISLAND, 7
	warp_event  9, 19, FIRE_ISLAND, 10
	warp_event 23, 19, FIRE_ISLAND, 9
	warp_event  3, 23, FIRE_ISLAND, 12
	warp_event 17, 23, FIRE_ISLAND, 11
	warp_event 20, 27, FIRE_ISLAND, 14
	warp_event  6, 27, FIRE_ISLAND, 13 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
