ShamoutiHotel1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  8,  7, SHAMOUTI_ISLAND, 2
	warp_event  9,  7, SHAMOUTI_ISLAND, 2
	warp_event  2,  0, SHAMOUTI_HOTEL_2F, 1
	warp_event 14,  0, SHAMOUTI_HOTEL_RESTAURANT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
