BluesHouse1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, PALLET_TOWN, 2
	warp_event  3,  7, PALLET_TOWN, 2
	warp_event  7,  0, BLUES_HOUSE_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  2,  3, SPRITE_DAISY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, BluesHouseDaisyScript, -1
	object_event  3,  3, SPRITE_MAP_AMBER_LYING_OLD_MAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptext, BluesHouseMapDescription, EVENT_GOT_TOWN_MAP
	
	const_def 1 ; object constants
	const BLUESHOUSE_DAISY
	const BLUESHOUSE_MAP

BluesHouseDaisyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOWN_MAP
	iftrue .AfterMap
	checkevent EVENT_GOT_POKEDEX
	iftrue .GiveTownMap
	thisopenedtext
;DaisyInitialText:
	text "Daisy: Oh, hi"
	line "<PLAYER>!"
	cont "<RIVAL> is out at"
	cont "Grandpa's lab."
	done

.GiveTownMap
	writetext DaisyOfferMapText
	buttonsound
	disappear BLUESHOUSE_MAP
	verbosegiveitem TOWN_MAP
	setevent EVENT_GOT_TOWN_MAP
	thisopenedtext
.DaisyUseMapText
	text "Use the Town Map"
	line "to find out where"
	cont "you are."
	done

.AfterMap
	checkcode VAR_HOUR
	ifequal 15, .Massage
	checkflag ENGINE_TEA_IN_BLUES_HOUSE
	iftrue .After
	thisopenedtext

	text "Daisy: #mon are"
	line "living things! If"
	cont "they get tired,"
	cont "give them a rest!"
	done

.Massage:
	writetext .IntroText
	yesorno
	iffalse .NoMassage
	writetext .QuestionText
	waitbutton
	special Special_DaisyMassage
	ifequal 0, .NoMassage
	ifequal 1, .EggMassage
	setflag ENGINE_TEA_IN_BLUES_HOUSE
	writetext .OkayText
	waitbutton
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_PKMN_HEALED
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	opentext
	writetext .LooksContentText
	special PlayCurMonCry
	buttonsound
	thisopenedtext

	text "Daisy: There you"
	line "go! All done."

	para "See? Doesn't it"
	line "look nice?"

	para "It's such a cute"
	line "#mon."
	done

.IntroText:
	text "Daisy: Hi! Good"
	line "timing. I'm about"
	cont "to have some tea."

	para "Would you like to"
	line "join me?"

	para "Oh, your #mon"
	line "are a bit dirty."

	para "Would you like me"
	line "to groom one?"
	done

.After:
	thistextfaceplayer

	text "Daisy: I always"
	line "have tea around"

	para "this time. Come"
	line "join me."
	done

.NoMassage:
	thistext

	text "Daisy: You don't"
	line "want to have one"

	para "groomed? OK, we'll"
	line "just have tea."
	done

.QuestionText:
	text "Daisy: Which one"
	line "should I groom?"
	done

.OkayText:
	text "Daisy: OK, I'll"
	line "get it looking"
	cont "nice in no time."
	done

.LooksContentText:
	text_from_ram StringBuffer3
	text " looks"
	line "content."
	done

.EggMassage:
	thistext

	text "Daisy: Oh, sorry."
	line "I honestly can't"
	cont "groom an Egg."
	done

DaisyOfferMapText:
	text "Daisy: Grandpa"
	line "asked you to run"
	cont "an errand?"
	
	para "Here, this will"
	line "help you!"
	done

BluesHouseMapDescription:
	text "A map of the"
	line "Kanto region!"
	done
