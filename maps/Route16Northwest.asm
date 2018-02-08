Route16Northwest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  1,  1, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1
	warp_event  9,  4, ROUTE_16_GATE, 1
	warp_event  9,  5, ROUTE_16_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
