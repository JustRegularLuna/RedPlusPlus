CeruleanCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCityFlyPoint

	db 11 ; warp events
	warp_event 11,  9, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
	warp_event 29,  9, CERULEAN_POLICE_STATION, 1
	warp_event 15, 14, CERULEAN_TRADE_SPEECH_HOUSE, 1
	warp_event 21, 15, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 17, CERULEAN_GYM, 1
	warp_event 27, 23, CERULEAN_MART, 2
	warp_event  2,  9, CERULEAN_CAVE_1F, 1
	warp_event 13, 23, CERULEAN_BIKE_SHOP, 1
	warp_event 17,  9, CERULEAN_BERRY_POWDER_HOUSE, 1
	warp_event 21, 23, CERULEAN_COUPLE_HOUSE, 1
	warp_event 37,  8, CERULEAN_WATER_SHOW_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cuttree_event 25, 26, -1

	const_def 1 ; object constants

CeruleanCityFlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	return
