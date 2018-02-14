SaffronCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 20 ; warp events
	warp_event 28,  7, FIGHTING_DOJO, 1
	warp_event 36,  7, SAFFRON_GYM, 1
	warp_event 29, 15, SAFFRON_MART, 2
	warp_event 13, 33, SAFFRON_POKECENTER_1F, 1
	warp_event 33, 33, MR_PSYCHICS_HOUSE, 1
	warp_event  0,  0, SAFFRON_TRAIN_STATION, 2 ; TODO: remove
	warp_event 22, 24, SILPH_CO_1F, 1
	warp_event 11,  9, COPYCATS_HOUSE_1F, 1
	warp_event 22,  1, ROUTE_5_SAFFRON_CITY_GATE, 3
	warp_event  2, 22, ROUTE_7_SAFFRON_GATE, 3
	warp_event  2, 23, ROUTE_7_SAFFRON_GATE, 4
	warp_event 24, 41, ROUTE_6_SAFFRON_GATE, 1
	warp_event 25, 41, ROUTE_6_SAFFRON_GATE, 2
	warp_event 45, 22, ROUTE_8_SAFFRON_GATE, 1
	warp_event 45, 23, ROUTE_8_SAFFRON_GATE, 2
	warp_event 37, 15, POKEMON_TRAINER_FAN_CLUB, 1
	warp_event  9, 33, SAFFRON_ORRE_SPEECH_HOUSE, 1
	warp_event 21, 33, SAFFRON_BOOK_SPEECH_HOUSE, 1
	warp_event 25, 33, SAFFRON_HITMONTOP_KID_HOUSE, 1
	warp_event 17, 15, SAFFRON_RICH_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
