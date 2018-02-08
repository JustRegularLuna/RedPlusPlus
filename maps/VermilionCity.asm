VermilionCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 14 ; warp events
	warp_event  5,  5, VERMILION_HOUSE_FISHING_SPEECH_HOUSE, 1
	warp_event  9,  5, VERMILION_POKECENTER_1F, 1
	warp_event  7, 17, POKEMON_FAN_CLUB, 1
	warp_event 13, 17, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 21, 17, VERMILION_MART, 2
	warp_event 21, 21, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 10, 23, VERMILION_GYM, 1
	warp_event 17, 35, VERMILION_PORT_PASSAGE, 1
	warp_event 18, 35, VERMILION_PORT_PASSAGE, 2
	warp_event 36, 17, DIGLETTS_CAVE, 1
	warp_event 29, 35, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 30, 35, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 13,  5, VERMILION_POLLUTION_SPEECH_HOUSE, 1
	warp_event 19,  5, VERMILION_S_S_ANNE_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
