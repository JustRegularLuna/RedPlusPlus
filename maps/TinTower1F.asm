TinTower1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  7, 15, BELLCHIME_TRAIL, 3
	warp_event  8, 15, BELLCHIME_TRAIL, 3
	warp_event  8,  2, TIN_TOWER_2F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
