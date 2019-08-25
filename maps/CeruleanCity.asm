CeruleanCity_MapScriptHeader:
	db 2 ; scene scripts
	scene_script CeruleanCityScriptEnd
	scene_script CeruleanCityScriptEnd

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, CeruleanCityFlyPoint

	db 16 ; warp events
	warp_event 11,  9, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 1
	warp_event 29,  9, CERULEAN_BURGLED_HOUSE, 1
	warp_event 15, 14, CERULEAN_TRADE_SPEECH_HOUSE, 1
	warp_event 21, 15, CERULEAN_POKECENTER_1F, 1
	warp_event 30, 17, CERULEAN_GYM, 1
	warp_event 27, 23, CERULEAN_MART, 2
	warp_event  2,  9, CERULEAN_CAVE_1F, 1
	warp_event 13, 23, CERULEAN_BIKE_SHOP, 1
	warp_event 17,  9, CERULEAN_BERRY_POWDER_HOUSE, 1
	warp_event 21, 23, CERULEAN_COUPLE_HOUSE, 1
	warp_event 37,  8, CERULEAN_WATER_SHOW_SPEECH_HOUSE, 1
	warp_event 31, 23, CERULEAN_ZIG_HOUSE, 1
	warp_event 30,  6, CERULEAN_BURGLED_HOUSE, 3 ; back door
	warp_event 31,  6, CERULEAN_BURGLED_HOUSE, 3 ; back door
	warp_event 11,  6, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 3 ; back door
	warp_event 12,  6, CERULEAN_GYM_BADGE_SPEECH_HOUSE, 3 ; back door

	db 2 ; coord events
	coord_event 22, 2, 0, CeruleanCity_RivalTriggerLeft
	coord_event 23, 2, 0, CeruleanCity_RivalTriggerRight

	db 8 ; bg events
	bg_event 17, 19, SIGNPOST_JUMPTEXT, CeruleanCityText12
	bg_event 19, 26, SIGNPOST_JUMPTEXT, CeruleanCityText13
	bg_event 11, 23, SIGNPOST_JUMPTEXT, CeruleanCityText16
	bg_event 27, 17, SIGNPOST_JUMPTEXT, CeruleanCityText17
	bg_event 11, 20, SIGNPOST_JUMPTEXT, CeruleanCityBicycleText
	bg_event 11, 21, SIGNPOST_JUMPTEXT, CeruleanCityBicycleText
	bg_event 11, 22, SIGNPOST_JUMPTEXT, CeruleanCityBicycleText
	bg_event 25,  7, SIGNPOST_JUMPTEXT, CeruleanCityCapeSignText

	db 12 ; object events
	object_event 22, -3, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_CERULEAN_CITY_RIVAL
	object_event 33,  4, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, -1;PERSONTYPE_GENERICTRAINER, {TODO: range}, {TODO: generictrainer OPP_ROCKET, 5}, -1 ; CeruleanCityText2
	object_event 31, 20, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText3, -1
	object_event 15, 17, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText4, -1
	object_event  9, 21, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText5, -1
	object_event 29, 10, SPRITE_OFFICER_JENNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText6, EVENT_HIDE_CERULEAN_CITY_JENNY1
	object_event 28, 10, SPRITE_OFFICER_JENNY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText6, EVENT_HIDE_CERULEAN_CITY_JENNY2
	object_event 29, 25, SPRITE_LASS, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeruleanCityText7, -1
	object_event 28, 25, SPRITE_SLOWBRO, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, CeruleanCityText8, -1
	object_event 16, 24, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText9, -1
	object_event  2, 10, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanCityText10, EVENT_BEAT_ELITE_FOUR
	cuttree_event 25, 26, -1

	const_def 1 ; object constants
	const CERULEANCITY_RIVAL

CeruleanCityScriptEnd:
	end

CeruleanCity_RivalTriggerLeft:
	scall CeruleanCity_RivalEnter
	applyonemovement CERULEANCITY_RIVAL, slow_step_right
	applyonemovement CERULEANCITY_RIVAL, slow_step_down
	turnobject PLAYER, RIGHT
CeruleanCity_RivalLeave:
	applyonemovement CERULEANCITY_RIVAL, slow_step_down
	turnobject PLAYER, DOWN
	applymovement CERULEANCITY_RIVAL, CeruleanCityStepDown4Movement
	disappear CERULEANCITY_RIVAL
	setscene $1
	playmapmusic
	end

CeruleanCity_RivalTriggerRight:
	moveobject CERULEANCITY_RIVAL, 23, -3
	scall CeruleanCity_RivalEnter
	applyonemovement CERULEANCITY_RIVAL, slow_step_left
	applyonemovement CERULEANCITY_RIVAL, slow_step_down
	turnobject PLAYER, LEFT
	jump CeruleanCity_RivalLeave

CeruleanCity_RivalEnter:
	appear CERULEANCITY_RIVAL
	playmusic MUSIC_MEET_RIVAL
	applymovement CERULEANCITY_RIVAL, CeruleanCityStepDown4Movement
	showtext CeruleanCityRivalSeenText
	winlosstext CeruleanCityRivalBeatenText, CeruleanCityRivalYouLoseText
	setlasttalked CERULEANCITY_RIVAL
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	loadtrainer SONY1, 7
	jump .continueBattle
.Squirtle
	loadtrainer SONY1, 8
	jump .continueBattle
.Bulbasaur
	loadtrainer SONY1, 9
.continueBattle
	startbattle
	dontrestartmapmusic
	reloadmap
	playmusic MUSIC_FAREWELL_RIVAL
	showtext CeruleanCityRivalAfterBattleText
	end

