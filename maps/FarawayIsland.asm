FarawayIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 22,  8, FARAWAY_JUNGLE, 1
	warp_event 23,  8, FARAWAY_JUNGLE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
