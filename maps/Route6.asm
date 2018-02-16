Route6_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 21,  9, ROUTE_6_UNDERGROUND_ENTRANCE, 1
	warp_event 14,  1, ROUTE_6_SAFFRON_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
