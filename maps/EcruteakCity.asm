EcruteakCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 17 ; warp events
	warp_event 35, 26, ROUTE_42_ECRUTEAK_GATE, 1
	warp_event 35, 27, ROUTE_42_ECRUTEAK_GATE, 2
	warp_event 23, 11, ECRUTEAK_HOUSE, 1
	warp_event 17, 11, ECRUTEAK_SHRINE_OUTSIDE, 2
	warp_event 18, 11, ECRUTEAK_SHRINE_OUTSIDE, 3
	warp_event 23, 27, ECRUTEAK_POKECENTER_1F, 1
	warp_event  5, 21, ECRUTEAK_LUGIA_SPEECH_HOUSE, 1
	warp_event 23, 21, DANCE_THEATRE, 1
	warp_event 29, 21, ECRUTEAK_MART, 2
	warp_event  6, 27, ECRUTEAK_GYM, 1
	warp_event 13, 27, ECRUTEAK_ITEMFINDER_HOUSE, 1
	warp_event  5, 17, VALERIES_HOUSE, 1
	warp_event  5,  5, BURNED_TOWER_1F, 1
	warp_event  0, 18, ROUTE_38_ECRUTEAK_GATE, 3
	warp_event  0, 19, ROUTE_38_ECRUTEAK_GATE, 4
	warp_event 29, 27, ECRUTEAK_CHERISH_BALL_HOUSE, 1
	warp_event 13, 17, ECRUTEAK_DESTINY_KNOT_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
