Route19_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  8,  3, ROUTE_19_FUCHSIA_GATE, 3
	warp_event  5, 15, ROUTE_19_BEACH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	smashrock_event  6,  6
	smashrock_event 11,  5
	smashrock_event 12, 12

	const_def 1 ; object constants
