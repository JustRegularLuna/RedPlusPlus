SafariZoneEast_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 7 ; warp events
	warp_event 35, 15, SAFARI_ZONE_EAST_REST_HOUSE, 1
	warp_event  4, 28, SAFARI_ZONE_HUB, 4
	warp_event  4, 29, SAFARI_ZONE_HUB, 5
	warp_event  4, 30, SAFARI_ZONE_HUB, 6
	warp_event  4,  8, SAFARI_ZONE_NORTH, 2
	warp_event  4,  9, SAFARI_ZONE_NORTH, 3
	warp_event  4, 10, SAFARI_ZONE_NORTH, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
