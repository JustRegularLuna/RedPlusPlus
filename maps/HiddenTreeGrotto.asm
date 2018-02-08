HiddenTreeGrotto_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 15, HIDDEN_TREE_GROTTO, -1
	warp_event  5, 15, HIDDEN_TREE_GROTTO, -1

	db 0 ; coord events

	db 0 ; bg events

	db 0 ; object events

	const_def 1 ; object constants
