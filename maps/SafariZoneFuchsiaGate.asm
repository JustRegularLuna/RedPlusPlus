SafariZoneFuchsiaGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, SAFARI_ZONE_HUB, 1
	warp_event  5,  0, SAFARI_ZONE_HUB, 2
	warp_event  4,  7, FUCHSIA_CITY, 6
	warp_event  5,  7, FUCHSIA_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
