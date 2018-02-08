QuietCaveB3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  8, 31, QUIET_CAVE_B2F, 5 ; hole
	warp_event 33,  7, QUIET_CAVE_B2F, 6
	warp_event 15,  9, QUIET_CAVE_B3F, 4
	warp_event  5, 11, QUIET_CAVE_B3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
