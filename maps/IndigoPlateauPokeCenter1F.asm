IndigoPlateauPokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  9, 13, INDIGO_PLATEAU, 1
	warp_event 10, 13, INDIGO_PLATEAU, 2
	warp_event  0, 13, POKECENTER_2F, 1
	warp_event 12,  3, WILLS_ROOM, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
