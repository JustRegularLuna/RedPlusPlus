Route10South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 10,  5, ROCK_TUNNEL_1F, 2
	warp_event 17,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cavebase_event 17,  3, SECRET_BASE_ROUTE_10_SOUTH, EVENT_SECRET_BASE_ROUTE_10_SOUTH

	const_def 1 ; object constants
