Route34_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 13, 37, ROUTE_34_ILEX_FOREST_GATE, 1
	warp_event 14, 37, ROUTE_34_ILEX_FOREST_GATE, 2
	warp_event 11, 14, DAYCARE, 1
	warp_event 11, 15, DAYCARE, 2
	warp_event 13, 15, DAYCARE, 3
	warp_event  9,  3, GOLDENROD_CITY, 19

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
