CeruleanCave1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 27, 21, CERULEAN_CITY, 7
	warp_event  9,  5, CERULEAN_CAVE_2F, 1
	warp_event 29,  5, CERULEAN_CAVE_2F, 2
	warp_event  3,  7, CERULEAN_CAVE_2F, 3
	warp_event  2, 10, CERULEAN_CAVE_B1F, 1
	warp_event 25, 11, CERULEAN_CAVE_2F, 4
	warp_event 20, 13, CERULEAN_CAVE_2F, 5
	warp_event  5, 15, CERULEAN_CAVE_2F, 6

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
