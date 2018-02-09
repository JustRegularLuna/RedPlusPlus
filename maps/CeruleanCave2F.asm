CeruleanCave2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event 11,  3, CERULEAN_CAVE_1F, 2
	warp_event 31,  3, CERULEAN_CAVE_1F, 3
	warp_event  3,  5, CERULEAN_CAVE_1F, 4
	warp_event 24,  8, CERULEAN_CAVE_1F, 6
	warp_event 21,  9, CERULEAN_CAVE_1F, 7
	warp_event  5, 13, CERULEAN_CAVE_1F, 8

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
