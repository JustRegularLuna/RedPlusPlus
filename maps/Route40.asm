Route40_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  9,  5, ROUTE_40_BATTLE_TOWER_GATE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	smashrock_event  7, 11
	smashrock_event  6, 9
	smashrock_event  7, 8

	const_def 1 ; object constants
