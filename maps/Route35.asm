Route35_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 13, 33, ROUTE_35_GOLDENROD_GATE, 1
	warp_event 14, 33, ROUTE_35_GOLDENROD_GATE, 2
	warp_event  7,  5, ROUTE_35_NATIONAL_PARK_GATE, 3
	warp_event 14, 16, HIDDEN_TREE_GROTTO, 1
	warp_event  9, 28, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	itemball_event 17, 12, POKE_BALL, 1, -1
	fruittree_event  6, 25, FRUITTREE_ROUTE_35, ORAN_BERRY
	cuttree_event 21,  6, -1
	treebase_right_event_1 15, 16, SECRET_BASE_ROUTE_35, EVENT_SECRET_BASE_ROUTE_35
	treebase_right_event_2 15, 16, SECRET_BASE_ROUTE_35, EVENT_SECRET_BASE_ROUTE_35_ESTABLISHED

	const_def 1 ; object constants
