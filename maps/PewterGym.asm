PewterGym_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  4, 13, PEWTER_CITY, 2
	warp_event  5, 13, PEWTER_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  2, 11, SIGNPOST_READ, PewterGymStatue
	bg_event  7, 11, SIGNPOST_READ, PewterGymStatue

	db 3 ; object events
	object_event  5,  1, SPRITE_BROCK, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, LeaderBrockScript, -1
	object_event  2,  7, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_GENERICTRAINER, 3, GenericTrainerCamperLiam, -1
	object_event  6, 11, SPRITE_GYM_HELPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 1, PewterGymGuyScript, -1


PewterGymStatue:
	trainertotext BROCK, 1, $1
	checkflag ENGINE_BOULDERBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	jumpstd gymstatue2

LeaderBrockScript:
	faceplayer
	opentext
	checkflag ENGINE_BOULDERBADGE
	iftrue .BeatBrock
	writetext PewterGymBrockIntroduction
	waitbutton
	closetext
	winlosstext PewterGymDefeatedBrockText, 0
	loadtrainer BROCK, 1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_BROCK
	setevent EVENT_BEAT_CAMPER_LIAM
	setevent EVENT_HIDE_PEWTER_BROCK_GUY
	setmapscene PEWTER_CITY, $1
	setmapscene ROUTE_22, $2
	opentext
	writetext PewterGymBrockAfterBattleText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_BOULDERBADGE
	writetext PewterGymTMtext
	buttonsound
	verbosegivetmhm TM_SANDSTORM
	writetext PewterGymDescribeTMText
	waitbutton
.BeatBrock
	thisopenedtext
	text "There are all"
	line "kinds of trainers"
	cont "in the world."

	para "I'm in training to"
	line "become a #mon"
	cont "breeder."

	para "If you take your"
	line "#mon training"
	cont "seriously, go"
	cont "visit the Gym in"
	cont "Cerulean and test"
	cont "your abilities!"
	done

GenericTrainerCamperLiam:
	generictrainer CAMPER, LIAM, EVENT_BEAT_CAMPER_LIAM, CamperLiamSeenText, CamperLiamBeatenText

	text "You're pretty hot,"
	line "but not as hot"
	cont "as Brock!"
	done

PewterGymGuyScript:
	faceplayer
	checkevent EVENT_BEAT_BROCK
	iftrue_jumptext PewterGymGuyWinText
	thistext

	text "Hiya! I can tell"
	line "you have what it"
	cont "takes to become a"
	cont "#moc champ!"

	para "I'm no trainer,"
	line "but I can tell"
	cont "you how to win!"

	para "Let me take you"
	line "to the top!"
	done

PewterGymGuyWinText:
	text "Just as I thought!"
	line "You're #mon"
	cont "champ material!"
	done

PewterGymBrockIntroduction:
	text "I'm Brock!"
	line "I'm Pewter's Gym"
	cont "Leader!"

	para "I believe in rock"
	line "hard defense and"
	cont "determination!"

	para "That's why my"
	line "#mon are all"
	cont "the rock-type!"

	para "Do you still want"
	line "to challenge me?"
	cont "Fine then! Show"
	cont "me your best!"
	done

PewterGymDefeatedBrockText:
	text "I took you for"
	line "granted."
	done

PewterGymBrockAfterBattleText:
	text "As proof of your"
	line "victory, here's"
	cont "the BoulderBadge!"

	para "<PLAYER> received"
	line "the BoulderBadge!"
	done

PewterGymTMtext:
	text "Wait! Take this"
	line "with you!"
	done

PewterGymDescribeTMText:
	text "A TM contains a"
	line "technique that"
	cont "can be taught to"
	cont "#mon."
	
	para "They can be used"
	line "again and again,"
	cont "so put them to"
	cont "good use when you"
	cont "find them!"

	para "That TM contains"
	line "Sandstorm."

	para "Teach it to a"
	line "Ground, Rock, or"
	cont "Steel type!"
	done

CamperLiamSeenText:
	text "Stop right there,"
	line "kid!"

	para "You're still light"
	line "years from facing"
	cont "Brock!"
	done

CamperLiamBeatenText:
	text "Darn!"

	para "Light years isn't"
	line "time! It measures"
	cont "distance!"
	done
