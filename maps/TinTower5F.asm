TinTower5F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  9, 15, TIN_TOWER_6F, 2
	warp_event  0,  4, TIN_TOWER_4F, 1
	warp_event  0, 14, TIN_TOWER_4F, 3
	warp_event 15, 15, TIN_TOWER_4F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