CeruleanCityStepDown4Movement:
	slow_step_down
	slow_step_down
	slow_step_down
	slow_step_down
	step_end

CeruleanCityFlyPoint:
	setflag ENGINE_FLYPOINT_CERULEAN
	return

CeruleanCityText7: ; Lass
	faceplayer
	random 3
	iffalse_jumptext CeruleanCityLassText1
	ifequal 1, CeruleanCityLassText2
	jumptext CeruleanCityLassText3

CeruleanCityText8: ; Slowbro
	random 4
	iffalse_jumptext CeruleanCitySlowbroText1
	ifequal 1, CeruleanCitySlowbroText2
	ifequal 2, CeruleanCitySlowbroText3
	jumptext CeruleanCitySlowbroText4

CeruleanCityText10:
	text "This is Cerulean"
	line "Cave! Horribly"
	cont "strong #mon"
	cont "live in there!"

	para "The #mon League"
	line "Champion is the"
	cont "only person who"
	cont "is allowed in!"
	done

CeruleanCityText12:
	text "Cerulean City"

	para "A mysterious blue"
	line "aura surrounds it"
	done

CeruleanCityText13:
	text "Trainer Tips"

	para "Pressing B Button"
	line "during evolution"
	cont "cancels the whole"
	cont "process."
	done

CeruleanCityText16:
	text "Grass and caves"
	line "handled easily!"
	cont "Bike Shop"
	done

CeruleanCityText17:
	text "Cerulean City"
	line "#mon Gym"
	cont "Leader: Misty"

	para "The tomboyish"
	line "mermaid!"
	done

CeruleanCityText3:
	text "You're a trainer"
	line "too? Collecting,"
	cont "fighting, it's a"
	cont "tough life."
	done

CeruleanCityText4:
	text "That bush in"
	line "front of the shop"
	cont "is in the way."

	para "There might be a"
	line "way around."
	done

CeruleanCityText5:
	text "You're making an"
	line "encyclopedia on"
	cont "#mon? That"
	cont "sounds amusing."
	done

CeruleanCityText6:
	text "The people here"
	line "were robbed."

	para "It's obvious that"
	line "Team Rocket is"
	cont "behind this most"
	cont "heinous crime!"

	para "Even our Police"
	line "Force has trouble"
	cont "with the Rockets!"
	done

CeruleanCityText9:
	text "I want a bright"
	line "red Bicycle!"

	para "I'll keep it at"
	line "home, so it won't"
	cont "get dirty!"
	done

CeruleanCityRivalSeenText:
	text "<RIVAL>: Yo!"
	line "<PLAYER>!"

	para "You're still"
	line "struggling along"
	cont "back here?"

	para "I'm doing great!"
	line "I caught a bunch"
	cont "of strong and"
	cont "smart #mon!"

	para "Here, let me see"
	line "what you caught,"
	cont "<PLAYER>!"
	done

CeruleanCityRivalBeatenText:
	text "Hey!"
	line "Take it easy!"
	cont "You won already!"
	done

CeruleanCityRivalYouLoseText:
	text "Heh!"
	line "You're no match"
	cont "for my genius!"
	done

CeruleanCityRivalAfterBattleText:
	text "<RIVAL>: Hey,"
	line "guess what?"

	para "I went to Bill's"
	line "and got him to"
	cont "show me his rare"
	cont "#mon!"

	para "That added a lot"
	line "of pages to my"
	cont "#dex!"

	para "After all, Bill's"
	line "world famous as a"
	cont "# Maniac!"

	para "He invented the"
	line "#mon Storage"
	cont "System on PC!"

	para "Since you're using"
	line "his system, go"
	cont "thank him!"

	para "Well, I better"
	line "get rolling!"
	cont "Smell ya later!"
	done

CeruleanCityRocketSeenText:
	text "Hey! Stay out!"
	line "It's not your"
	cont "yard! Huh? Me?"

	para "I'm an innocent"
	line "bystander! Don't"
	cont "you believe me?"
	done

CeruleanCityRocketBeatenText:
	text "Stop!"
	line "I give up! I'll"
	cont "leave quietly!"
	done

CeruleanCityRocketAfterBattleText:
	text "OK! I'll return"
	line "the TM I stole!"
	done

CeruleanCityRocketAfterTM28Text:
	text "I better get"
	line "moving! Bye!"
	done

CeruleanCityLassText1:
	text "OK! Slowbro!"
	line "Use Sonic Boom!"
	cont "Come on, Slowbro"
	cont "pay attention!"
	done

CeruleanCityLassText2:
	thistext
	text "Slowbro, punch!"
	line "No! You blew it"
	cont "again!"
	done

CeruleanCityLassText3:
	text "Slowbro, Withdraw!"
	line "No! That's wrong!"

	para "It's so hard to"
	line "control #mon!"

	para "Your #mon's"
	line "obedience depends"
	cont "on your abilities"
	cont "as a trainer!"
	done

CeruleanCitySlowbroText1:
	text "Slowbro took a"
	line "snooze…"
	done

CeruleanCitySlowbroText2:
	thistext
	text "Slowbro is"
	line "loafing around…"
	done

CeruleanCitySlowbroText3:
	thistext
	text "Slowbro turned"
	line "away…"
	done

CeruleanCitySlowbroText4:
	text "Slowbro"
	line "ignored orders…"
	done

CeruleanCityBicycleText:
	text "A shiny new"
	line "Bicycle!"
	done

CeruleanCityCapeSignText:
	text "Cerulean Cape"
	line "ahead"
	done
