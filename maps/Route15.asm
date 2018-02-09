Route15_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  4, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  2,  5, ROUTE_15_FUCHSIA_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
