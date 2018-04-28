NoisyForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  6,  4, ROCKY_BEACH, 2
	warp_event  6,  5, ROCKY_BEACH, 3
	warp_event 35, 28, SHAMOUTI_SHRINE_RUINS, 1
	warp_event 35, 29, SHAMOUTI_SHRINE_RUINS, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
