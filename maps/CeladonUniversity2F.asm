CeladonUniversity2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 23,  8, CELADON_UNIVERSITY_1F, 3
	warp_event  7,  0, CELADON_UNIVERSITY_CAFETERIA, 1
	warp_event  5,  8, CELADON_UNIVERSITY_WILLOWS_OFFICE, 1
	warp_event 13,  0, CELADON_UNIVERSITY_HYPER_TEST_ROOM, 1
	warp_event 19,  8, CELADON_UNIVERSITY_WESTWOODS_OFFICE, 1
	warp_event 21,  0, CELADON_UNIVERSITY_POOL, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
