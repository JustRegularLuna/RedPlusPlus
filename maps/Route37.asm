Route37_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 0 ; warp events

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	fruittree_event 13,  5, FRUITTREE_ROUTE_37_1, RED_APRICORN
	fruittree_event 16,  5, FRUITTREE_ROUTE_37_2, BLU_APRICORN
	fruittree_event 15,  7, FRUITTREE_ROUTE_37_3, BLK_APRICORN
	object_event  6,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_OVERHEAD_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  7,  9, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_OVERHEAD_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
