BattleTowerOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 11, 21, ROUTE_40_BATTLE_TOWER_GATE, 3
	warp_event 12, 21, ROUTE_40_BATTLE_TOWER_GATE, 4
	warp_event 11,  9, BATTLE_TOWER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
