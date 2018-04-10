OaksLab_MapScriptHeader:
	db 5 ; scene scripts
	scene_script OaksLabTrigger0
	scene_script OaksLabTrigger1
	scene_script OaksLabTrigger2
	scene_script OaksLabTrigger3
	scene_script OaksLabTrigger4

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 11, PALLET_TOWN, 3
	warp_event  5, 11, PALLET_TOWN, 3

	db 4 ; coord events
	coord_event 4, 6, 2, LabTryToLeaveScript
	coord_event 5, 6, 2, LabTryToLeaveScript
	coord_event 4, 6, 3, LabBattleBlueScript
	coord_event 5, 6, 3, LabBattleBlueScript2

	db 3 ; bg events
	bg_event 4, 0, SIGNPOST_JUMPTEXT, OaksLabSign1Text
	bg_event 5, 0, SIGNPOST_JUMPTEXT, OaksLabSign2Text
	bg_event 0, 1, SIGNPOST_JUMPTEXT, OaksLabEmailText

	db 9 ; object events
	object_event  4,  3, SPRITE_BLUE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, OaksLabBlueScript, EVENT_HIDE_OAKSLAB_BLUE
	object_event  6,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_OAKSLAB_STARTER_1
	object_event  7,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_OAKSLAB_STARTER_2
	object_event  8,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_OAKSLAB_STARTER_3
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, PAL_NPC_BROWN, ObjectEvent, EVENT_HIDE_OAKSLAB_OAK
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
	object_event  3,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
	object_event  1,  9, SPRITE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OaksLabGirlText, -1
	object_event  8, 10, SPRITE_OAK_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, OaksLabAideText, -1

	const_def 1 ; object constants
	const OAKSLAB_BLUE
	const OAKSLAB_STARTER_1
	const OAKSLAB_STARTER_2
	const OAKSLAB_STARTER_3
	const OAKSLAB_OAK
	const OAKSLAB_POKEDEX_1
	const OAKSLAB_POKEDEX_2
	const OAKSLAB_GIRL
	const OAKSLAB_AIDE

OaksLabTrigger0:
OaksLabTrigger2:
OaksLabTrigger3:
OaksLabTrigger4:
	end
OaksLabTrigger1:
	priorityjump OaksLab_AutowalkUpToOak

OaksLab_AutowalkUpToOak:
	applymovement PLAYER, Movement_WalkUpToProfOak
	turnobject OAKSLAB_BLUE, UP
	showtext GrampsImFedUpText
	pause 8
	showtext OakLetMeThinkText
	pause 8
	showtext HeyGrampsWhatAboutMeText
	pause 8
	showtext OakBePatientText
	setscene $2
	end

Movement_WalkUpToProfOak:
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_end

LabTryToLeaveScript:
	showtext OakDontGoAwayText
	applyonemovement PLAYER, step_up
	end

LabBattleBlueScript:
	end

LabBattleBlueScript2:
	end

OaksLabBlueScript:
	faceplayer
	opentext
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumpopenedtext GrampsIsntAroundText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext MyPokemonLooksStrongerText
	thisopenedtext
;HehIDontNeedToBeGreedyText
	text "<RIVAL>: Heh, I"
	line "don't need to be"
	cont "greedy like you!"

	para "Go ahead and"
	line "choose, <PLAYER>!"
	done

GrampsIsntAroundText:
	text "<RIVAL>: Yo"
	line "<PLAYER>! Gramps"
	cont "isn't around!"
	done

MyPokemonLooksStrongerText:
	text "<RIVAL>: My"
	line "#mon looks a"
	cont "lot stronger."
	done

GrampsImFedUpText:
	text "<RIVAL>: Gramps!"
	line "I'm fed up with"
	cont "waiting!"
	done

OaksLabSign1Text:
	text "Push Start to"
	line "open the Menu!"
	done

OaksLabSign2Text:
	text "The Save option is"
	line "on the Start Menu!"
	done

OaksLabEmailText:
	text "There's an e-mail"
	line "message here!"
	
	para "…"
	
	para "Calling all"
	line "#mon trainers!"
	
	para "The elite trainers"
	line "of #mon League"
	cont "are ready to take"
	cont "all comers!"
	
	para "Bring your best"
	line "#mon and see"
	cont "how you rate as a"
	cont "trainer!"
	
	para "#mon League HQ"
	line "Indigo Plateau"
	
	para "PS: Prof.Oak,"
	line "please visit us!"
	cont "…"
	done

OaksLabPokedexDescriptionText:
	text "It's a small red"
	line "electronic device."
	done

OaksLabGirlText:
	text "Prof. Oak is the"
	line "authority on"
	cont "#mon!"
	
	para "Many #mon"
	line "trainers hold him"
	cont "in high regard!"
	done

OaksLabAideText:
	text "I study #mon as"
	line "Prof. Oak's Aide."
	done

OakLetMeThinkText:
	text "Oak: <RIVAL>?"
	line "Let me think…"

	para "Oh, that's right,"
	line "I told you to"
	cont "come! Just wait!"

	para "Here, <PLAYER>!"

	para "There are 3"
	line "#mon here!"

	para "Haha!"

	para "They are inside"
	line "the # Balls."

	para "When I was young,"
	line "I was a serious"
	cont "#mon trainer!"

	para "In my old age, I"
	line "have only 3 left,"
	cont "but you can have"
	cont "one! Choose!"
	done

HeyGrampsWhatAboutMeText:
	text "<RIVAL>: Hey!"
	line "Gramps! What"
	cont "about me?"
	done

OakBePatientText:
	text "Oak: Be patient!"
	line "<RIVAL>, you can"
	cont "have one too!"
	done

OakDontGoAwayText:
	text "Oak: Hey! Don't go"
	line "away yet!"
	done
