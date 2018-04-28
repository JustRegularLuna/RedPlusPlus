ElmsHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  7,  4, NEW_BARK_TOWN, 5
	warp_event  7,  5, NEW_BARK_TOWN, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
