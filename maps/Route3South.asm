Route3South_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event 57,  3, HIDDEN_TREE_GROTTO, 1
	warp_event 51, 10, HIDDEN_CAVE_GROTTO, 1

	db 0 ; coord events

	db 2 ; bg events
	bg_event 59,  9, SIGNPOST_JUMPTEXT, Route3Text10
	bg_event 46, 11, SIGNPOST_ITEM + NUGGET, EVENT_ROUTE_3_HIDDEN_NUGGET

	db 12 ; object events
	treebase_right_event_1 57,  2, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE
	treebase_right_event_2 57,  2, SECRET_BASE_ROUTE_3_TREE, EVENT_SECRET_BASE_ROUTE_3_TREE_ESTABLISHED
	cavebase_event 51,  9, SECRET_BASE_ROUTE_3_CAVE, EVENT_SECRET_BASE_ROUTE_3_CAVE
	object_event 57, 11, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route3Text1, -1
	object_event 10,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherColton, -1
	object_event 14,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterBen, -1
	object_event 15,  9, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerLassJanice, -1
	object_event 19,  5, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherGreg, -1
	object_event 23,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerLassSally, -1
	object_event 21,  9, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterCalvin, -1
	object_event 24,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherJames, -1
	object_event 33, 10, SPRITE_LASS, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerLassRobin, -1

GenericTrainerBugCatcherColton:
	generictrainer BUG_CATCHER, COLTON, EVENT_BEAT_BUG_CATCHER_COLTON, Route3BattleText1, Route3EndBattleText1

	text "I should look for"
	line "#mon outside"
	cont "of forests."
	done

GenericTrainerYoungsterBen:
	generictrainer YOUNGSTER, BEN, EVENT_BEAT_YOUNGSTER_BEN, Route3BattleText2, Route3EndBattleText2

	text "Until recently, I"
	line "never ran into any"
	cont "Zigzagoons around"
	cont "Kanto…"
	done

GenericTrainerLassJanice:
	generictrainer LASS, JANICE, EVENT_BEAT_LASS_JANICE, Route3BattleText3, Route3EndBattleText3

	text "Quit staring if"
	line "you don't want to"
	cont "fight!"
	done

GenericTrainerBugCatcherGreg:
	generictrainer BUG_CATCHER, GREG, EVENT_BEAT_BUG_CATCHER_GREG, Route3BattleText4, Route3EndBattleText4

	text "If a #mon Box"
	line "on the PC gets"
	cont "full, just switch"
	cont "to another Box!"
	done

GenericTrainerLassSally:
	generictrainer LASS, SALLY, EVENT_BEAT_LASS_SALLY, Route3BattleText5, Route3EndBattleText5

	text "Avoid fights by"
	line "not letting"
	cont "people see you!"
	done

GenericTrainerYoungsterCalvin:
	generictrainer YOUNGSTER, CALVIN, EVENT_BEAT_YOUNGSTER_CALVIN, Route3BattleText6, Route3EndBattleText6

	text "I always wear"
	line "shorts, even in"
	cont "winter!"
	done

GenericTrainerBugCatcherJames:
	generictrainer BUG_CATCHER, JAMES, EVENT_BEAT_BUG_CATCHER_JAMES, Route3BattleText7, Route3EndBattleText7

	text "Trained #mon"
	line "are stronger than"
	cont "the wild ones!"
	done

GenericTrainerLassRobin:
	generictrainer LASS, ROBIN, EVENT_BEAT_LASS_ROBIN, Route3BattleText8, Route3EndBattleText8

	text "Route 4 is at the"
	line "foot of Mt. Moon."
	done

Route3Text1:
	text "Whew… I better"
	line "take a rest…"
	cont "Groan…"

	para "That tunnel from"
	line "Cerulean takes a"
	cont "lot out of you!"
	done

Route3Text10:
	text "Route 3"
	line "Pewter City -"
	cont "Mt. Moon"
	done

Route3BattleText1:
	text "Hi! I like shorts!"
	line "They're comfy and"
	cont "easy to wear!"
	done

Route3EndBattleText1:
	text "Whew! Even that"
	line "battle was short!"
	done

Route3BattleText2:
	text "Hey! Check out my"
	line "Zigzagoon!"
	
	para "He's in the top"
	line "percentage of"
	cont "Zigzagoon!"
	done

Route3EndBattleText2:
	text "I don't believe"
	line "it! I lost!"
	done

Route3BattleText3:
	text "You looked at me,"
	line "didn't you?"
	done

Route3EndBattleText3:
	text "You're mean!"
	done

Route3BattleText4:
	text "Are you a trainer?"
	line "Let's fight!"
	done

Route3EndBattleText4:
	text "If I had new"
	line "#mon, I would"
	cont "have won!"
	done

Route3BattleText5:
	text "That look you"
	line "gave me, it's so"
	cont "intriguing!"
	done

Route3EndBattleText5:
	text "Be nice!"
	done

Route3BattleText6:
	text "Hey! You're not"
	line "wearing shorts!"
	done

Route3EndBattleText6:
	text "Lost! Lost! Lost!"
	done

Route3BattleText7:
	text "You can fight my"
	line "new #mon!"
	done

Route3EndBattleText7:
	text "Done like dinner!"
	done

Route3BattleText8:
	text "Eek! Did you"
	line "touch me?"
	done

Route3EndBattleText8:
	text "That's it?"
	done
