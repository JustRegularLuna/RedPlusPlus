SoulHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4,  9, LAVENDER_TOWN, 6
	warp_event  5,  9, LAVENDER_TOWN, 6
	warp_event  4,  2, SOUL_HOUSE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
