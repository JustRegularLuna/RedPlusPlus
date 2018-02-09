Route41_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 13, 17, WHIRL_ISLAND_NW, 1
	warp_event 37, 19, WHIRL_ISLAND_NE, 1
	warp_event 13, 37, WHIRL_ISLAND_SW, 1
	warp_event 37, 45, WHIRL_ISLAND_SE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
