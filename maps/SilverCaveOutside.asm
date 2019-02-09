SilverCaveOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 23, 13, SILVER_CAVE_POKECENTER_1F, 1
	warp_event 18,  5, SILVER_CAVE_ROOM_1, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	cuttree_event 31, 18, -1
	cuttree_event 34, 17, -1

	const_def 1 ; object constants
