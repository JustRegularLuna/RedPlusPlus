BlackthornCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 20, 14, BLACKTHORN_GYM_1F, 1
	warp_event 15, 23, BLACKTHORN_DRAGON_SPEECH_HOUSE, 1
	warp_event 31, 25, BLACKTHORN_EMYS_HOUSE, 1
	warp_event 17, 31, BLACKTHORN_MART, 2
	warp_event 23, 31, BLACKTHORN_POKECENTER_1F, 1
	warp_event 11, 31, MOVE_DELETERS_HOUSE, 1
	warp_event 38, 11, ICE_PATH_1F, 2
	warp_event 22,  3, DRAGONS_DEN_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
