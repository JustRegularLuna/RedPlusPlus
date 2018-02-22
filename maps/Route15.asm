Route15_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4,  8, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  4,  9, ROUTE_15_FUCHSIA_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 1 ; object events
	cuttree_event 53,  6, -1 ; visible on Route14

	const_def 1 ; object constants
