SilverCaveItemRooms_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 21, 33, SILVER_CAVE_ROOM_2, 3
	warp_event  5, 27, SILVER_CAVE_ROOM_2, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
