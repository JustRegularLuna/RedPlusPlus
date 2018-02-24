SafariZoneNorth_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 13 ; warp events
	warp_event 41,  7, SAFARI_ZONE_NORTH_REST_HOUSE, 1
	warp_event 47, 36, SAFARI_ZONE_EAST, 5
	warp_event 47, 37, SAFARI_ZONE_EAST, 6
	warp_event 47, 38, SAFARI_ZONE_EAST, 7
	warp_event  4, 39, SAFARI_ZONE_WEST, 3
	warp_event  5, 39, SAFARI_ZONE_WEST, 4
	warp_event  6, 39, SAFARI_ZONE_WEST, 5
	warp_event 13, 39, SAFARI_ZONE_WEST, 6
	warp_event 14, 39, SAFARI_ZONE_WEST, 7
	warp_event 15, 39, SAFARI_ZONE_WEST, 8
	warp_event 25, 39, SAFARI_ZONE_HUB, 10
	warp_event 26, 39, SAFARI_ZONE_HUB, 11
	warp_event 27, 39, SAFARI_ZONE_HUB, 12

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
