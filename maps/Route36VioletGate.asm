Route36VioletGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, ROUTE_36, 5
	warp_event  0,  5, ROUTE_36, 6
	warp_event  9,  4, VIOLET_CITY, 10
	warp_event  9,  5, VIOLET_CITY, 11

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
