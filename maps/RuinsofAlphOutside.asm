RuinsofAlphOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 11 ; warp events
	warp_event  6, 27, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 18, 15, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  6, 39, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 20, 43, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 15, 22, RUINS_OF_ALPH_ENTRANCE_CHAMBER, 1
	warp_event 21, 21, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event 10, 29, UNION_CAVE_B1F_NORTH, 1
	warp_event 10, 37, UNION_CAVE_B1F_NORTH, 2
	warp_event  5,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 17, 30, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 17, 31, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	itemball_event  4, 23, POKE_BALL, 1, -1
	smashrock_event  9, 13
	smashrock_event 12, 14
	smashrock_event  6, 15
	smashrock_event 11, 15
	smashrock_event  8, 16
	object_event 18, 33, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 19, 33, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 20, 33, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 21, 33, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
