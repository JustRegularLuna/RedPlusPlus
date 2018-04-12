CianwoodCity_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 17, 41, MANIAS_HOUSE, 1
	warp_event  8, 44, CIANWOOD_GYM, 1
	warp_event 23, 43, CIANWOOD_POKECENTER_1F, 1
	warp_event 15, 47, CIANWOOD_PHARMACY, 1
	warp_event  9, 31, CIANWOOD_CITY_PHOTO_STUDIO, 1
	warp_event 15, 36, CIANWOOD_LUGIA_SPEECH_HOUSE, 1
	warp_event  5, 17, STATS_JUDGES_HOUSE, 1
	warp_event  4, 25, CLIFF_EDGE_GATE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
