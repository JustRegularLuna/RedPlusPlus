SilverCaveRoom2_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 17, 31, SILVER_CAVE_ROOM_1, 2
	warp_event 11,  5, SILVER_CAVE_ROOM_3, 1
	warp_event 13, 21, SILVER_CAVE_ITEM_ROOMS, 1
	warp_event 23,  3, SILVER_CAVE_ITEM_ROOMS, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
