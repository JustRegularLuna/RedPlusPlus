LavenderTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 7 ; warp events
	warp_event  5,  7, LAVENDER_POKECENTER_1F, 1
	warp_event  5, 11, MR_FUJIS_HOUSE, 1
	warp_event  3, 15, LAVENDER_TOWN_SPEECH_HOUSE, 1
	warp_event  7, 15, LAVENDER_NAME_RATER, 1
	warp_event  1,  7, LAVENDER_MART, 2
	warp_event 13, 13, SOUL_HOUSE, 1
	warp_event 14,  7, LAV_RADIO_TOWER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
