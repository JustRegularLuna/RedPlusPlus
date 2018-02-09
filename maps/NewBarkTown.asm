NewBarkTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  6,  3, ELMS_LAB, 1
	warp_event 15,  5, KRISS_HOUSE_1F, 1
	warp_event  3, 11, KRISS_NEIGHBORS_HOUSE, 1
	warp_event 11, 13, LYRAS_HOUSE_1F, 1
	warp_event 10,  2, ELMS_HOUSE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
