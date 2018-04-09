PewterCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, PewterCityFlyPoint

	db 7 ; warp events
	warp_event 29, 15, PEWTER_NIDORAN_SPEECH_HOUSE, 1
	warp_event 12, 21, PEWTER_GYM, 1
	warp_event 23, 21, PEWTER_MART, 2
	warp_event 13, 29, PEWTER_POKECENTER_1F, 1
	warp_event  7, 33, PEWTER_SNOOZE_SPEECH_HOUSE, 1
	warp_event 14, 11, PEWTER_MUSEUM_OF_SCIENCE_1F, 1
	warp_event 20,  8, PEWTER_MUSEUM_OF_SCIENCE_1F, 3

	db 0 ; coord events

	db 5 ; bg events
	bg_event 17, 33, SIGNPOST_JUMPTEXT, PewterCityText6
	bg_event 33, 20, SIGNPOST_JUMPTEXT, PewterCityText7
	bg_event 16, 12, SIGNPOST_JUMPTEXT, PewterCityText10
	bg_event 10, 21, SIGNPOST_JUMPTEXT, PewterCityText11
	bg_event 25, 27, SIGNPOST_JUMPTEXT, PewterCityText12

	db 10 ; object events
	treebase_right_event_1 25, 41, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH ; visible on Route2North
	treebase_right_event_2 25, 41, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH_ESTABLISHED ; visible on Route2North
	object_event  6, 18, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterCityText1, -1
	object_event 14, 33, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterCityText2, -1
	object_event 29, 21, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 26, 29, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_SILVER, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	object_event 35, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_SILVER, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1
	fruittree_event 28,  7, FRUITTREE_PEWTER_CITY_1, ORAN_BERRY
	fruittree_event 30,  7, FRUITTREE_PEWTER_CITY_2, ORAN_BERRY
	cuttree_event 25,  9, -1

	const_def 1 ; object constants

PewterCityFlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	return

PewterCityText1:
	text "It's rumored that"
	line "Clefairys came"
	cont "from the moon!"

	para "They appeared "
	line "after Moon Stones"
	cont "fell on Mt. Moon."
	done

PewterCityText10:
	text "Pewter Museum"
	line "of Science"
	done

PewterCityText11:
	text "Pewter City"
	line "#mon Gym"
	cont "Leader: Brock"

	para "The rock solid"
	line "#mon trainer!"
	done

PewterCityText12:
	text "Pewter City"

	para "A stone gray"
	line "city"
	done

PewterCityText2:
	text "There aren't many"
	line "serious #mon"
	cont "trainers here!"

	para "They're all like"
	line "Bug Catchers,"
	cont "but Pewter Gym's"
	cont "Brock is totally"
	cont "into it!"
	done

PewterCityText6:
	text "Trainer Tips"

	para "Any #mon that"
	line "takes part in"
	cont "battle, however"
	cont "short, earns Exp!"
	done

PewterCityText7:
	text "Notice!"

	para "Thieves have been"
	line "stealing #mon"
	cont "fossils at Mt."
	cont "Moon! Please call"
	cont "Pewter Police"
	cont "with any info!"
	done

PewterCityText_193f1:
	text "Did you check out"
	line "the Museum?"
	done

PewterCityText_193f6:
	text "Weren't those"
	line "fossils from Mt."
	cont "Moon amazing?"
	done

PewterCityText_193fb:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	done

PewterCityText13:
	text "It's right here!"
	line "You have to pay"
	cont "to get in, but"
	cont "it's worth it!"
	cont "See you around!"
	done

PewterCityText_19427:
	text "Psssst!"
	line "Do you know what"
	cont "I'm doing?"
	done

PewterCityText_1942c:
	text "That's right!"
	line "It's hard work!"
	done

PewterCityText_19431:
	text "I'm spraying Repel"
	line "to keep #mon"
	cont "out of my garden!"
	done

PewterCityText_1945d:
	text "You're a trainer"
	line "right? Brock's"
	cont "looking for new"
	cont "challengers!"
	cont "Follow me!"
	done

PewterCityText14:
	text "If you have the"
	line "right stuff, go"
	cont "take on Brock!"
	done
