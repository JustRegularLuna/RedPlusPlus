LakeofRage_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_TILES, LakeofRageFloodScript

	db 3 ; warp events
	warp_event  7,  3, LAKE_OF_RAGE_HIDDEN_POWER_HOUSE, 1
	warp_event 27, 31, LAKE_OF_RAGE_MAGIKARP_HOUSE, 1
	warp_event 10, 28, HIDDEN_TREE_GROTTO, 1

	db 0 ; coord events

	db 0 ; bg events

	db 10 ; object events
	itemball_event 13,  2, POKE_BALL, 1, -1
	itemball_event  7, 10, POKE_BALL, 1, -1
	itemball_event 35,  2, POKE_BALL, 1, -1
	cuttree_event 23,  4, -1
	cuttree_event 18,  9, -1
	cuttree_event 11, 12, -1
	cuttree_event  5, 14, -1
	cuttree_event  6, 21, -1
	treebase_left_event_1 10, 27, SECRET_BASE_LAKE_OF_RAGE, EVENT_SECRET_BASE_LAKE_OF_RAGE
	treebase_left_event_2 10, 27, SECRET_BASE_LAKE_OF_RAGE, EVENT_SECRET_BASE_LAKE_OF_RAGE_ESTABLISHED

	const_def 1 ; object constants

LakeofRageFloodScript:
	special Special_GetOvercastIndex
	ifequal LAKE_OF_RAGE_OVERCAST, .flood
	changemap LakeofRage_BlockData
	return

.flood
	changemap LakeofRageFlooded_BlockData
	return
