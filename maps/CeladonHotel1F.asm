CeladonHotel1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  3,  7, CELADON_CITY, 11
	warp_event  4,  7, CELADON_CITY, 11
	warp_event 16,  0, CELADON_HOTEL_2F, 1
	warp_event 12,  0, CELADON_HOTEL_POOL, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
