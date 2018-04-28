MahoganyTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 11,  9, MAHOGANY_MART_1F, 1
	warp_event 17,  9, MAHOGANY_RED_GYARADOS_SPEECH_HOUSE, 1
	warp_event  6, 16, MAHOGANY_GYM, 1
	warp_event 15, 15, MAHOGANY_POKECENTER_1F, 1
	warp_event  9,  3, ROUTE_43_MAHOGANY_GATE, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
