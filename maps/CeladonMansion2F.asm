CeladonMansion2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  0, CELADON_MANSION_1F, 4
	warp_event  1,  0, CELADON_MANSION_3F, 2
	warp_event  6,  0, CELADON_MANSION_3F, 3
	warp_event  7,  0, CELADON_MANSION_1F, 5

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
