NewBarkTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  8,  3, ELMS_LAB, 1
	warp_event 17,  5, KRISS_HOUSE_1F, 1
	warp_event  5, 12, KRISS_NEIGHBORS_HOUSE, 1
	warp_event 13, 13, LYRAS_HOUSE_1F, 1
	warp_event 12,  2, ELMS_HOUSE, 2

	db 0 ; coord events

	db 1 ; bg events
	bg_event  5,  2, SIGNPOST_ITEM + POTION, -1

	db 0 ; object events

	const_def 1 ; object constants
