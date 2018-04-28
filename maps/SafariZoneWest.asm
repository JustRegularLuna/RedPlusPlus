SafariZoneWest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 11 ; warp events
	warp_event 10,  9, SAFARI_ZONE_WEST_REST_HOUSE_1, 1
	warp_event 19, 19, SAFARI_ZONE_WEST_REST_HOUSE_2, 1
	warp_event 29,  4, SAFARI_ZONE_NORTH, 5
	warp_event 30,  4, SAFARI_ZONE_NORTH, 6
	warp_event 31,  4, SAFARI_ZONE_NORTH, 7
	warp_event 35,  4, SAFARI_ZONE_NORTH, 8
	warp_event 36,  4, SAFARI_ZONE_NORTH, 9
	warp_event 37,  4, SAFARI_ZONE_NORTH, 10
	warp_event 39, 30, SAFARI_ZONE_HUB, 7
	warp_event 39, 31, SAFARI_ZONE_HUB, 8
	warp_event 39, 32, SAFARI_ZONE_HUB, 9

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
