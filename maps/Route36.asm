Route36_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  6, 10, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event  6, 11, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 35, 15, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 36, 15, ROUTE_36_RUINS_OF_ALPH_GATE, 2
	warp_event 43, 10, ROUTE_36_VIOLET_GATE, 1
	warp_event 43, 11, ROUTE_36_VIOLET_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
