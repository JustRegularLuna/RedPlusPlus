PewterCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 7 ; warp events
	warp_event 29, 15, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 12, 21, PEWTER_GYM, 1
	warp_event 23, 21, PEWTER_MART, 2
	warp_event 13, 29, PEWTER_POKECENTER_1F, 1
	warp_event  7, 33, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 14, 11, PEWTER_MUSEUM_OF_SCIENCE_1F, 1
	warp_event 20,  8, PEWTER_MUSEUM_OF_SCIENCE_1F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
