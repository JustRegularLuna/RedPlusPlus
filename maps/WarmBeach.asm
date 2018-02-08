WarmBeach_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 15, 13, WARM_BEACH_SHACK, 1
	warp_event  8,  5, SHAMOUTI_TUNNEL, 2
	warp_event  3,  8, WARM_BEACH_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
