Route31_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4,  6, ROUTE_31_VIOLET_GATE, 3
	warp_event  4,  7, ROUTE_31_VIOLET_GATE, 4
	warp_event 34,  5, DARK_CAVE_VIOLET_ENTRANCE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	itemball_event 29,  5, POKE_BALL, 1, -1
	itemball_event 19, 15, POKE_BALL, 1, -1
	cuttree_event 13,  5, -1
	cuttree_event 25, 10, -1
	fruittree_event 16,  7, FRUITTREE_ROUTE_31, ORAN_BERRY
	object_event  0,  7, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  1,  7, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  2,  7, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  3,  7, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
