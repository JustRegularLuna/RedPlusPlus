GoldenrodDeptStoreB1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event 17,  2, UNDERGROUND_WAREHOUSE, 3
	warp_event  9,  4, GOLDENROD_DEPT_STORE_ELEVATOR, 1
	warp_event 10,  4, GOLDENROD_DEPT_STORE_ELEVATOR, 2

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
