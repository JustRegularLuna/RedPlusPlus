FuchsiaCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, FuchsiaCityFlyPoint

	db 11 ; warp events
	warp_event  5, 13, FUCHSIA_MART, 2
	warp_event  6, 28, FUCHSIA_GYM, 1
	warp_event 11, 27, FUCHSIA_BILL_SPEECH_HOUSE, 1
	warp_event 19, 27, FUCHSIA_POKECENTER_1F, 1
	warp_event 27, 27, SAFARI_ZONE_WARDENS_HOME, 1
	warp_event 18,  3, SAFARI_ZONE_FUCHSIA_GATE, 3
	warp_event 47, 18, ROUTE_15_FUCHSIA_GATE, 1
	warp_event 47, 19, ROUTE_15_FUCHSIA_GATE, 2
	warp_event 18, 35, ROUTE_19_FUCHSIA_GATE, 1
	warp_event 19, 35, ROUTE_19_FUCHSIA_GATE, 2
	warp_event 15, 27, FUCHSIA_SAFARI_BALL_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	fruittree_event 16, 15, FRUITTREE_FUCHSIA_CITY, ORAN_BERRY
	cuttree_event 22,  7, -1
	cuttree_event 16, 11, -1
	cuttree_event 18, 19, -1

	const_def 1 ; object constants

FuchsiaCityFlyPoint:
	setflag ENGINE_FLYPOINT_FUCHSIA
	return
