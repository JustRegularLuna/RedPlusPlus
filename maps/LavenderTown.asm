LavenderTown_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, LavenderTownFlyPoint

	db 5 ; warp events
	warp_event  3,  5, LAVENDER_POKECENTER_1F, 1
	warp_event  9,  9, MR_FUJIS_HOUSE, 1
	warp_event  5, 15, LAVENDER_TOWN_SPEECH_HOUSE, 1
	warp_event  9, 15, LAVENDER_NAME_RATER, 1
	warp_event 17, 15, LAVENDER_MART, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants

LavenderTownFlyPoint:
	setflag ENGINE_FLYPOINT_LAVENDER
	return
