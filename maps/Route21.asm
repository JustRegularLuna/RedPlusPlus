Route21_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 14,  2, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	treebase_left_event_1 14,  1, SECRET_BASE_ROUTE_21, EVENT_SECRET_BASE_ROUTE_21
	treebase_left_event_2 14,  1, SECRET_BASE_ROUTE_21, EVENT_SECRET_BASE_ROUTE_21_ESTABLISHED

	const_def 1 ; object constants
