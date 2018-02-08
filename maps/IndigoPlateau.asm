IndigoPlateau_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  9,  5, INDIGO_PLATEAU_POKECENTER_1F, 1
	warp_event 10,  5, INDIGO_PLATEAU_POKECENTER_1F, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
