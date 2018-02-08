SafariZoneNorth_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 41, 32, SAFARI_ZONE_EAST, 3
	warp_event 41, 33, SAFARI_ZONE_EAST, 4
	warp_event 10, 37, SAFARI_ZONE_WEST, 3
	warp_event 11, 37, SAFARI_ZONE_WEST, 4
	warp_event 22, 37, SAFARI_ZONE_HUB, 7
	warp_event 23, 37, SAFARI_ZONE_HUB, 8
	warp_event 37,  5, SAFARI_ZONE_NORTH_REST_HOUSE, 1
	warp_event  4, 37, SAFARI_ZONE_WEST, 1
	warp_event  5, 37, SAFARI_ZONE_WEST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
