StormyBeach_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 30,  5, MURKY_SWAMP, 1
	warp_event 31,  5, MURKY_SWAMP, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	smashrock_event 16,  6
	smashrock_event 17,  7
	smashrock_event 12,  9
	smashrock_event 18, 10

	const_def 1 ; object constants
