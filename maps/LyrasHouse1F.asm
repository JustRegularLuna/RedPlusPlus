LyrasHouse1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4
	warp_event  0,  0, LYRAS_HOUSE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
