EcruteakHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  4, 17, ECRUTEAK_CITY, 3
	warp_event  5, 17, ECRUTEAK_CITY, 3
	warp_event  5,  3, ECRUTEAK_HOUSE, 4
	warp_event 17, 15, ECRUTEAK_HOUSE, 3
	warp_event 17,  3, WISE_TRIOS_ROOM, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
