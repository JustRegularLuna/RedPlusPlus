PokemonLeagueGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 19,  7, ROUTE_22, 1
	warp_event 20,  7, ROUTE_22, 1
	warp_event 10, 17, ROUTE_26, 1
	warp_event 11, 17, ROUTE_26, 1
	warp_event 10,  0, ROUTE_23, 1
	warp_event 11,  0, ROUTE_23, 2
	warp_event  1,  7, ROUTE_28, 2
	warp_event  2,  7, ROUTE_28, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
