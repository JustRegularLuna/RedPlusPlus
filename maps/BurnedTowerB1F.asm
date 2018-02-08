BurnedTowerB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 10,  9, BURNED_TOWER_1F, 3 ; hole
	warp_event  7, 15, BURNED_TOWER_1F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
