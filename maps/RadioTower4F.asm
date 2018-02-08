RadioTower4F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  0, RADIO_TOWER_5F, 1
	warp_event  9,  0, RADIO_TOWER_3F, 2
	warp_event 12,  0, RADIO_TOWER_5F, 2
	warp_event 17,  0, RADIO_TOWER_3F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
