CeriseIslandWest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 21, 18, CERISE_ISLAND_EAST, 1
	warp_event 21, 19, CERISE_ISLAND_EAST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
