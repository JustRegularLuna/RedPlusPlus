CeladonUniversityLibrary1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  6, 11, CELADON_UNIVERSITY_1F, 4
	warp_event  7, 11, CELADON_UNIVERSITY_1F, 4
	warp_event  7,  0, CELADON_UNIVERSITY_LIBRARY_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
