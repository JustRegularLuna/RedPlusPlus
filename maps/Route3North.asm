Route3North_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, MtMoonFlyPoint

	db 2 ; warp events
	warp_event 18,  5, MOUNT_MOON_1F, 1
	warp_event 11,  5, ROUTE_3_POKECENTER_1F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 8 ; object events
	treebase_right_event_1  7, 20, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE ; visible on Route3South
	treebase_right_event_2  7, 20, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE_ESTABLISHED ; visible on Route3South
	fruittree_event  6,  5, FRUITTREE_ROUTE_3, ORAN_BERRY
	smashrock_event  4,  6
	smashrock_event  5, 13
	smashrock_event  8,  4
	smashrock_event  8, 10
	smashrock_event 18, 12

	const_def 1 ; object constants

MtMoonFlyPoint:
	setflag ENGINE_FLYPOINT_MT_MOON
	return
