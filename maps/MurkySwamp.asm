MurkySwamp_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  7, 35, STORMY_BEACH, 1
	warp_event  8, 35, STORMY_BEACH, 2
	warp_event 36,  5, UNION_CAVE_B1F_SOUTH, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
