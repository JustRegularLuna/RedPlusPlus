ViridianForest_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_FOREST_PEWTER_GATE, 1
	warp_event 21, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 1
	warp_event 22, 51, VIRIDIAN_FOREST_VIRIDIAN_GATE, 2

	db 0 ; coord events

	db 10 ; bg events
	bg_event 24, 49, SIGNPOST_JUMPTEXT, ViridianForestSignText1
	bg_event 27, 46, SIGNPOST_JUMPTEXT, ViridianForestSignText2
	bg_event 30, 21, SIGNPOST_JUMPTEXT, ViridianForestSignText3
	bg_event  8, 26, SIGNPOST_JUMPTEXT, ViridianForestSignText4
	bg_event  6,  9, SIGNPOST_JUMPTEXT, ViridianForestSignText5
	bg_event 21, 39, SIGNPOST_JUMPTEXT, ViridianForestSignText6
	bg_event 17, 29, SIGNPOST_JUMPTEXT, ViridianForestMossRockText
	bg_event  4, 16, SIGNPOST_ITEM + POTION, EVENT_VIRIDIAN_FOREST_HIDDEN_POTION
	bg_event 21, 48, SIGNPOST_ITEM + ANTIDOTE, EVENT_VIRIDIAN_FOREST_HIDDEN_ANTIDOTE
	bg_event 35, 37, SIGNPOST_ITEM + LIGHT_BALL, EVENT_VIRIDIAN_FOREST_HIDDEN_LIGHT_BALL
	

	db 14 ; object events
	object_event  7,  7, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  8,  6, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_UP, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event  9,  7, SPRITE_BUSH_FOREST_TREE, SPRITEMOVEDATA_OVERHEAD_TILE_RIGHT, 0, 0, -1, -1, PAL_NPC_TREE, PERSONTYPE_COMMAND, end, NULL, -1
	object_event 22, 49, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestText1, -1
	object_event 32, 48, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestText2, -1
	object_event  6, 48, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerLassSarah, -1
	object_event 33, 38, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherRick, -1
	object_event 33, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherDoug, -1
	object_event 20, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerBugCatcherTajiri, -1
	object_event  6, 16, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 2, GenericTrainerBugCatcherSammy, -1
	fruittree_event 34,  8, FRUITTREE_VIRIDIAN_FOREST, PECHA_BERRY
	itemball_event  14, 30, POTION, 1, EVENT_VIRIDIAN_FOREST_POTION
	itemball_event   4, 37, POKE_BALL, 1, EVENT_VIRIDIAN_FOREST_POKEBALL
	itemball_event  30, 15, ANTIDOTE, 1, EVENT_VIRIDIAN_FOREST_ANTIDOTE

GenericTrainerLassSarah:
	generictrainer LASS, SARAH, EVENT_BEAT_LASS_SARAH, LassSarahSeenText, LassSarahBeatenText
	; LassSarahAfterText
	text "I saw a Pikachu"
	line "earlier, but I"
	cont "haven't caught one"
	cont "yet…"
	done

GenericTrainerBugCatcherRick:
	generictrainer BUG_CATCHER, RICK, EVENT_BEAT_BUG_CATCHER_RICK, BugCatcherRickSeenText, BugCatcherRickBeatenText
	; BugCatcherRickAfterText
	text "Ssh! You'll scare"
	line "the bugs away!"
	done

GenericTrainerBugCatcherDoug:
	generictrainer BUG_CATCHER, DOUG, EVENT_BEAT_BUG_CATCHER_DOUG, BugCatcherDougSeenText, BugCatcherDougBeatenText
	; BugCatcherDougAfterText
	text "Darn, I'm going"
	line "to catch some"
	cont "stronger ones…"
	done

GenericTrainerBugCatcherTajiri:
	generictrainer BUG_CATCHER, TAJIRI, EVENT_BEAT_BUG_CATCHER_TAJIRI, BugCatcherTajiriSeenText, BugCatcherTajiriBeatenText
	; BugCatcherTajiriAfterText
	text "A Metapod is cool"
	line "because its"
	cont "attack is its"
	cont "defense!"
	done

GenericTrainerBugCatcherSammy:
	generictrainer BUG_CATCHER, SAMMY, EVENT_BEAT_BUG_CATCHER_SAMMY, BugCatcherSammySeenText, BugCatcherSammyBeatenText
	; BugCatcherSammyAfterText
	text "Sometimes, you"
	line "can find stuff on"
	cont "the ground."
	
	para "I'm looking for"
	line "the stuff I"
	cont "dropped…"
	done

LassSarahSeenText:
	text "Hi, do you have a"
	line "Pikachu?"
	done

LassSarahBeatenText:
	text "Oh no, really?"
	done

BugCatcherRickSeenText:
	text "Hey! You have"
	line "#mon! Come on,"
	cont "let's battle 'em!"
	done

BugCatcherRickBeatenText:
	text "No! Caterpie can't"
	line "hack it!"
	done

BugCatcherDougSeenText:
	text "Yo! You can't jam"
	line "out if you're a"
	cont "#mon trainer!"
	done

BugCatcherDougBeatenText:
	text "Huh? I ran out of"
	line "#mon!"
	done

BugCatcherTajiriSeenText:
	text "I'm gonna be the"
	line "best. You just"
	cont "can't beat me!"
	done

BugCatcherTajiriBeatenText:
	text "After all I did…"
	done

BugCatcherSammySeenText:
	text "Hey, wait up!"
	line "What's the hurry?"
	done

BugCatcherSammyBeatenText:
	text "I give! You're"
	line "good at this!"
	done

ViridianForestText1:
	text "I came here with"
	line "some friends!"
	
	para "They're out for"
	line "#mon battles!"
	done

ViridianForestText2:
	text "I ran out of #"
	line "balls to catch"
	cont "#mon with."
	
	para "You should carry"
	line "extras."
	done

ViridianForestSignText1:
	text "TRAINER TIPS"
	
	para "Weaken #mon"
	line "before attempting"
	cont "capture."
	
	para "When healthy,"
	line "they may escape!"
	done

ViridianForestSignText2:
	text "TRAINER TIPS"
	
	para "If you want to"
	line "avoid battles,"
	cont "stay away from"
	cont "grassy areas!"
	done

ViridianForestSignText3:
	text "TRAINER TIPS"
	
	para "Contact Prof. Oak"
	line "via PC to get"
	cont "your #dex"
	cont "evaluated."
	done

ViridianForestSignText4:
	text "TRAINER TIPS"
	
	para "No stealing"
	line "#mon from"
	cont "other trainers!"
	cont "Catch only wild"
	cont "#mon!"
	done

ViridianForestSignText5:
	text "Now leaving"
	line "Viridian Forest."
	cont "Pewter City ahead."
	done

ViridianForestSignText6:
	text "For poison, use"
	line "Antidote! Get it"
	cont "at #mon Marts!"
	done

ViridianForestMossRockText:
	text "The rock is cover-"
	line "ed in moss."

	para "It feels pleasant-"
	line "ly cool."
	done
