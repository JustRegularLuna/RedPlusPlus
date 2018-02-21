Route16North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 17,  2, ROUTE_16_GATE, 1
	warp_event 17,  3, ROUTE_16_GATE, 2
	warp_event  7,  3, ROUTE_16_FUCHSIA_SPEECH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
