CinnabarIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 11, 15, CINNABAR_POKECENTER_1F, 1
	warp_event 18,  9, CINNABAR_VOLCANO_1F, 1
	warp_event  7,  7, POKEMON_MANSION_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
