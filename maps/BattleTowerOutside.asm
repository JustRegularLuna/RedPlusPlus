BattleTowerOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  8, 21, ROUTE_40_BATTLE_TOWER_GATE, 3
	warp_event  9, 21, ROUTE_40_BATTLE_TOWER_GATE, 4
	warp_event  8,  9, BATTLE_TOWER_1F, 1 ; hole
	warp_event  9,  9, BATTLE_TOWER_1F, 2 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
