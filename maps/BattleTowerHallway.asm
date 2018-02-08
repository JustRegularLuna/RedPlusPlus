BattleTowerHallway_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 11,  1, BATTLE_TOWER_ELEVATOR, 1
	warp_event  5,  0, BATTLE_TOWER_BATTLE_ROOM, 1
	warp_event  7,  0, BATTLE_TOWER_BATTLE_ROOM, 1
	warp_event  9,  0, BATTLE_TOWER_BATTLE_ROOM, 1
	warp_event 13,  0, BATTLE_TOWER_BATTLE_ROOM, 1
	warp_event 15,  0, BATTLE_TOWER_BATTLE_ROOM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
