Route16West_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  4, 10, ROUTE_2_GATE, 5
	warp_event  4, 11, ROUTE_2_GATE, 6
	warp_event 30,  5, PSYCHIC_INVERS_HOUSE, 1
	warp_event 17,  4, HIDDEN_TREE_GROTTO, 1
	warp_event 40, 12, HIDDEN_TREE_GROTTO, 1
	warp_event 27, 10, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	treebase_right_event_1 17,  3, SECRET_BASE_ROUTE_16_TREE_1, EVENT_SECRET_BASE_ROUTE_16_TREE_1
	treebase_right_event_2 17,  3, SECRET_BASE_ROUTE_16_TREE_1, EVENT_SECRET_BASE_ROUTE_16_TREE_1_ESTABLISHED
	treebase_left_event_1 40, 11, SECRET_BASE_ROUTE_16_TREE_2, EVENT_SECRET_BASE_ROUTE_16_TREE_2
	treebase_left_event_2 40, 11, SECRET_BASE_ROUTE_16_TREE_2, EVENT_SECRET_BASE_ROUTE_16_TREE_2_ESTABLISHED
	cavebase_event 27,  9, SECRET_BASE_ROUTE_16_CAVE, EVENT_SECRET_BASE_ROUTE_16_CAVE
	fruittree_event 41,  4, FRUITTREE_ROUTE_16, ORAN_BERRY
	cuttree_event 13,  5, -1

	const_def 1 ; object constants
