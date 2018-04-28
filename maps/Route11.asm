Route11_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 49, 12, ROUTE_11_GATE, 1
	warp_event 49, 13, ROUTE_11_GATE, 2
	warp_event  4,  9, DIGLETTS_CAVE, 1
	warp_event  8,  9, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	treebase_left_event_1  8,  8, SECRET_BASE_ROUTE_11, EVENT_SECRET_BASE_ROUTE_11
	treebase_left_event_2  8,  8, SECRET_BASE_ROUTE_11, EVENT_SECRET_BASE_ROUTE_11_ESTABLISHED
	fruittree_event 48, 17, FRUITTREE_ROUTE_11, ORAN_BERRY

	const_def 1 ; object constants
