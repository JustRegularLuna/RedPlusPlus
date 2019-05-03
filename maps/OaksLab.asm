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
	object_event  6,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, CharmanderPokeballScript, EVENT_HIDE_OAKSLAB_STARTER_1
	object_event  7,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, SquirtlePokeballScript, EVENT_HIDE_OAKSLAB_STARTER_2
	object_event  8,  3, SPRITE_BALL_CUT_FRUIT, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, BulbasaurPokeballScript, EVENT_HIDE_OAKSLAB_STARTER_3
	object_event  5,  2, SPRITE_OAK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, PAL_NPC_BROWN, OaksLabOakScript, EVENT_HIDE_OAKSLAB_OAK
	object_event  2,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
	object_event  3,  1, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_TILE_LEFT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, OaksLabPokedexDescriptionText, EVENT_GOT_POKEDEX
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

Movement_BluePicksSquirtle:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_up
	step_end

Movement_BluePicksBulbasaur:
	step_down
	step_down
	step_right
	step_right
	step_right
	step_right
	step_up
	step_end

Movement_BluePicksCharmander:
	step_down
	step_down
	step_right
	step_right
	step_up
	step_end

Movement_BlueWalksFromBulbasaur1:
	step_left
Movement_BlueWalksFromBulbasaur2:
Movement_BlueWalksFromSquirtle1:
	step_left
Movement_BlueWalksFromSquirtle2:
Movement_BlueWalksFromCharmander1:
	step_left
Movement_BlueWalksFromCharmander2:
	step_left
	step_down
	step_end

Movement_BlueLeavesBattle1:
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_BlueLeavesBattle2:
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_BlueRunsIn:
	step_up
	step_up
	step_up
	step_up
	step_end

Movement_BlueRunsOut:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Movement_OakWalksToTable:
	step_left
	step_left
	turn_head_up
	step_end

Movement_OakWalksBack:
	step_right
	step_right
	turn_head_down
	step_end

Movement_OakWalksToTable2:
	step_up
	step_left
	step_end

Movement_OakWalksBack2:
	step_right
	step_down
	step_end

LabTryToLeaveScript:
	turnobject OAKSLAB_OAK, DOWN
	showtext OakDontGoAwayText
	applyonemovement PLAYER, step_up
	end

LabBattleBlueScript:
	playmusic MUSIC_MEET_RIVAL
	turnobject OAKSLAB_BLUE, DOWN
	turnobject PLAYER, UP
	pause 8
	showtext OaksLabRivalChallengeText
	winlosstext OaksLabBlueWinText, OaksLabBlueLossText
	setlasttalked OAKSLAB_BLUE
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromSquirtle1
	loadtrainer SONY1, 1
	jump .continueBattle
.Squirtle
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromBulbasaur1
	loadtrainer SONY1, 2
	jump .continueBattle
.Bulbasaur
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromCharmander1
	loadtrainer SONY1, 3
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_FAREWELL_RIVAL
	showtext OaksLabRivalToughenUpText
	applymovement OAKSLAB_BLUE, Movement_BlueLeavesBattle1
	disappear OAKSLAB_BLUE
	special HealPartyEvenForNuzlocke
	setevent EVENT_BATTLED_OAKSLAB_RIVAL
	setscene $4
	playmapmusic
	end

LabBattleBlueScript2:
	playmusic MUSIC_MEET_RIVAL
	turnobject OAKSLAB_BLUE, DOWN
	turnobject PLAYER, UP
	pause 8
	showtext OaksLabRivalChallengeText
	winlosstext OaksLabBlueWinText, OaksLabBlueLossText
	setlasttalked OAKSLAB_BLUE
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromSquirtle2
	loadtrainer SONY1, 1
	jump .continueBattle
.Squirtle
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromBulbasaur2
	loadtrainer SONY1, 2
	jump .continueBattle
.Bulbasaur
	applymovement OAKSLAB_BLUE, Movement_BlueWalksFromCharmander2
	loadtrainer SONY1, 3
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_FAREWELL_RIVAL
	showtext OaksLabRivalToughenUpText
	applymovement OAKSLAB_BLUE, Movement_BlueLeavesBattle2
	disappear OAKSLAB_BLUE
	special HealPartyEvenForNuzlocke
	setevent EVENT_BATTLED_OAKSLAB_RIVAL
	setscene $4
	playmapmusic
	end

