Route7SaffronGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  4, ROUTE_7, 1
	warp_event  0,  5, ROUTE_7, 2
	warp_event  9,  4, SAFFRON_CITY, 10
	warp_event  9,  5, SAFFRON_CITY, 11

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
