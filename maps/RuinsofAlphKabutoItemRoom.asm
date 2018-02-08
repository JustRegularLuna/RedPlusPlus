RuinsofAlphKabutoItemRoom_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  3,  9, RUINS_OF_ALPH_KABUTO_CHAMBER, 5
	warp_event  4,  9, RUINS_OF_ALPH_KABUTO_CHAMBER, 5
	warp_event  3,  1, RUINS_OF_ALPH_KABUTO_WORD_ROOM, 1
	warp_event  4,  1, RUINS_OF_ALPH_KABUTO_WORD_ROOM, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
