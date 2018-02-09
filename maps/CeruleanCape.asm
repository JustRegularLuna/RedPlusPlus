CeruleanCape_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  9,  5, BILLS_HOUSE, 1
	warp_event 38, 29, DIM_CAVE_2F, 1
	warp_event 39, 29, DIM_CAVE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
