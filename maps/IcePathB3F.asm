IcePathB3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  3,  5, ICE_PATH_B2F_MAHOGANY_SIDE, 2
	warp_event 15,  5, ICE_PATH_B2F_BLACKTHORN_SIDE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
