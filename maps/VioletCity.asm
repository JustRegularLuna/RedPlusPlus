VioletCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 13 ; warp events
	warp_event  9, 23, VIOLET_MART, 2
	warp_event 18, 23, VIOLET_GYM, 1
	warp_event 30, 23, EARLS_POKEMON_ACADEMY, 1
	warp_event  3, 21, VIOLET_NICKNAME_SPEECH_HOUSE, 1
	warp_event 31, 31, VIOLET_POKECENTER_1F, 1
	warp_event 21, 35, VIOLET_ONIX_TRADE_HOUSE, 1
	warp_event 23,  5, SPROUT_TOWER_1F, 1
	warp_event 39, 30, ROUTE_31_VIOLET_GATE, 1
	warp_event 39, 31, ROUTE_31_VIOLET_GATE, 2
	warp_event  2, 14, ROUTE_36_VIOLET_GATE, 3
	warp_event  2, 15, ROUTE_36_VIOLET_GATE, 4
	warp_event 13, 39, ROUTE_32, 5
	warp_event 14, 39, ROUTE_32, 5

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	itemball_event 12,  7, POKE_BALL, 1, -1
	itemball_event 36, 12, POKE_BALL, 1, -1
	cuttree_event 36, 27, -1
	fruittree_event 11, 34, FRUITTREE_VIOLET_CITY, ORAN_BERRY
	object_event 40, 31, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 41, 31, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 42, 31, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 43, 31, SPRITE_SIGN_FENCE_TREETOP, SPRITEMOVEDATA_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1

	const_def 1 ; object constants
