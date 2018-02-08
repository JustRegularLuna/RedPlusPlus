RockyBeach_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 25, 20, ROCKY_BEACH_HOUSE, 1
	warp_event 29, 10, NOISY_FOREST, 1
	warp_event 29, 11, NOISY_FOREST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
