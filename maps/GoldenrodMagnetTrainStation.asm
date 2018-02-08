GoldenrodMagnetTrainStation_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  8, 17, GOLDENROD_CITY, 5
	warp_event  9, 17, GOLDENROD_CITY, 5
	warp_event  6,  5, SAFFRON_TRAIN_STATION, 4
	warp_event 11,  5, SAFFRON_TRAIN_STATION, 3

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
