CeriseIslandEast_MapScriptHeader:
CeriseIslandWest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 30, 21, CERISE_ISLAND_WEST, 2
	warp_event 28, 17, CERISE_ISLAND_EAST, 1
	warp_event 20, 15, CERISE_ISLAND_WEST, 4
	warp_event 16, 19, CERISE_ISLAND_WEST, 3
	warp_event 22, 11, CERISE_ISLAND_WEST, -1

	db 0 ; coord events

	db 0 ; bg events

	db 11 ; object events
	object_event 27, 11, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	smashrock_event 13, 20
	smashrock_event 16, 26
	smashrock_event 17, 15
	smashrock_event 18, 18
	smashrock_event 32, 27
	smashrock_event 33, 22
	smashrock_event 36, 17
	smashrock_event 36, 25
	smashrock_event 37, 13
	smashrock_event 39, 20

	const_def 1 ; object constants
