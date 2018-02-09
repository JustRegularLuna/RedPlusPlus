SafariZoneHub_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 16, 27, SAFARI_ZONE_FUCHSIA_GATE, 1
	warp_event 17, 27, SAFARI_ZONE_FUCHSIA_GATE, 2
	warp_event 31, 12, SAFARI_ZONE_EAST, 1
	warp_event 31, 13, SAFARI_ZONE_EAST, 2
	warp_event  2, 12, SAFARI_ZONE_WEST, 5
	warp_event  2, 13, SAFARI_ZONE_WEST, 6
	warp_event 16,  2, SAFARI_ZONE_NORTH, 5
	warp_event 17,  2, SAFARI_ZONE_NORTH, 6
	warp_event 19, 21, SAFARI_ZONE_HUB_REST_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
