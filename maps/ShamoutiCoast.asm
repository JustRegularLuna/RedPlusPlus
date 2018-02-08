ShamoutiCoast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 22, 15, FIRE_ISLAND, 1
	warp_event 54, 11, ICE_ISLAND, 1
	warp_event 84, 13, LIGHTNING_ISLAND, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
