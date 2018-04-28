ViridianForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 21, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 22, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  7,  7, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  8,  6, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_UP, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  9,  7, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	fruittree_event 34,  8, FRUITTREE_VIRIDIAN_FOREST, ORAN_BERRY

	const_def 1 ; object constants
