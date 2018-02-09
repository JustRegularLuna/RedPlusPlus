Route16South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  9, 10, ROUTE_16_17_GATE, 1
	warp_event  9, 11, ROUTE_16_17_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
