RuinsofAlphKabutoWordRoom_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  9,  5, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 3
	warp_event 10,  5, RUINS_OF_ALPH_KABUTO_ITEM_ROOM, 4
	warp_event 17, 11, RUINS_OF_ALPH_INNER_CHAMBER, 4

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
