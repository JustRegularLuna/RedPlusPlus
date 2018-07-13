Route2South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 16,  1, ROUTE_2_GATE, 3
	warp_event  3,  5, VIRIDIAN_FOREST_VIRIDIAN_GATE, 3
	warp_event 12,  7, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5, 27, SIGNPOST_JUMPTEXT, Route2Text3

	db 7 ; object events
	treebase_left_event_1 12,  6, SECRET_BASE_ROUTE_2_SOUTH, EVENT_SECRET_BASE_ROUTE_2_SOUTH
	treebase_left_event_2 12,  6, SECRET_BASE_ROUTE_2_SOUTH, EVENT_SECRET_BASE_ROUTE_2_SOUTH_ESTABLISHED
	itemball_event 14, 17, MOON_STONE, 1, EVENT_ROUTE_2_MOON_STONE
	itemball_event 13,  8, HP_UP, 1, EVENT_ROUTE_2_HP_UP
	cuttree_event 12, 15, -1
	cuttree_event 12, 22, -1
	cuttree_event 12, 31, -1

	const_def 1 ; object constants

Route2Text3:
	text "Route 2"
	line "Viridian City -"
	cont "Pewter City"
	done
