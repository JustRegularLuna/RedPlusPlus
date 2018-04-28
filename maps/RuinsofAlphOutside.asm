RuinsofAlphOutside_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 11 ; warp events
	warp_event  6, 27, RUINS_OF_ALPH_HO_OH_CHAMBER, 1
	warp_event 18, 15, RUINS_OF_ALPH_KABUTO_CHAMBER, 1
	warp_event  6, 39, RUINS_OF_ALPH_OMANYTE_CHAMBER, 1
	warp_event 20, 43, RUINS_OF_ALPH_AERODACTYL_CHAMBER, 1
	warp_event 15, 22, RUINS_OF_ALPH_ENTRANCE_CHAMBER, 1
	warp_event 21, 21, RUINS_OF_ALPH_RESEARCH_CENTER, 1
	warp_event 10, 29, UNION_CAVE_B1F_NORTH, 1
	warp_event 10, 37, UNION_CAVE_B1F_NORTH, 2
	warp_event  5,  5, ROUTE_36_RUINS_OF_ALPH_GATE, 3
	warp_event 17, 30, ROUTE_32_RUINS_OF_ALPH_GATE, 1
	warp_event 17, 31, ROUTE_32_RUINS_OF_ALPH_GATE, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
