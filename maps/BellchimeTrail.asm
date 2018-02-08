BellchimeTrail_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4,  4, WISE_TRIOS_ROOM, 1
	warp_event  4,  5, WISE_TRIOS_ROOM, 2
	warp_event 21,  9, TIN_TOWER_1F, 1 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
