BlackthornGym2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event  1,  7, BLACKTHORN_GYM_1F, 3
	warp_event  7,  9, BLACKTHORN_GYM_1F, 4
	warp_event  2,  5, BLACKTHORN_GYM_1F, 5 ; hole
	warp_event  8,  7, BLACKTHORN_GYM_1F, 6 ; hole
	warp_event  8,  3, BLACKTHORN_GYM_1F, 7 ; hole

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
