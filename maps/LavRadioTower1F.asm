LavRadioTower1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, LAVENDER_TOWN, 7
	warp_event  3,  7, LAVENDER_TOWN, 7
	warp_event 15,  0, LAV_RADIO_TOWER_2F, 255

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
