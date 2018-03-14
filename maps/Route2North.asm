Route2North_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 7 ; warp events
	warp_event 15, 17, ROUTE_2_NUGGET_SPEECH_HOUSE, 1
	warp_event 16, 33, ROUTE_2_GATE, 1
	warp_event 17, 33, ROUTE_2_GATE, 2
	warp_event 12,  7, DIGLETTS_CAVE, 3
	warp_event  1,  9, VIRIDIAN_FOREST_PEWTER_GATE, 3
	warp_event  2,  9, VIRIDIAN_FOREST_PEWTER_GATE, 4
	warp_event 15,  0, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 11,  9, SIGNPOST_JUMPTEXT, Route2Text4

	db 9 ; object events
	treebase_right_event_1 15, -1, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH
	treebase_right_event_2 15, -1, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH_ESTABLISHED
	fruittree_event  7, 11, FRUITTREE_ROUTE_2, ORAN_BERRY
	cuttree_event  5,  8, -1
	cuttree_event 15, 20, -1
	object_event  0, 13, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  1, 13, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  2, 13, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  3, 13, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants

Route2Text4:
	text "Diglett's Cave"
	done
