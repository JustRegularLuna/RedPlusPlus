VermilionCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 14 ; warp events
	warp_event  9,  3, VERMILION_HOUSE_FISHING_SPEECH_HOUSE, 1
	warp_event 13,  3, VERMILION_POKECENTER_1F, 1
	warp_event 11, 13, POKEMON_FAN_CLUB, 1
	warp_event 17, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 25, 13, VERMILION_MART, 2
	warp_event 25, 19, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 12, 20, VERMILION_GYM, 1
	warp_event 14, 31, VERMILION_PORT_PASSAGE, 1
	warp_event 15, 31, VERMILION_PORT_PASSAGE, 2
	warp_event  0,  0, DIGLETTS_CAVE, 1 ; TODO: move
	warp_event 27, 29, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 28, 29, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 17,  3, VERMILION_POLLUTION_SPEECH_HOUSE, 1 ; TODO: remove
	warp_event 23,  3, VERMILION_S_S_ANNE_SPEECH_HOUSE, 1 ; TODO: remove

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
