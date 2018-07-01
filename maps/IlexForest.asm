IlexForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  6,  9, ROUTE_34_ILEX_FOREST_GATE, 3
	warp_event  7, 46, ILEX_FOREST_AZALEA_GATE, 1
	warp_event  7, 47, ILEX_FOREST_AZALEA_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event 18, 20, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_UP, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  9, 47, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_UP, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 12, 47, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_UP, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	cuttree_event 12, 31, -1

	const_def 1 ; object constants
