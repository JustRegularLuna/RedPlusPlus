Route38_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 35,  8, ROUTE_38_ECRUTEAK_GATE, 1
	warp_event 35,  9, ROUTE_38_ECRUTEAK_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
