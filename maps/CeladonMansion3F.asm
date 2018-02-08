CeladonMansion3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  0,  0, CELADON_MANSION_ROOF, 1
	warp_event  1,  0, CELADON_MANSION_2F, 2
	warp_event  6,  0, CELADON_MANSION_2F, 3
	warp_event  7,  0, CELADON_MANSION_ROOF, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
