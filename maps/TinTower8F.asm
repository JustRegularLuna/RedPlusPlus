TinTower8F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  0,  5, TIN_TOWER_7F, 2
	warp_event  0, 11, TIN_TOWER_9F, 1
	warp_event 14,  7, TIN_TOWER_9F, 2
	warp_event  8,  3, TIN_TOWER_9F, 3
	warp_event 12, 15, TIN_TOWER_9F, 6
	warp_event  4,  9, TIN_TOWER_9F, 7

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
