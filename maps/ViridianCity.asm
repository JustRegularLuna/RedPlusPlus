ViridianCity_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, ViridianCityFlyPoint

	db 7 ; warp events
	warp_event 30,  7, VIRIDIAN_GYM, 1
	warp_event 21,  9, VIRIDIAN_NICKNAME_SPEECH_HOUSE, 1
	warp_event 21, 15, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event 29, 19, VIRIDIAN_MART, 2
	warp_event 23, 25, VIRIDIAN_POKECENTER_1F, 1
	warp_event 20, 33, ROUTE_1_VIRIDIAN_GATE, 1
	warp_event 21, 33, ROUTE_1_VIRIDIAN_GATE, 2

	db 2 ; coord events
	coord_event 19, 9, 0, ViridianCityLyingOldManTrigger
	coord_event 30, 8, 1, ViridianCityGymDoorLockTrigger

	db 4 ; bg events
	bg_event 17, 17, SIGNPOST_JUMPTEXT, ViridianCityText8
	bg_event 19,  1, SIGNPOST_JUMPTEXT, ViridianCityText9
	bg_event 19, 27, SIGNPOST_JUMPTEXT, ViridianCityText10
	bg_event 28,  7, SIGNPOST_JUMPTEXT, ViridianCityText13

	db 11 ; object events
	object_event 13, 20, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianCityText1, -1
	object_event 29,  8, SPRITE_GAMBLER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, ViridianCityGamblerScript, -1
	object_event 30, 24, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ViridianCityCaterpillarNerdScript, -1
	object_event 17,  9, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, ViridianCityGirlScript, -1
	object_event 18,  9, SPRITE_MAP_AMBER_LYING_OLD_MAN, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_COMMAND, jumptext, ViridianCityText_19191, EVENT_GOT_POKEDEX
	object_event  6, 23, SPRITE_FISHER2, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ViridianCitySleepyGuyScript, -1
	object_event 17,  5, SPRITE_GAMBLER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_SCRIPT, 0, ViridianCityCatchTutorialScript, EVENT_HIDE_VIRIDIAN_CITY_OLD_MAN
	itemball_event 14, 4, POTION, 1, EVENT_GOT_VIRIDIAN_CITY_POTION
	cuttree_event  8, 22, -1
	cuttree_event 15,  4, -1
	cuttree_event 22, -3, -1 ; visible on Route2South

	const_def 1 ; object constants

ViridianCityFlyPoint:
	setflag ENGINE_FLYPOINT_VIRIDIAN
	return

ViridianCityLyingOldManTrigger:
	showtext ViridianCityText_19191
	applyonemovement PLAYER, step_down
	end

ViridianCityGymDoorLockTrigger:
	checkcode VAR_BADGES
	ifgreater 6, .AllOtherBadges
	turnobject PLAYER, UP
	showtext ViridianCityText14
	applyonemovement PLAYER, jump_step_down
.AllOtherBadges
	end

ViridianCitySleepyGuyScript:
	checkevent EVENT_GOT_TM67_DREAM_EATER
	iftrue_jumptextfaceplayer TM67Explanation
	faceplayer
	opentext
	writetext ViridianCityText_191ca
	buttonsound
	verbosegivetmhm TM_DREAM_EATER
	setevent EVENT_GOT_TM67_DREAM_EATER
	endtext

ViridianCityCatchTutorialScript:
	faceplayer
	opentext
	writetext ViridianCityText_1920a
	yesorno
	iftrue_jumpopenedtext ViridianCityText_19214
	writetext ViridianCityText_1920f
	waitbutton
	closetext
	loadwildmon WEEDLE, 5
	catchtutorial BATTLETYPE_TUTORIAL
	opentext
	writetext ViridianCityText_19219
	waitbutton
	closetext
	end

ViridianCityGamblerScript:
	faceplayer
	opentext
	checkcode VAR_BADGES
	ifgreater 6, .GymLeaderHasReturned
	thisopenedtext
;ViridianCityText_19122:
	text "This #mon Gym"
	line "is always closed."

	para "I wonder who the"
	line "Leader is?"
	done
.GymLeaderHasReturned
	jumpopenedtext ViridianCityText_19127

ViridianCityGirlScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_POKEDEX
	iftrue_jumpopenedtext ViridianCityText_1917a
	thisopenedtext
;ViridianCityText_19175:
	text "Oh Grandpa! Don't"
	line "be so mean!"
	cont "He hasn't had his"
	cont "coffee yet."
	done

ViridianCityCaterpillarNerdScript:
	faceplayer
	opentext
	writetext ViridianCityText_1914d
	yesorno
	iftrue_jumpopenedtext ViridianCityText_19157
	thisopenedtext
ViridianCityText_19152:
	text "Oh, OK then!"
	done

ViridianCityText1:
	text "Those # Balls"
	line "at your waist!"
	cont "You have #mon!"

	para "It's great that"
	line "you can carry and"
	cont "use #mon any"
	cont "time, anywhere!"
	done

ViridianCityText10:
	text "Trainer Tips"

	para "The battle moves"
	line "of #mon are"
	cont "limited by their"
	cont "Power Points, PP."

	para "To replenish PP,"
	line "rest your tired"
	cont "#mon at a"
	cont "#mon Center!"
	done

ViridianCityText13:
	text "Viridian City"
	line "#mon Gym"
	done

ViridianCityText8:
	text "Viridian City"

	para "The eternally"
	line "green paradise"
	done

ViridianCityText9:
	text "Trainer Tips"

	para "Catch #mon"
	line "and expand your"
	cont "collection!"

	para "The more you have,"
	line "the easier it is"
	cont "to fight!"
	done

ViridianCityText_19127:
	text "Viridian Gym's"
	line "Leader returned!"
	done

ViridianCityText_1914d:
	text "You want to know"
	line "about the 2 kinds"
	cont "of caterpillar"
	cont "#mon?"
	done

ViridianCityText_19157:
	text "Caterpie has no"
	line "poison, but"
	cont "Weedle does."

	para "Watch out for its"
	line "Poison Sting!"
	done

ViridianCityText_1917a:
	text "When I go shop in"
	line "Pewter City, I"
	cont "have to take the"
	cont "winding trail in"
	cont "Viridian Forest."
	done

ViridianCityText_19191:
	text "You can't go"
	line "through here!"

	para "This is private"
	line "property!"
	done

ViridianCityText_1920a:
	text "Ahh, I've had my"
	line "coffee now and I"
	cont "feel great!"

	para "Sure you can go"
	line "through!"

	para "Are you in a"
	line "hurry?"
	done

ViridianCityText_1920f:
	text "I see you're using"
	line "a #dex."

	para "When you catch a"
	line "#mon, #dex"
	cont "is automatically"
	cont "updated."

	para "What? Don't you"
	line "know how to catch"
	cont "#mon?"

	para "I'll show you"
	line "how to then."
	done

ViridianCityText_19214:
	text "Time is money…"
	line "Go along then."
	done

ViridianCityText_19219:
	text "First, you need"
	line "to weaken the"
	cont "target #mon."
	done

ViridianCityText14:
	text "The Gym's doors"
	line "are locked…"
	done

ViridianCityText_191ca:
	text "Yawn!"
	line "I must have dozed"
	cont "off in the sun."

	para "I had this dream"
	line "about a Drowzee"
	cont "eating my dream."
	cont "What's this?"
	cont "Where did this TM"
	cont "come from?"

	para "This is spooky!"
	line "Here, you can"
	cont "have this TM."
	done

TM67Explanation:
	text "TM67 contains"
	line "Dream Eater…"
	cont "…Snore…"
	done
