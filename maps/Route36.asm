Route36_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  6, 10, ROUTE_36_NATIONAL_PARK_GATE, 3
	warp_event  6, 11, ROUTE_36_NATIONAL_PARK_GATE, 4
	warp_event 35, 15, ROUTE_36_RUINS_OF_ALPH_GATE, 1
	warp_event 36, 15, ROUTE_36_RUINS_OF_ALPH_GATE, 2
	warp_event 43, 10, ROUTE_36_VIOLET_GATE, 1
	warp_event 43, 11, ROUTE_36_VIOLET_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 6 ; object events
	cuttree_event 22, 10, -1
	fruittree_event  9,  6, FRUITTREE_ROUTE_36, ORAN_BERRY
	object_event 44, 11, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 45, 11, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 46, 11, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 47, 11, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
