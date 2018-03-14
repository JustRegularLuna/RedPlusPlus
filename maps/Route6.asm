Route6_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 25,  9, ROUTE_6_UNDERGROUND_ENTRANCE, 1
	warp_event 18,  1, ROUTE_6_SAFFRON_GATE, 3
	warp_event 10,  2, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	treebase_left_event_1 10,  1, SECRET_BASE_ROUTE_6, EVENT_SECRET_BASE_ROUTE_6
	treebase_left_event_2 10,  1, SECRET_BASE_ROUTE_6, EVENT_SECRET_BASE_ROUTE_6_ESTABLISHED

	const_def 1 ; object constants
