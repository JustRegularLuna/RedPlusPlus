GoldenrodCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 20 ; warp events
	warp_event 28,  8, GOLDENROD_GYM, 1
	warp_event 28, 15, GOLDENROD_MUSEUM_1F, 2
	warp_event 35, 15, GOLDENROD_HAPPINESS_RATER, 1
	warp_event  9, 25, GOLDENROD_BILLS_HOUSE, 1
	warp_event 18, 14, GOLDENROD_MAGNET_TRAIN_STATION, 2
	warp_event 33,  5, GOLDENROD_FLOWER_SHOP, 1
	warp_event 37,  9, GOLDENROD_PP_SPEECH_HOUSE, 1
	warp_event 19,  7, GOLDENROD_NAME_RATER, 1
	warp_event 28, 27, GOLDENROD_DEPT_STORE_1F, 1
	warp_event 18, 21, GOLDENROD_GAME_CORNER, 1
	warp_event  9, 15, RADIO_TOWER_1F, 1
	warp_event 23,  1, ROUTE_35_GOLDENROD_GATE, 3
	warp_event 13,  5, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 8
	warp_event 15, 29, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 5
	warp_event 19, 27, GOLDENROD_POKECENTER_1F, 1
	warp_event  4, 16, GOLDENROD_HARBOR_GATE, 3
	warp_event  4, 17, GOLDENROD_HARBOR_GATE, 4
	warp_event 39, 24, GOLDENROD_NET_BALL_HOUSE, 1
	warp_event 23, 35, ROUTE_34, 6
	warp_event 24, 35, ROUTE_34, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
