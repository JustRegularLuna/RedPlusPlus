AzaleaTown_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 8 ; warp events
	warp_event 15, 11, AZALEA_POKECENTER_1F, 1
	warp_event 21, 15, CHARCOAL_KILN, 1
	warp_event 21,  7, AZALEA_MART, 2
	warp_event  9,  7, KURTS_HOUSE, 1
	warp_event 10, 18, AZALEA_GYM, 1
	warp_event 31, 10, SLOWPOKE_WELL_B1F, 1
	warp_event  2, 12, ILEX_FOREST_AZALEA_GATE, 3
	warp_event  2, 13, ILEX_FOREST_AZALEA_GATE, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
