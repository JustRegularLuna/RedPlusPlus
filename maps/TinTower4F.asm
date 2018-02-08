TinTower4F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, TIN_TOWER_5F, 2
	warp_event 14,  2, TIN_TOWER_3F, 2
	warp_event  0, 14, TIN_TOWER_5F, 3
	warp_event 15, 15, TIN_TOWER_5F, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
