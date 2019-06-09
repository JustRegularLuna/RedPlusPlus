PewterCity_MapScriptHeader:
	db 2 ; scene scripts
	scene_script PewterCityResetMuseum
	scene_script PewterCityResetMuseum

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

	db 3 ; coord events
	coord_event 36, 22, 0, PewterCityBrockGuyTriggers1
	coord_event 36, 23, 0, PewterCityBrockGuyTriggers2
	coord_event 36, 24, 0, PewterCityBrockGuyTriggers3

	db 6 ; bg events
	bg_event 17, 33, SIGNPOST_JUMPTEXT, PewterCityText6
	bg_event 33, 20, SIGNPOST_JUMPTEXT, PewterCityText7
	bg_event 16, 12, SIGNPOST_JUMPTEXT, PewterCityText10
	bg_event 10, 21, SIGNPOST_JUMPTEXT, PewterCityText11
	bg_event 25, 27, SIGNPOST_JUMPTEXT, PewterCityText12
	bg_event  6,  6, SIGNPOST_ITEM + POKE_BALL, EVENT_PEWTER_CITY_HIDDEN_POKEBALL

	db 12 ; object events
	treebase_right_event_1 25, 41, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH ; visible on Route2North
	treebase_right_event_2 25, 41, SECRET_BASE_ROUTE_2_NORTH, EVENT_SECRET_BASE_ROUTE_2_NORTH_ESTABLISHED ; visible on Route2North
	object_event  6, 18, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterCityText1, -1
	object_event 14, 33, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterCityText2, -1
	object_event 29, 21, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, PewterCityMuseumGuyScript, -1
	object_event 26, 29, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, PewterCityRepelGuyScript, -1
	object_event 35, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, PewterCityBrockGuyScript, EVENT_HIDE_PEWTER_BROCK_GUY
	object_event  6,  8, SPRITE_ZIGZAGOON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_POKEMON, ZIGZAGOON, PewterCityZigzagoonText, -1
	object_event  7,  8, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, PewterCityZigzagoonGirlScript, -1
	fruittree_event 28,  7, FRUITTREE_PEWTER_CITY_1, RAWST_BERRY
	fruittree_event 30,  7, FRUITTREE_PEWTER_CITY_2, CHESTO_BERRY
	cuttree_event 25,  9, -1

	const_def 1 ; object constants
	const PEWTER_TREEBASE_1
	const PEWTER_TREEBASE_2
	const PEWTER_LASS
	const PEWTER_YOUNGSTER
	const PEWTER_MUSEUM_GUY
	const PEWTER_REPEL_GUY
	const PEWTER_BROCK_GUY
	const PEWTER_ZIGZAGOON
	const PEWTER_ZIGZAGOON_GIRL

PewterCityFlyPoint:
	setflag ENGINE_FLYPOINT_PEWTER
	return

PewterCityResetMuseum:
	setmapscene PEWTER_MUSEUM_OF_SCIENCE_1F, $0
	end

PewterCityRepelGuyScript:
	faceplayer
	opentext
	writetext PewterCityText_19427
	yesorno
	iftrue_jumpopenedtext PewterCityText_1942c
	thisopenedtext
;PewterCityText_19431:
	text "I'm spraying Repel"
	line "to keep #mon"
	cont "out of my garden!"
	done

PewterCityMuseumGuyScript:
	faceplayer
	opentext
	writetext PewterCityText_193f1
	yesorno
	iffalse .IntroduceMuseum
	thisopenedtext
;PewterCityText_193f6:
	text "Weren't those"
	line "fossils from Mt."
	cont "Moon amazing?"
	done

.IntroduceMuseum
	writetext PewterCityText_193fb
	closetext
	playmusic MUSIC_MUSEUM_GUY
	follow PEWTER_MUSEUM_GUY, PLAYER
	applymovement PEWTER_MUSEUM_GUY, .Movement_WalkToMuseum
	stopfollow
	faceplayer
	special RestartMapMusic
	showtext PewterCityText13
	applymovement PEWTER_MUSEUM_GUY, .Movement_WalkAway
	disappear PEWTER_MUSEUM_GUY
	moveobject PEWTER_MUSEUM_GUY, 29, 21
	appear PEWTER_MUSEUM_GUY
	end

.Movement_WalkToMuseum
	step_up
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

.Movement_WalkAway
	step_up
	step_right
	step_right
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

PewterCityBrockGuyTriggers1:
	showtext PewterCityText_1945d
	playmusic MUSIC_MUSEUM_GUY
	applymovement PEWTER_BROCK_GUY, Movement_WalkDown
	applyonemovement PLAYER, step_down
	jump PewterCityBrockGuyTriggersCommon

PewterCityBrockGuyTriggers2:
	showtext PewterCityText_1945d
	playmusic MUSIC_MUSEUM_GUY
	applymovement PEWTER_BROCK_GUY, Movement_WalkDown
	jump PewterCityBrockGuyTriggersCommon

PewterCityBrockGuyTriggers3:
	showtext PewterCityText_1945d
	playmusic MUSIC_MUSEUM_GUY
	applymovement PEWTER_BROCK_GUY, Movement_WalkDown
	applyonemovement PLAYER, step_up
	; fallthrough

