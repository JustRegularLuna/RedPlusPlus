Route23_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  7, 139, POKEMON_LEAGUE_GATE, 5
	warp_event  8, 139, POKEMON_LEAGUE_GATE, 6
	warp_event  4, 31, VICTORY_ROAD_1F, 1
	warp_event 14, 31, VICTORY_ROAD_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
