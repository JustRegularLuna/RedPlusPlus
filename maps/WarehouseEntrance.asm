WarehouseEntrance_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  1,  2, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 7
	warp_event  1, 34, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 4
	warp_event 16,  6, WAREHOUSE_ENTRANCE, 4
	warp_event 13, 35, WAREHOUSE_ENTRANCE, 3
	warp_event 14, 35, WAREHOUSE_ENTRANCE, 3
	warp_event 14, 31, UNDERGROUND_PATH_SWITCH_ROOM_ENTRANCES, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
