LakeofRage_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1
	warp_event 10, 28, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
