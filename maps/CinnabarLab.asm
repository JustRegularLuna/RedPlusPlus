CinnabarLab_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 25, 14, CINNABAR_ISLAND, 4
	warp_event  2,  6, CINNABAR_LAB, 3
	warp_event 14,  9, CINNABAR_LAB, 2
	warp_event 15,  9, CINNABAR_LAB, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
