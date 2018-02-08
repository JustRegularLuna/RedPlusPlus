Route35_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 13, 33, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 14, 33, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  7,  5, ROUTE_35_NATIONAL_PARK_GATE, 3
	warp_event 14, 16, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
