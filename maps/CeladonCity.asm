CeladonCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlyPoint

	db 17 ; warp events
	warp_event  8, 15, CELADON_DEPT_STORE_1F, 1
	warp_event 24, 13, CELADON_MANSION_1F, 1
	warp_event 24,  7, CELADON_MANSION_1F, 3
	warp_event 25,  7, CELADON_MANSION_1F, 3
	warp_event 41, 13, CELADON_POKECENTER_1F, 1
	warp_event 26, 23, CELADON_GAME_CORNER, 1
	warp_event 31, 23, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 12, 34, CELADON_GYM, 1
	warp_event 31, 33, CELADON_CAFE, 1
	warp_event 35, 33, CELADON_CHIEF_HOUSE, 1
	warp_event 43, 33, CELADON_HOTEL_1F, 1
	warp_event  0,  0, CELADON_HOME_DECOR_STORE_1F, 1 ; TODO: remove
	warp_event  5, 34, CELADON_UNIVERSITY_1F, 1
	warp_event 33, 13, EUSINES_HOUSE, 1
	warp_event 39, 23, CELADON_OLD_MAN_SPEECH_HOUSE, 1
	warp_event 43, 23, CELADON_DEVELOPMENT_SPEECH_HOUSE, 1
	warp_event 10,  5, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	treebase_left_event_1 10,  4, SECRET_BASE_CELADON_CITY, EVENT_SECRET_BASE_CELADON_CITY
	treebase_left_event_2 10,  4, SECRET_BASE_CELADON_CITY, EVENT_SECRET_BASE_CELADON_CITY_ESTABLISHED
	cuttree_event 46, 24, -1
	cuttree_event 35, 38, -1

	const_def 1 ; object constants

CeladonCityFlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	return
