Route36_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 22,  8, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event 22,  9, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 51, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 52, 13, ROUTE_36_RUINS_OF_ALPH_GATE, 2
	warp_event 61,  8, ROUTE_36_VIOLET_GATE, 1
	warp_event 61,  9, ROUTE_36_VIOLET_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
