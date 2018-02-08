Route15FuchsiaGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  0,  5, FUCHSIA_CITY, 7
	warp_event  0,  6, FUCHSIA_CITY, 8
	warp_event  9,  5, ROUTE_15, 1
	warp_event  9,  6, ROUTE_15, 2
	warp_event  8,  8, ROUTE_15_FUCHSIA_GATE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
