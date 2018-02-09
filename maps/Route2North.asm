Route2North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 15, 19, ROUTE_2_NUGGET_SPEECH_HOUSE, 1
	warp_event 16, 35, ROUTE_2_GATE, 1
	warp_event 17, 35, ROUTE_2_GATE, 2
	warp_event 12,  9, DIGLETTS_CAVE, 3
	warp_event  1, 11, VIRIDIAN_FOREST_PEWTER_GATE, 3
	warp_event  2, 11, VIRIDIAN_FOREST_PEWTER_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
