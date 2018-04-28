BattleTower1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 10, 13, BATTLE_TOWER_OUTSIDE, 3
	warp_event 11, 13, BATTLE_TOWER_OUTSIDE, 3
	warp_event 10,  0, BATTLE_TOWER_ELEVATOR, 1
	warp_event  0,  5, BATTLE_TOWER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
