Route15_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4,  8, ROUTE_15_FUCHSIA_GATE, 3
	warp_event  4,  9, ROUTE_15_FUCHSIA_GATE, 4
	warp_event 42,  4, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	treebase_left_event_1 42,  3, SECRET_BASE_ROUTE_15, EVENT_SECRET_BASE_ROUTE_15
	treebase_left_event_2 42,  3, SECRET_BASE_ROUTE_15, EVENT_SECRET_BASE_ROUTE_15_ESTABLISHED
	cuttree_event 53,  6, -1 ; visible on Route14

	const_def 1 ; object constants
