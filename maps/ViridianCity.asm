ViridianCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 32,  7, VIRIDIAN_GYM, 1
	warp_event 21,  5, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 23, 15, TRAINER_HOUSE_1F, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1
	warp_event 28, 33, ROUTE_1_VIRIDIAN_GATE, 1
	warp_event 29, 33, ROUTE_1_VIRIDIAN_GATE, 2
	warp_event 21,  9, VIRIDIAN_SCHOOL_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