CharmanderPokeballScript:
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumptext OaksLabPokeballDescriptionText
	checkevent EVENT_GOT_STARTER
	iftrue_jumptext OaksLabLastMonText
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic CHARMANDER
	cry CHARMANDER
	waitbutton
	closepokepic
	opentext
	writetext OaksLabCharmanderText
	yesorno
	iffalse_jumpopenedtext OaksLabDidntChooseStarterText
	disappear OAKSLAB_STARTER_1
	setevent EVENT_PLAYER_CHOSE_CHARMANDER
	setevent EVENT_GOT_STARTER
	writetext OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem CHARMANDER, $0
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CHARMANDER, 5, ORAN_BERRY
	closetext
	applymovement OAKSLAB_BLUE, Movement_BluePicksSquirtle
	opentext
	writetext OaksLabBlueChoosesStarterText
	pause 15
	disappear OAKSLAB_STARTER_2
	opentext
	pokenamemem SQUIRTLE, $0
	writetext OaksLabBlueReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	setscene $3
	end

SquirtlePokeballScript:
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumptext OaksLabPokeballDescriptionText
	checkevent EVENT_GOT_STARTER
	iftrue_jumptext OaksLabLastMonText
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext OaksLabSquirtleText
	yesorno
	iffalse_jumpopenedtext OaksLabDidntChooseStarterText
	disappear OAKSLAB_STARTER_2
	setevent EVENT_PLAYER_CHOSE_SQUIRTLE
	setevent EVENT_GOT_STARTER
	writetext OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem SQUIRTLE, $0
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke SQUIRTLE, 5, ORAN_BERRY
	closetext
	applymovement OAKSLAB_BLUE, Movement_BluePicksBulbasaur
	opentext
	writetext OaksLabBlueChoosesStarterText
	pause 15
	disappear OAKSLAB_STARTER_3
	opentext
	pokenamemem BULBASAUR, $0
	writetext OaksLabBlueReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	setscene $3
	end

BulbasaurPokeballScript:
	checkevent EVENT_HIDE_OAKSLAB_OAK
	iftrue_jumptext OaksLabPokeballDescriptionText
	checkevent EVENT_GOT_STARTER
	iftrue_jumptext OaksLabLastMonText
	turnobject OAKSLAB_OAK, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext OaksLabBulbasaurText
	yesorno
	iffalse_jumpopenedtext OaksLabDidntChooseStarterText
	disappear OAKSLAB_STARTER_3
	setevent EVENT_PLAYER_CHOSE_BULBASAUR
	setevent EVENT_GOT_STARTER
	writetext OaksLabMonEnergeticText
	buttonsound
	waitsfx
	pokenamemem BULBASAUR, $0
	writetext OaksLabReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke BULBASAUR, 5, ORAN_BERRY
	closetext
	applymovement OAKSLAB_BLUE, Movement_BluePicksCharmander
	opentext
	writetext OaksLabBlueChoosesStarterText
	pause 15
	disappear OAKSLAB_STARTER_1
	opentext
	pokenamemem CHARMANDER, $0
	writetext OaksLabBlueReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	waitbutton
	closetext
	setscene $3
	end

OaksLabOakScript:
	faceplayer
	opentext
	checkevent EVENT_CAN_VISIT_JOHTO
	iftrue_jumpopenedtext OaksLabTalkAboutJohtoText
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue .EnableJohto
	checkevent EVENT_GOT_POKEDEX
	iftrue .RatePokedex
	checkevent EVENT_GOT_OAKS_PARCEL
	iftrue .DeliverParcel
	checkevent EVENT_BATTLED_OAKSLAB_RIVAL
	iftrue_jumpopenedtext OaksLabMakeItFightText
	checkevent EVENT_GOT_STARTER
	iftrue_jumpopenedtext OaksLabYourPokemonCanBattleText
	thisopenedtext
;OaksLabWhichPokemonDoYouWantText
	text "Oak: Now, <PLAYER>,"
	line "which #mon do"
	cont "you want?"
	done

