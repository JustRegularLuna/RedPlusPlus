CeruleanCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 11 ; warp events
	warp_event  7, 11, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
	warp_event 28, 13, CERULEAN_POLICE_STATION, 1
	warp_event 13, 15, CERULEAN_TRADE_SPEECH_HOUSE, 1
	warp_event 19, 17, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 19, CERULEAN_GYM, 1
	warp_event 25, 25, CERULEAN_MART, 2
	warp_event  2,  9, CERULEAN_CAVE_1F, 1
	warp_event 14, 25, CERULEAN_BIKE_SHOP, 1
	warp_event 15, 11, CERULEAN_BERRY_POWDER_HOUSE, 1
	warp_event 19, 25, CERULEAN_COUPLE_HOUSE, 1
	warp_event 29,  5, CERULEAN_WATER_SHOW_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
