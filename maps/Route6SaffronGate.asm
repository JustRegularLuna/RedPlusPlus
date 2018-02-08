Route6SaffronGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, SAFFRON_CITY, 12
	warp_event  5,  0, SAFFRON_CITY, 13
	warp_event  4,  7, ROUTE_6, 2
	warp_event  5,  7, ROUTE_6, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
