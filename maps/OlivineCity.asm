OlivineCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 12 ; warp events
	warp_event 13, 17, OLIVINE_POKECENTER_1F, 1
	warp_event 10,  7, OLIVINE_GYM, 1
	warp_event 25,  7, OLIVINE_TIMS_HOUSE, 1
	warp_event 29,  7, OLIVINE_PUNISHMENT_SPEECH_HOUSE, 1
	warp_event 13, 11, OLIVINE_GOOD_ROD_HOUSE, 1
	warp_event  7, 17, OLIVINE_CAFE, 1
	warp_event 19, 13, OLIVINE_MART, 2
	warp_event 33, 19, OLIVINE_LIGHTHOUSE_1F, 1
	warp_event 19, 31, OLIVINE_PORT_PASSAGE, 1
	warp_event 20, 31, OLIVINE_PORT_PASSAGE, 2
	warp_event 57, 30, ROUTE_35_NATIONAL_PARK_GATE, 5
	warp_event 57, 31, ROUTE_35_NATIONAL_PARK_GATE, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
