UndergroundWarehouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2, 12, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 2
	warp_event  3, 12, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 3
	warp_event 17,  2, GOLDENROD_DEPT_STORE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
