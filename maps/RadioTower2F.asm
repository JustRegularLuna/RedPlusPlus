RadioTower2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  0,  0, RADIO_TOWER_3F, 1
	warp_event 15,  0, RADIO_TOWER_1F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
