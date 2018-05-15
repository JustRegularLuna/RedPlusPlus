CinnabarIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, CinnabarIslandFlyPoint

	db 6 ; warp events
	warp_event 19, 17, CINNABAR_POKECENTER_1F, 1
	warp_event 18, 11, CINNABAR_VOLCANO_1F, 1
	warp_event 10, 15, POKEMON_MANSION_1F, 1
	warp_event 10, 21, CINNABAR_LAB_ENTRANCE, 1
	warp_event 22,  7, SEAFOAM_GYM, 1
	warp_event 26, 14, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	cavebase_event 26, 13, SECRET_BASE_CINNABAR_ISLAND, EVENT_SECRET_BASE_CINNABAR_ISLAND
	smashrock_event 18,  9
	smashrock_event 27,  8

	const_def 1 ; object constants

CinnabarIslandFlyPoint:
	setflag ENGINE_FLYPOINT_CINNABAR
	return
