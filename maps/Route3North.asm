Route3North_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, MtMoonFlyPoint

	db 2 ; warp events
	warp_event 18,  5, MOUNT_MOON_1F, 1
	warp_event 11,  5, ROUTE_3_POKECENTER_1F, 1

	db 0 ; coord events

	db 1 ; bg events
	bg_event 17,  7, SIGNPOST_JUMPTEXT, MtMoonSignRoute3

	db 9 ; object events
	treebase_right_event_1  7, 20, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE ; visible on Route3South
	treebase_right_event_2  7, 20, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE_ESTABLISHED ; visible on Route3South
	fruittree_event  6,  5, FRUITTREE_ROUTE_3, LEPPA_BERRY
	smashrock_event  4,  6
	smashrock_event  5, 13
	smashrock_event  8,  4
	smashrock_event  8, 10
	smashrock_event 18, 12
	object_event 8, 9, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MtMoonGeodudeGirlText, -1

MtMoonFlyPoint:
	setflag ENGINE_FLYPOINT_MT_MOON
	return

MtMoonGeodudeGirlText:
	text "Ouch! I tripped"
	line "over a rocky"
	cont "#mon, Geodude!"
	done

MtMoonSignRoute3:
	text "Mt. Moon"
	line "Tunnel Entrance"
	done
