CeladonMansionRoof_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  1,  1, CELADON_MANSION_3F, 1
	warp_event  6,  1, CELADON_MANSION_3F, 4
	warp_event  2,  5, CELADON_MANSION_ROOF_HOUSE, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
