MountMoon1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 15, 33, ROUTE_3_NORTH, 1
	warp_event 14, 35, ROUTE_3_NORTH, 1
	warp_event  5,  5, MOUNT_MOON_B1F, 1
	warp_event 17, 11, MOUNT_MOON_B1F, 3
	warp_event 25, 15, MOUNT_MOON_B1F, 4

	db 0 ; coord events

	db 1 ; bg events
	bg_event 15, 23, SIGNPOST_JUMPTEXT, MtMoon1Text14

	db 13 ; object events
	object_event  5,  6, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerHikerMarcos, -1
	object_event 12, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerYoungsterJosh, -1
	object_event 30,  4, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerLassMiriam, -1
	object_event 24, 31, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerSuperNerdJovan, -1
	object_event 16, 23, SPRITE_LASS, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerLassIris, -1
	object_event  7, 23, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerBugCatcherKent, -1
	object_event 30, 27, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 1, GenericTrainerBugCatcherRobby, -1
	itemball_event  2, 21, POTION, 1, EVENT_MT_MOON_1F_POTION1
	itemball_event  2,  2, MOON_STONE, 1, EVENT_MT_MOON_1F_MOON_STONE
	itemball_event 35, 31, RARE_CANDY, 1, EVENT_MT_MOON_1F_RARE_CANDY
	itemball_event 36, 23, ESCAPE_ROPE, 1, EVENT_MT_MOON_1F_ESCAPE_ROPE
	itemball_event 21, 33, POTION, 1, EVENT_MT_MOON_1F_POTION2
	tmhmball_event  5, 32, TM_WATER_GUN, EVENT_MT_MOON_1F_WATER_GUN

GenericTrainerHikerMarcos:
	generictrainer HIKER, MARCOS, EVENT_BEAT_HIKER_MARCOS, MtMoon1BattleText2, MtMoon1EndBattleText2

	text "If you aren't"
	line "gonna help, stay"
	cont "out of the way!"
	done

GenericTrainerYoungsterJosh:
	generictrainer YOUNGSTER, JOSH, EVENT_BEAT_YOUNGSTER_JOSH, MtMoon1BattleText3, MtMoon1EndBattleText3

	text "I came down here"
	line "to show off to"
	cont "girls."
	done

GenericTrainerLassMiriam:
	generictrainer LASS, MIRIAM, EVENT_BEAT_LASS_MIRIAM, MtMoon1BattleText4, MtMoon1EndBattleText4

	text "How do you get"
	line "out of here?"
	done

GenericTrainerSuperNerdJovan:
	generictrainer SUPER_NERD, JOVAN, EVENT_BEAT_SUPER_NERD_JOVAN, MtMoon1BattleText5, MtMoon1EndBattleText5

	text "I have to find"
	line "stronger #mon."
	done

GenericTrainerLassIris:
	generictrainer LASS, IRIS, EVENT_BEAT_LASS_IRIS, MtMoon1BattleText6, MtMoon1EndBattleText6

	text "I heard there are"
	line "some very rare"
	cont "fossils here."
	done

GenericTrainerBugCatcherKent:
	generictrainer BUG_CATCHER, KENT, EVENT_BEAT_BUG_CATCHER_KENT, MtMoon1BattleText7, MtMoon1EndBattleText7

	text "I saw them! I'm"
	line "sure they're from"
	cont "Team Rocket!"
	done

GenericTrainerBugCatcherRobby:
	generictrainer BUG_CATCHER, ROBBY, EVENT_BEAT_BUG_CATCHER_ROBBY, MtMoon1BattleText8, MtMoon1EndBattleText8

	text "Zubat is tough!"
	line "But, it can be"
	cont "useful if you"
	cont "catch one."
	done

MtMoon1BattleText2:
	text "There are fossils"
	line "all over!"
	
	para "I've just been"
	line "helping myself!"
	done

MtMoon1EndBattleText2:
	text "Wow! Guess I need"
	line "some more help!"
	done

MtMoon1BattleText3:
	text "Did you come to"
	line "explore too?"
	done

MtMoon1EndBattleText3:
	text "Losing stinks!"
	done

MtMoon1BattleText4:
	text "Wow! It's way"
	line "bigger in here"
	cont "than I thought!"
	done

MtMoon1EndBattleText4:
	text "Oh!"
	line "I lost it!"
	done

MtMoon1BattleText5:
	text "What! Don't sneak"
	line "up on me!"
	done

MtMoon1EndBattleText5:
	text "My #mon won't"
	line "do!"
	done

MtMoon1BattleText6:
	text "What? I'm waiting"
	line "for my friends to"
	cont "find me here."
	done

MtMoon1EndBattleText6:
	text "I lost?"
	done

MtMoon1BattleText7:
	text "Suspicious men"
	line "are in the cave."
	cont "What about you?"
	done

MtMoon1EndBattleText7:
	text "You got me!"
	done

MtMoon1BattleText8:
	text "Go through this"
	line "cave to get to"
	cont "Cerulean City!"
	done

MtMoon1EndBattleText8:
	text "I lost."
	done

MtMoon1Text14:
	text "Beware! Zubat is"
	line "a blood sucker!"
	done
