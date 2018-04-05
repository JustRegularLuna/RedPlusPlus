Route32_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 15, 77, ROUTE_32_POKECENTER_1F, 1
	warp_event  8,  6, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  8,  7, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event 10, 83, UNION_CAVE_1F, 4
	warp_event 17,  1, VIOLET_CITY, 12
	warp_event  9, 29, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	itemball_event 17, 71, POKE_BALL, 1, -1
	cuttree_event 14, 23, -1
	treebase_right_event_1  9, 28, SECRET_BASE_ROUTE_32, EVENT_SECRET_BASE_ROUTE_32
	treebase_right_event_2  9, 28, SECRET_BASE_ROUTE_32, EVENT_SECRET_BASE_ROUTE_32_ESTABLISHED

	const_def 1 ; object constants
