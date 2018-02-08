UndergroundPathSwitchRoomEntrances_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 23,  3, WAREHOUSE_ENTRANCE, 6
	warp_event 22, 10, UNDERGROUND_WAREHOUSE, 1
	warp_event 23, 10, UNDERGROUND_WAREHOUSE, 2
	warp_event  5, 23, WAREHOUSE_ENTRANCE, 2
	warp_event  4, 27, GOLDENROD_CITY, 14
	warp_event  5, 27, GOLDENROD_CITY, 14
	warp_event 21, 23, WAREHOUSE_ENTRANCE, 1
	warp_event 20, 27, GOLDENROD_CITY, 13
	warp_event 21, 27, GOLDENROD_CITY, 13

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
