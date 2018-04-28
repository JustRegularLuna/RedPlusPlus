CeruleanCape_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 11,  5, BILLS_HOUSE, 1
	warp_event 42, 29, DIM_CAVE_2F, 1
	warp_event 43, 29, DIM_CAVE_2F, 1
	warp_event 16,  6, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	treebase_left_event_1 16,  5, SECRET_BASE_CERULEAN_CAPE, EVENT_SECRET_BASE_CERULEAN_CAPE
	treebase_left_event_2 16,  5, SECRET_BASE_CERULEAN_CAPE, EVENT_SECRET_BASE_CERULEAN_CAPE_ESTABLISHED

	const_def 1 ; object constants
