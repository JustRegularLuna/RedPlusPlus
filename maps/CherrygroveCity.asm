CherrygroveCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 23,  3, CHERRYGROVE_MART, 2
	warp_event 29,  3, CHERRYGROVE_POKECENTER_1F, 1
	warp_event 17,  8, CHERRYGROVE_GYM_SPEECH_HOUSE, 1
	warp_event 25,  9, GUIDE_GENTS_HOUSE, 1
	warp_event 31, 11, CHERRYGROVE_EVOLUTION_SPEECH_HOUSE, 1
	warp_event  6,  4, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 36,  2, SIGNPOST_ITEM + POTION, -1

	db 1 ; object events
	cavebase_event  6,  3, SECRET_BASE_CHERRYGROVE_CITY, EVENT_SECRET_BASE_CHERRYGROVE_CITY

	const_def 1 ; object constants