PewterCityBrockGuyTriggersCommon:
	follow PEWTER_BROCK_GUY, PLAYER
	applymovement PEWTER_BROCK_GUY, Movement_WalkToGym2
	stopfollow
	turnobject PEWTER_BROCK_GUY, LEFT
	special RestartMapMusic
	showtext PewterCityText14
	applymovement PEWTER_BROCK_GUY, Movement_WalkAway2
	disappear PEWTER_BROCK_GUY
	moveobject PEWTER_BROCK_GUY, 35, 21
	appear PEWTER_BROCK_GUY
	end

PewterCityBrockGuyScript:
	faceplayer
	showtext PewterCityText_1945d
	playmusic MUSIC_MUSEUM_GUY
	follow PEWTER_BROCK_GUY, PLAYER
	applymovement PEWTER_BROCK_GUY, Movement_WalkToGym
	stopfollow
	faceplayer
	special RestartMapMusic
	showtext PewterCityText14
	applymovement PEWTER_BROCK_GUY, Movement_WalkAway2
	disappear PEWTER_BROCK_GUY
	moveobject PEWTER_BROCK_GUY, 35, 21
	appear PEWTER_BROCK_GUY
	end

Movement_WalkDown:
	step_down
	step_down
	step_end

Movement_WalkToGym:
	step_down
	step_down
Movement_WalkToGym2:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_up
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_end

Movement_WalkAway2:
	step_down
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

PewterCityZigzagoonGirlScript:
	checkevent EVENT_GOT_PEWTERCRUNCH_PEWTER_CITY
	iftrue_jumptextfaceplayer PewterZigzagoonGirlAfterText
	checkevent EVENT_HELPED_ZIGZAGOON_GIRL
	iftrue .GetPewterCrunch
	showtext PewterZigzagoonGirlIntroText
	faceplayer
	opentext
	writetext PewterZigzagoonGirlGreetingText
	yesorno
	iffalse .Refused
	writetext PewterZigzagoonGirlExplanationText
	waitbutton
	writetext PewterCityZigzagoonText
	cry ZIGZAGOON
	waitbutton
	writetext PewterZigzagoonGirlRequestText
	yesorno
	iffalse .Refused
	writetext PewterZigzagoonGirlAcceptedText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	pause 10
	disappear PEWTER_ZIGZAGOON_GIRL
	checkcode VAR_FACING
	ifequal UP, .Up
	ifequal DOWN, .Down
	applyonemovement PLAYER, step_left
	scall .SpendTimeWithZigzagoon
	applyonemovement PLAYER, step_right
	turnobject PLAYER, LEFT
.Continue:
	moveobject PEWTER_ZIGZAGOON_GIRL, 7, 8
	appear PEWTER_ZIGZAGOON_GIRL
	faceplayer
	special Special_FadeInQuickly
	setevent EVENT_HELPED_ZIGZAGOON_GIRL
.GetPewterCrunch:
	faceplayer
	opentext
	writetext PewterZigzagoonGirlThankYouText
	buttonsound
	verbosegiveitem PEWTERCRUNCH
	iffalse_endtext
	setevent EVENT_GOT_PEWTERCRUNCH_PEWTER_CITY
	jumpopenedtext PewterZigzagoonGirlAfterText

.Refused:
	writetext PewterZigzagoonGirlRefusedText
	waitbutton
	closetext
	turnobject PEWTER_ZIGZAGOON_GIRL, LEFT
	end

.Up:
	applyonemovement PLAYER, step_up
	scall .SpendTimeWithZigzagoon
	applyonemovement PLAYER, step_down
	turnobject PLAYER, UP
	jump .Continue

.Down:
	applyonemovement PLAYER, step_down
	scall .SpendTimeWithZigzagoon
	applyonemovement PLAYER, step_up
	turnobject PLAYER, DOWN
	jump .Continue

.SpendTimeWithZigzagoon:
	turnobject PLAYER, LEFT
	special Special_FadeInQuickly
	pause 30
	cry ZIGZAGOON
	waitsfx
	pause 30
	opentext
	writetext PewterCityZigzagoonText2
	cry ZIGZAGOON
	waitsfx
	closetext
	pause 30
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	end

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

PewterCityText_193fb:
	text "Really?"
	line "You absolutely"
	cont "have to go!"
	prompt

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

PewterZigzagoonGirlIntroText:
	text "What am I supposed"
	line "to do with you,"
	cont "Zigzagoon?"
	done

PewterZigzagoonGirlGreetingText:
	text "Hello there."
	line "Could you do"
	cont "me a favor?"
	done

PewterZigzagoonGirlExplanationText:
	text "I want to go to"
	line "the Museum, but my"
	cont "dear Zigzagoon"
	cont "refuses to budge!"
	done

PewterZigzagoonGirlRequestText:
	text "Can you keep an"
	line "eye on my Zigzag-"
	cont "oon for a little"
	cont "while?"
	done

PewterZigzagoonGirlAcceptedText:
	text "Thank you very"
	line "much!"

	para "Please keep Zig-"
	line "zagoon company."
	done

PewterZigzagoonGirlThankYouText:
	text "Thank you for"
	line "looking after my"
	cont "dear Zigzagoon!"

	para "Here, this is for"
	line "your trouble."
	done

PewterZigzagoonGirlAfterText:
	text "I would love it if"
	line "you could keep an"
	cont "eye on Zigzagoon"
	cont "again sometime."
	done

PewterZigzagoonGirlRefusedText:
	text "Oh dear…"
	done

PewterCityZigzagoonText:
	text "Zigzagoon: Zig!"
	done

PewterCityZigzagoonText2:
	text "Zigzagoon: Zag!"
	line "Gooooon!"
	done
