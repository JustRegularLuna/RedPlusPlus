CinnabarLabEntrance_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  3,  7, CINNABAR_ISLAND, 4
	warp_event  4,  7, CINNABAR_ISLAND, 4
	warp_event 10,  4, CINNABAR_LAB_MEETING_ROOM, 2
	warp_event 14,  4, CINNABAR_LAB_DEV_ROOM, 2
	warp_event 18,  4, CINNABAR_LAB_TESTING_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
