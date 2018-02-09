CeladonCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 16 ; warp events
	warp_event  8,  9, CELADON_DEPT_STORE_1F, 1
	warp_event 20,  9, CELADON_MANSION_1F, 1
	warp_event 20,  3, CELADON_MANSION_1F, 3
	warp_event 21,  3, CELADON_MANSION_1F, 3
	warp_event 33,  9, CELADON_POKECENTER_1F, 1
	warp_event 22, 19, CELADON_GAME_CORNER, 1
	warp_event 27, 19, CELADON_GAME_CORNER_PRIZE_ROOM, 1
	warp_event 14, 29, CELADON_GYM, 1
	warp_event 25, 29, CELADON_CAFE, 1
	warp_event 33, 29, CELADON_CHIEF_HOUSE, 1
	warp_event 37, 29, CELADON_HOTEL_1F, 1
	warp_event 13,  9, CELADON_HOME_DECOR_STORE_1F, 1
	warp_event  4, 29, CELADON_UNIVERSITY_1F, 1
	warp_event 29,  9, EUSINES_HOUSE, 1
	warp_event 33, 19, CELADON_OLD_MAN_SPEECH_HOUSE, 1
	warp_event 37, 19, CELADON_DEVELOPMENT_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
