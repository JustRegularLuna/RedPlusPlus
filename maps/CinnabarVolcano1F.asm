CinnabarVolcano1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 10 ; warp events
	warp_event 13, 25, CINNABAR_ISLAND, 2
	warp_event  5, 13, CINNABAR_VOLCANO_B1F, 1
	warp_event 14, 20, CINNABAR_VOLCANO_B1F, 2
	warp_event 25, 19, CINNABAR_VOLCANO_B1F, 3
	warp_event 22,  8, CINNABAR_VOLCANO_B1F, 4
	warp_event  8, 21, CINNABAR_VOLCANO_B1F, 8
	warp_event 20, 19, CINNABAR_VOLCANO_B1F, 9
	warp_event 18,  9, CINNABAR_VOLCANO_B1F, 10
	warp_event 10,  7, CINNABAR_VOLCANO_B1F, 11
	warp_event 15,  3, CINNABAR_VOLCANO_B1F, 12

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
