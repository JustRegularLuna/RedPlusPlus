CinnabarVolcanoB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 13,  3, CINNABAR_VOLCANO_B1F, 5
	warp_event 25, 19, CINNABAR_VOLCANO_B1F, 6
	warp_event  6,  6, CINNABAR_VOLCANO_B1F, 7 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
