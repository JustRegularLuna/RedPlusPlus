VermilionCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, VermilionCityFlyPoint

	db 14 ; warp events
	warp_event 11,  3, VERMILION_HOUSE_FISHING_SPEECH_HOUSE, 1
	warp_event 15,  3, VERMILION_POKECENTER_1F, 1
	warp_event 13, 13, POKEMON_FAN_CLUB, 1
	warp_event 19, 13, VERMILION_MAGNET_TRAIN_SPEECH_HOUSE, 1
	warp_event 27, 13, VERMILION_MART, 2
	warp_event 27, 19, VERMILION_HOUSE_DIGLETTS_CAVE_SPEECH_HOUSE, 1
	warp_event 14, 20, VERMILION_GYM, 1
	warp_event 16, 31, VERMILION_PORT, 1
	warp_event 17, 31, VERMILION_PORT, 1
	warp_event  0,  0, N_A, 0 ; TODO: remove
	warp_event 29, 29, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 30, 29, SEAGALLOP_FERRY_VERMILION_GATE, 1
	warp_event 19,  3, VERMILION_POLLUTION_SPEECH_HOUSE, 1 ; TODO: remove
	warp_event 25,  3, VERMILION_S_S_ANNE_SPEECH_HOUSE, 1 ; TODO: remove

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	itemball_event 43, 21, POKE_BALL, 1, -1
	cuttree_event 19, 19, -1
	smashrock_event 38,  5
	smashrock_event 37,  8
	smashrock_event 30, 10
	smashrock_event 33, 10

	const_def 1 ; object constants

VermilionCityFlyPoint:
	setflag ENGINE_FLYPOINT_VERMILION
	return
