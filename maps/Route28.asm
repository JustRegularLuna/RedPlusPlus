Route28_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  7,  5, ROUTE_28_FAMOUS_SPEECH_HOUSE, 1
	warp_event 32,  7, POKEMON_LEAGUE_GATE, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
