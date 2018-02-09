TinTower7F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  1,  9, TIN_TOWER_6F, 1
	warp_event  8, 15, TIN_TOWER_8F, 1
	warp_event 10,  7, TIN_TOWER_7F, 4
	warp_event  6,  3, TIN_TOWER_7F, 3
	warp_event  4,  9, TIN_TOWER_9F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