.DeliverParcel
	writetext OaksLabDeliverParcelText1
	playsound SFX_KEY_ITEM
	waitsfx
	buttonsound
	takeitem OAKS_PARCEL
	writetext OaksLabDeliverParcelText2
	closetext
	playmusic MUSIC_MEET_RIVAL
	pause 15
	showtext OaksLabGrampsText
	moveobject OAKSLAB_BLUE, 4, 7
	appear OAKSLAB_BLUE
	applymovement OAKSLAB_BLUE, Movement_BlueRunsIn
	special RestartMapMusic
	opentext
	writetext OaksLabBlueWhyDidYouCallText
	pause 8
	writetext OaksLabIntroducePokedexText
	closetext
	checkcode VAR_FACING
	ifequal RIGHT, .OakWalk2
	applymovement OAKSLAB_OAK, Movement_OakWalksToTable
	disappear OAKSLAB_POKEDEX_1
	disappear OAKSLAB_POKEDEX_2
	pause 15
	applymovement OAKSLAB_OAK, Movement_OakWalksBack
	jump .continue
.OakWalk2
	applymovement OAKSLAB_OAK, Movement_OakWalksToTable2
	disappear OAKSLAB_POKEDEX_1
	disappear OAKSLAB_POKEDEX_2
	pause 15
	applymovement OAKSLAB_OAK, Movement_OakWalksBack2
	faceplayer
.continue
	opentext
	writetext OaksLabReceivedPokedexText
	playsound SFX_KEY_ITEM
	waitsfx
	buttonsound
	writetext OaksLabDreamText
	verbosegiveitem POKE_BALL, 5
	faceobject OAKSLAB_BLUE, PLAYER
	writetext OaksLabLeaveItToMeText
	closetext
	playmusic MUSIC_FAREWELL_RIVAL
	applymovement OAKSLAB_BLUE, Movement_BlueRunsOut
	disappear OAKSLAB_BLUE
	setflag ENGINE_POKEDEX
	setevent EVENT_GOT_POKEDEX
	clearevent EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	setmapscene VIRIDIAN_CITY, $1
	setmapscene ROUTE_22, $1
	special RestartMapMusic
	end

.RatePokedex
	writetext OaksLabDexCheckText
	special ProfOaksPCBoot
	thisopenedtext
;OaksLabGoodbyeText
	text "If you're in the"
	line "area, I hope you"
	cont "come visit again."
	done

.EnableJohto
	setevent EVENT_CAN_VISIT_JOHTO
	jumpopenedtext OaksLabIntroduceJohtoText

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

OaksLabPokeballDescriptionText:
	text "It contains a"
	line "#mon caught by"
	cont "Prof. Oak!"
	done

OaksLabLastMonText:
	text "Oak: Now, now."
	line "Let's not get too"
	cont "greedy."
	done

OaksLabDidntChooseStarterText:
	text "Oak: Think it over"
	line "carefully."

	para "Your partner is"
	line "important."
	done

OaksLabCharmanderText:
	text "So! You want the"
	line "fire #mon,"
	cont "Charmander?"
	done

OaksLabSquirtleText:
	text "So! You want the"
	line "water #mon,"
	cont "Squirtle?"
	done

OaksLabBulbasaurText:
	text "So! You want the"
	line "grass #mon,"
	cont "Bulbasaur?"
	done

OaksLabMonEnergeticText:
	text "This #mon is"
	line "really energetic!"
	done

OaksLabReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

OaksLabBlueChoosesStarterText:
	text "<RIVAL>: I'll take"
	line "this one, then!"
	done

OaksLabBlueReceivedStarterText:
	text "<RIVAL> received"
	line "@"
	text_from_ram StringBuffer3
	text "!"
	done

OaksLabYourPokemonCanBattleText:
	text "Oak: If a wild"
	line "#mon appears,"
	cont "your #mon can"
	cont "fight against it!"
	done

OaksLabMakeItFightText:
	text "Oak: <PLAYER>,"
	line "raise your young"
	cont "#mon by making"
	cont "it fight!"
	done

OaksLabRivalChallengeText:
	text "<RIVAL>: Wait"
	line "<PLAYER>!"
	cont "Let's check out"
	cont "our #mon!"

	para "Come on, I'll take"
	line "you on!"
	done

