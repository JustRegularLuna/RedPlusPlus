CinnabarVolcanoB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 12 ; warp events
	warp_event  9, 17, CINNABAR_VOLCANO_1F, 2
	warp_event 19, 25, CINNABAR_VOLCANO_1F, 3
	warp_event 29, 25, CINNABAR_VOLCANO_1F, 4
	warp_event 27, 13, CINNABAR_VOLCANO_1F, 5
	warp_event 19,  3, CINNABAR_VOLCANO_B2F, 1
	warp_event 33, 21, CINNABAR_VOLCANO_B2F, 2
	warp_event  8,  9, CINNABAR_VOLCANO_B2F, 3
	warp_event 12, 24, CINNABAR_VOLCANO_1F, 6 ; hole
	warp_event 24, 24, CINNABAR_VOLCANO_1F, 7 ; hole
	warp_event 23, 13, CINNABAR_VOLCANO_1F, 8 ; hole
	warp_event 15, 11, CINNABAR_VOLCANO_1F, 9 ; hole
	warp_event 20,  8, CINNABAR_VOLCANO_1F, 10

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
