CeladonCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, CeladonCityFlyPoint

	db 17 ; warp events
	warp_event  8, 13, CELADON_DEPT_STORE_1F, 1
	warp_event 24, 11, CELADON_MANSION_1F, 1
	warp_event 24,  5, CELADON_MANSION_1F, 3
	warp_event 25,  5, CELADON_MANSION_1F, 3
	warp_event 41, 11, CELADON_POKECENTER_1F, 1
	warp_event 26, 21, CELADON_GAME_CORNER, 1
	warp_event 31, 21, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 12, 32, CELADON_GYM, 1
	warp_event 31, 31, CELADON_CAFE, 1
	warp_event 35, 31, CELADON_CHIEF_HOUSE, 1
	warp_event 43, 31, CELADON_HOTEL_1F, 1
	warp_event 11, 13, CELADON_DEPT_STORE_1F, 2
	warp_event  5, 32, CELADON_UNIVERSITY_1F, 1
	warp_event 33, 11, EUSINES_HOUSE, 1
	warp_event 39, 21, CELADON_OLD_MAN_SPEECH_HOUSE, 1
	warp_event 43, 21, CELADON_DEVELOPMENT_SPEECH_HOUSE, 1
	warp_event 10,  3, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	itemball_event 45, 18, POKE_BALL, 1, -1
	treebase_left_event_1 10,  2, SECRET_BASE_CELADON_CITY, EVENT_SECRET_BASE_CELADON_CITY
	treebase_left_event_2 10,  2, SECRET_BASE_CELADON_CITY, EVENT_SECRET_BASE_CELADON_CITY_ESTABLISHED
	cuttree_event 46, 22, -1
	cuttree_event 35, 36, -1

	const_def 1 ; object constants

CeladonCityFlyPoint:
	setflag ENGINE_FLYPOINT_CELADON
	return
