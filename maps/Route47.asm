Route47_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 67, 21, CLIFF_EDGE_GATE, 2
	warp_event 53, 21, CLIFF_CAVE, 1
	warp_event 52, 17, CLIFF_CAVE, 2
	warp_event 53, 29, CLIFF_CAVE, 3
	warp_event 11, 23, QUIET_CAVE_1F, 1
	warp_event  8, 23, EMBEDDED_TOWER, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
