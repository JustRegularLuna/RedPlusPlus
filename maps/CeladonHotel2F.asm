CeladonHotel2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 16,  0, CELADON_HOTEL_1F, 3
	warp_event  4,  0, CELADON_HOTEL_ROOM_1, 1
	warp_event  8,  0, CELADON_HOTEL_ROOM_2, 1
	warp_event 12,  0, CELADON_HOTEL_ROOM_3, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
