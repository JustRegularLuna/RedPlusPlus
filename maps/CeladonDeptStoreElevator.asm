CeladonDeptStoreElevator_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  1,  3, CELADON_DEPT_STORE_1F, -1
	warp_event  2,  3, CELADON_DEPT_STORE_1F, -1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
