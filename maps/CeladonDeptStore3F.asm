CeladonDeptStore3F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 12,  0, CELADON_DEPT_STORE_2F, 1
	warp_event 15,  0, CELADON_DEPT_STORE_4F, 2
	warp_event  2,  0, CELADON_DEPT_STORE_ELEVATOR, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
