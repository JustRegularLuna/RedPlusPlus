Route5_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 21, 28, ROUTE_5_UNDERGROUND_ENTRANCE, 1
	warp_event 12, 31, ROUTE_5_SAFFRON_CITY_GATE, 1
	warp_event 13, 31, ROUTE_5_SAFFRON_CITY_GATE, 2
	warp_event 13, 20, ROUTE_5_CLEANSE_TAG_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