OaksLabBlueWinText:
	text "<RIVAL>: WHAT?"
	line "Unbelievable!"
	cont "I picked the"
	cont "wrong #mon!"
	done

OaksLabBlueLossText:
	text "<RIVAL>: Yeah! Am"
	line "I great or what?"
	done

OaksLabRivalToughenUpText:
	text "<RIVAL>: Okay!"
	line "I'll make my"
	cont "#mon fight to"
	cont "toughen it up!"

	para "<PLAYER>! Gramps!"
	line "Smell you later!"
	done

OaksLabDeliverParcelText1:
	text "Oak: Oh, <PLAYER>!"

	para "How is my old"
	line "#mon?"

	para "Well, it seems to"
	line "like you a lot."

	para "You must be"
	line "talented as a"
	cont "#mon trainer!"

	para "What? You have"
	line "something for me?"

	para "<PLAYER> delivered"
	line "Oak's Parcel."
	done

OaksLabDeliverParcelText2:
	text "Ah! These are the"
	line "custom # Balls"
	cont "I ordered from"
	cont "Kurt in Johto!"
	cont "Thanks, <PLAYER>!"

	para "By the way, I must"
	line "ask you to do"
	cont "something for me."
	prompt

OaksLabGrampsText:
	text "<RIVAL>: Gramps!"
	done

OaksLabBlueWhyDidYouCallText:
	text "<RIVAL>: What did"
	line "you call me for?"
	done

OaksLabIntroducePokedexText:
	text "Oak: Oh right! I"
	line "have a request"
	cont "of you two."

	para "On the desk there"
	line "is my invention,"
	cont "#dex!"

	para "It automatically"
	line "records data on"
	cont "#mon you've"
	cont "seen or caught!"

	para "It's a hi-tech"
	line "encyclopedia!"
	done

OaksLabReceivedPokedexText:
	text "Oak: <PLAYER> and"
	line "<RIVAL>! Take"
	cont "these with you!"

	para "<PLAYER> got"
	line "#dex from Oak!"
	done

OaksLabDreamText:
	text "To make a complete"
	line "guide on all the"
	cont "#mon in the"
	cont "world…"

	para "That was my dream!"

	para "But, I'm too old!"
	line "I can't do it!"

	para "So, I want you two"
	line "to fulfill my"
	cont "dream for me!"

	para "Get moving, you"
	line "two!"

	para "This is a great"
	line "undertaking in"
	cont "#mon history!"

	para "But you can't get"
	line "detailed data on"
	cont "#mon by just"
	cont "seeing them."

	para "You must catch"
	line "them! Use these"
	cont "to capture wild"
	cont "#mon."
	prompt

OaksLabLeaveItToMeText:
	text "<RIVAL>: Alright"
	line "Gramps! Leave it"
	cont "all to me!"

	para "<PLAYER>, I hate to"
	line "say it, but I"
	cont "don't need you!"

	para "I know! I'll"
	line "borrow a Town Map"
	cont "from my sis!"

	para "I'll tell her not"
	line "to lend you one,"
	cont "<PLAYER>! Hahaha!"
	done

OaksLabDexCheckText:
	text "How is your #-"
	line "dex coming?"

	para "Let's see…"
	prompt

OaksLabIntroduceJohtoText:
	text "Oak: <PLAYER>!"
	line "Now that you have"
	cont "defeated the Elite"
	cont "Four, I've made"
	cont "arrangements for"
	cont "you to take on a"
	cont "new challenge."

	para "In the nearby"
	line "Johto region,"
	cont "there are another"
	cont "set of Gym Leaders"
	cont "that you can face!"

	para "There is also a"
	line "Battle Tower, that"
	cont "lets you test your"
	cont "skills in a series"
	cont "of battles with"
	cont "other skilled"
	cont "trainers."

	para "You can take the"
	line "Seagallop Ferry in"
	cont "Vermilion City to"
	cont "get there."

	para "Good luck on this"
	line "new adventure,"
	cont "<PLAYER>!"
	prompt

OaksLabTalkAboutJohtoText:
	text "Oak: You'll meet"
	line "new kinds of"
	cont "#mon and face"
	cont "tough trainers in"
	cont "the Johto region."

	para "It should be an"
	line "exciting journey!"
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
