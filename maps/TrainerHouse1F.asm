TrainerHouse1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  4, 11, VIRIDIAN_CITY, 3
	warp_event  5, 11, VIRIDIAN_CITY, 3
	warp_event  8,  2, TRAINER_HOUSE_B1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
