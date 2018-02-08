RuinsofAlphInnerChamber_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 9 ; warp events
	warp_event 10, 13, RUINS_OF_ALPH_ENTRANCE_CHAMBER, 3
	warp_event  3, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 3
	warp_event  4, 15, RUINS_OF_ALPH_HO_OH_CHAMBER, 4
	warp_event 15,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 3
	warp_event 16,  3, RUINS_OF_ALPH_KABUTO_CHAMBER, 4
	warp_event  3, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 3
	warp_event  4, 21, RUINS_OF_ALPH_OMANYTE_CHAMBER, 4
	warp_event 15, 24, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 3
	warp_event 16, 24, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
