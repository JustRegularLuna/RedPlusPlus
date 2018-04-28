Route22_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  6,  7, POKEMON_LEAGUE_GATE, 1
	warp_event 28,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cavebase_event 28,  3, SECRET_BASE_ROUTE_22, EVENT_SECRET_BASE_ROUTE_22

	const_def 1 ; object constants
