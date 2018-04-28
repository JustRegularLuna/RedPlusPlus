ShamoutiIsland_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 21, 13, SHAMOUTI_POKECENTER_1F, 1
	warp_event 33,  5, SHAMOUTI_HOTEL_1F, 1
	warp_event 16,  7, SHAMOUTI_TUNNEL, 1
	warp_event 27,  5, SHAMOUTI_TOURIST_CENTER, 1
	warp_event 31, 12, SHAMOUTI_HOUSE, 1
	warp_event  9, 13, SHAMOUTI_MERCHANT, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
