Route26_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 12,  5, POKEMON_LEAGUE_GATE, 3
	warp_event 17, 57, ROUTE_26_HEAL_SPEECH_HOUSE, 1
	warp_event  7, 72, ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	itemball_event 14, 34, POKE_BALL, 1, -1
	fruittree_event 15, 53, FRUITTREE_ROUTE_26, SITRUS_BERRY

	const_def 1 ; object constants
