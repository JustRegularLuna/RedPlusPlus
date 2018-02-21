Route16West_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  6, 10, ROUTE_2_GATE, 5
	warp_event  6, 11, ROUTE_2_GATE, 6
	warp_event 63,  2, ROUTE_16_GATE, 1
	warp_event 63,  3, ROUTE_16_GATE, 2
	warp_event 51,  3, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event 28,  5, PSYCHIC_INVERS_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
