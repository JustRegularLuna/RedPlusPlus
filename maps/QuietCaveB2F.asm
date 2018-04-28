QuietCaveB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 21,  3, QUIET_CAVE_B1F, 6
	warp_event 17, 25, QUIET_CAVE_B1F, 7
	warp_event 23, 33, QUIET_CAVE_B1F, 8
	warp_event 29,  3, QUIET_CAVE_B1F, 9
	warp_event 10, 31, QUIET_CAVE_B3F, 1
	warp_event 33,  5, QUIET_CAVE_B3F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
