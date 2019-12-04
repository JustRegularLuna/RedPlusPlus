Route26_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 12,  5, POKEMON_LEAGUE_GATE, 3
	warp_event 17, 57, ROUTE_26_HEAL_SPEECH_HOUSE, 1
	warp_event  7, 72, ROUTE_26_DAY_OF_WEEK_SIBLINGS_HOUSE, 1
	warp_event 12, 78, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	itemball_event 14, 34, POKE_BALL, 1, -1
	fruittree_event 15, 53, FRUITTREE_ROUTE_26, SITRUS_BERRY
	treebase_left_event_1 12, 77, SECRET_BASE_ROUTE_26, EVENT_SECRET_BASE_ROUTE_26
	treebase_left_event_2 12, 77, SECRET_BASE_ROUTE_26, EVENT_SECRET_BASE_ROUTE_26_ESTABLISHED

	const_def 1 ; object constants
