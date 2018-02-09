NationalPark_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 35, 18, ROUTE_36_NATIONAL_PARK_GATE, 1
	warp_event 35, 19, ROUTE_36_NATIONAL_PARK_GATE, 2
	warp_event 12, 47, ROUTE_35_NATIONAL_PARK_GATE, 1
	warp_event 13, 47, ROUTE_35_NATIONAL_PARK_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
