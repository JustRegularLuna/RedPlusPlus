Route3South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 57,  3, HIDDEN_TREE_GROTTO, 1
	warp_event 51, 10, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	treebase_right_event_1 57,  2, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE
	treebase_right_event_2 57,  2, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE_ESTABLISHED
	cavebase_event 51,  9, SECRET_BASE_ROUTE_3_CAVE, EVENT_SECRET_BASE_ROUTE_3_CAVE

	const_def 1 ; object constants
