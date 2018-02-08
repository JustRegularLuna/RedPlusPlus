TinTower3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  8, 14, TIN_TOWER_2F, 1
	warp_event 14,  2, TIN_TOWER_4F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
