SafariZoneHub_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 12 ; warp events
	warp_event 20, 31, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 21, 31, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 23, 25, SAFARI_ZONE_HUB_REST_HOUSE, 1
	warp_event 37, 16, SAFARI_ZONE_EAST, 2
	warp_event 37, 17, SAFARI_ZONE_EAST, 3
	warp_event 37, 18, SAFARI_ZONE_EAST, 4
	warp_event  4, 18, SAFARI_ZONE_WEST, 9
	warp_event  4, 19, SAFARI_ZONE_WEST, 10
	warp_event  4, 20, SAFARI_ZONE_WEST, 11
	warp_event 18,  4, SAFARI_ZONE_NORTH, 11
	warp_event 19,  4, SAFARI_ZONE_NORTH, 12
	warp_event 20,  4, SAFARI_ZONE_NORTH, 13

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
