Route32_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 15, 77, ROUTE_32_POKECENTER_1F, 1
	warp_event  8,  6, ROUTE_32_RUINS_OF_ALPH_GATE, 3
	warp_event  8,  7, ROUTE_32_RUINS_OF_ALPH_GATE, 4
	warp_event 10, 83, UNION_CAVE_1F, 4
	warp_event 17,  1, VIOLET_CITY, 12
	warp_event  9, 28, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	itemball_event 17, 71, POKE_BALL, 1, -1
	itemball_event 19, 89, POKE_BALL, 1, -1
	cuttree_event 14, 23, -1
	smashrock_event 18, 89
	treebase_right_event_1  9, 27, SECRET_BASE_ROUTE_32, EVENT_SECRET_BASE_ROUTE_32
	treebase_right_event_2  9, 27, SECRET_BASE_ROUTE_32, EVENT_SECRET_BASE_ROUTE_32_ESTABLISHED
	object_event  4,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  5,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  6,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  7,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
