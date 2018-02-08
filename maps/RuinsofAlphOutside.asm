RuinsofAlphOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 12 ; warp events
	warp_event  4, 23, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 16, 13, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  4, 35, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 18, 39, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 12, 19, RUINS_OF_ALPH_ENTRANCE_CHAMBER, 1
	warp_event 19, 17, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event  8, 25, UNION_CAVE_B1F_NORTH, 1
	warp_event  8, 33, UNION_CAVE_B1F_NORTH, 2
	warp_event  3,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 15, 26, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 15, 27, ROUTE_32_RUINS_OF_ALPH_GATE, 2
	warp_event 10,  9, RUINS_OF_ALPH_SINJOH_CHAMBER, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
