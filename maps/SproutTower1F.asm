SproutTower1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  7, 15, VIOLET_CITY, 7
	warp_event  8, 15, VIOLET_CITY, 7
	warp_event  4,  4, SPROUT_TOWER_2F, 1
	warp_event  0,  6, SPROUT_TOWER_2F, 2
	warp_event 15,  3, SPROUT_TOWER_2F, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
