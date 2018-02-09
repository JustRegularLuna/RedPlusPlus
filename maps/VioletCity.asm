VioletCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 11 ; warp events
	warp_event  9, 21, VIOLET_MART, 2
	warp_event 18, 21, VIOLET_GYM, 1
	warp_event 30, 21, EARLS_POKEMON_ACADEMY, 1
	warp_event  3, 19, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 31, 29, VIOLET_POKECENTER_1F, 1
	warp_event 21, 33, VIOLET_ONIX_TRADE_HOUSE, 1
	warp_event 23,  5, SPROUT_TOWER_1F, 1
	warp_event 39, 28, ROUTE_31_VIOLET_GATE, 1
	warp_event 39, 29, ROUTE_31_VIOLET_GATE, 2
	warp_event  2, 12, ROUTE_36_VIOLET_GATE, 3
	warp_event  2, 13, ROUTE_36_VIOLET_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
