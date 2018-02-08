Route12South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 11, 57, ROUTE_12_SUPER_ROD_HOUSE, 1
	warp_event  0, 42, ROUTE_11_GATE, 3
	warp_event  0, 43, ROUTE_11_GATE, 4
	warp_event 10,  1, ROUTE_12_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
