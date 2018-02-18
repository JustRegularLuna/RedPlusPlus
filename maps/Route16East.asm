Route16East_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4, 10, ROUTE_16_17_GATE, 3
	warp_event  4, 11, ROUTE_16_17_GATE, 4
	warp_event  4,  2, ROUTE_16_GATE, 3
	warp_event  4,  3, ROUTE_16_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
