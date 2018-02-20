CinnabarIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 19, 15, CINNABAR_POKECENTER_1F, 1
	warp_event 18,  9, CINNABAR_VOLCANO_1F, 1
	warp_event 10, 15, POKEMON_MANSION_1F, 1
	warp_event 10, 21, CINNABAR_LAB, 1
	warp_event 22,  5, SEAFOAM_GYM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
