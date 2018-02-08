PalletTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
