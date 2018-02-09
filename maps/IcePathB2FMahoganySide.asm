IcePathB2FMahoganySide_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 17,  1, ICE_PATH_B1F, 2
	warp_event  9, 11, ICE_PATH_B3F, 1
	warp_event 11,  4, ICE_PATH_B1F, 3
	warp_event  4,  6, ICE_PATH_B1F, 4
	warp_event  4, 12, ICE_PATH_B1F, 5
	warp_event 12, 12, ICE_PATH_B1F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
