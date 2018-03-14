Route13_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 15,  4, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	treebase_right_event_1 15,  3, SECRET_BASE_ROUTE_13, EVENT_SECRET_BASE_ROUTE_13
	treebase_right_event_2 15,  3, SECRET_BASE_ROUTE_13, EVENT_SECRET_BASE_ROUTE_13_ESTABLISHED
	cuttree_event 54,  4, -1

	const_def 1 ; object constants
