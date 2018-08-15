MountMoonB2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event 27, 11, MOUNT_MOON_B1F, 2
	warp_event 23, 19, MOUNT_MOON_B1F, 5
	warp_event 17, 29, MOUNT_MOON_B1F, 6
	warp_event  7,  9, MOUNT_MOON_B1F, 7

	db 1 ; coord events
	coord_event 5, 7, 0, MtMoonJessieJamesScript

	db 0 ; bg events

	db 11 ; object events
	object_event 11,  5, SPRITE_JESSIE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_JESSIE_JAMES_MT_MOON
	object_event 11,  6, SPRITE_JAMES, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_JESSIE_JAMES_MT_MOON
	object_event 14, 10, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 2, TrainerSuperNerdMiguel, -1
	object_event 14, 17, SPRITE_ROCKET_F, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_TRAINER, 4, TrainerAriana1, EVENT_HIDE_ROCKETS_MT_MOON
	object_event 20, 26, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerMtMoonGrunt1, EVENT_HIDE_ROCKETS_MT_MOON
	object_event 31, 11, SPRITE_ROCKET_F, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerMtMoonGrunt2, EVENT_HIDE_ROCKETS_MT_MOON
	object_event 31, 18, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_GENERICTRAINER, 4, GenericTrainerMtMoonGrunt3, EVENT_HIDE_ROCKETS_MT_MOON
	object_event 14,  7, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MtMoonDomeFossilScript, EVENT_MT_MOON_FOSSILS
	object_event 15,  7, SPRITE_BOULDER_ROCK_FOSSIL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MtMoonHelixFossilScript, EVENT_MT_MOON_FOSSILS
	itemball_event 28, 23, HP_UP, 1, EVENT_MT_MOON_B2F_HP_UP
	tmhmball_event 31,  7, TM_THIEF, EVENT_MT_MOON_B2F_THIEF

	const_def 1 ; object constants
	const MT_MOON_JESSIE
	const MT_MOON_JAMES
	const MT_MOON_FOSSIL_NERD
	const MT_MOON_ARIANA
	const MT_MOON_GRUNT1
	const MT_MOON_GRUNT2
	const MT_MOON_GRUNT3
	const MT_MOON_DOME_FOSSIL
	const MT_MOON_HELIX_FOSSIL

TrainerSuperNerdMiguel:
	trainer SUPER_NERD, MIGUEL, EVENT_BEAT_SUPER_NERD_MIGUEL, MtMoon3BattleText1, MtMoon3EndBattleText1, 0, SuperNerdMiguelScript
	
SuperNerdMiguelScript:
	checkevent EVENT_MT_MOON_FOSSILS
	iffalse_jumptext MtMoon3AfterBattleText1
	thistext

MtMoon3FossilLabText:
	text "Far away, on"
	line "Cinnabar Island,"
	cont "there's a #mon"
	cont "Lab."

	para "They do research"
	line "on regenerating"
	cont "fossils."
	done

TrainerAriana1:
	trainer EXECUTIVE_F, ARIANA_MTMOON, EVENT_BEAT_ARIANA_MT_MOON, MtMoon3BattleText2, MtMoon3EndBattleText2, 0, ArianaMtMoonScript
	
ArianaMtMoonScript:
	showtext MtMoon3AfterBattleText2
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear MT_MOON_ARIANA
	disappear MT_MOON_GRUNT1
	disappear MT_MOON_GRUNT2
	disappear MT_MOON_GRUNT3
	pause 15
	special Special_FadeInQuickly
	end

GenericTrainerMtMoonGrunt1:
	generictrainer ROCKET, GRUNT_MTMOON_1, EVENT_BEAT_MT_MOON_GRUNT_1, MtMoon3BattleText3, MtMoon3EndBattleText3

	text "Darn it all! My"
	line "associates won't"
	cont "stand for this!"
	done

GenericTrainerMtMoonGrunt2:
	generictrainer ROCKET_F, GRUNT_MTMOON_2, EVENT_BEAT_MT_MOON_GRUNT_2, MtMoon3BattleText4, MtMoon3EndBattleText4

	text "If you find a"
	line "fossil, give it"
	cont "to me and scram!"
	done

GenericTrainerMtMoonGrunt3:
	generictrainer ROCKET, GRUNT_MTMOON_3, EVENT_BEAT_MT_MOON_GRUNT_3, MtMoon3BattleText5, MtMoon3EndBattleText5

	text "#mon lived"
	line "here long before"
	cont "people came."
	done

MtMoonJessieJamesScript:
	appear MT_MOON_JESSIE
	appear MT_MOON_JAMES
	playmusic MUSIC_JESSIE_JAMES_ENCOUNTER
	showtext MtMoonJessieJamesText1
	showemote EMOTE_SHOCK, PLAYER, 15
	applyonemovement PLAYER, step_up
	applymovement MT_MOON_JESSIE, Movement_JessieWalksUpMM
	applymovement MT_MOON_JAMES, Movement_JamesWalksUpMM
	showtext MtMoonJessieJamesText2
	winlosstext MtMoonJessieJamesText3, 0
	loadtrainer JESSIE_JAMES, JESSIE_JAMES_MTMOON
	setevent EVENT_HIDE_JESSIE_JAMES_MT_MOON ; to make sure they are hidden again if you lose and come back
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_JESSIE_JAMES_ENCOUNTER
	showtext MtMoonJessieJamesText4
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	disappear MT_MOON_JESSIE
	disappear MT_MOON_JAMES
	pause 15
	special Special_FadeInQuickly
	setscene $1
	playmapmusic
	end

Movement_JessieWalksUpMM:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_left
	turn_head_down
	step_end

Movement_JamesWalksUpMM:
	step_left
	step_left
	step_left
	step_left
	step_left
	step_end

MtMoonDomeFossilScript:
	opentext
	writetext MtMoon3DomeFossilText
	yesorno
	iffalse_endtext
	verbosegiveitem DOME_FOSSIL
	iffalse_jumpopenedtext MtMoon3NoRoomText
	setevent EVENT_CHOSE_DOME_FOSSIL_MT_MOON
	disappear MT_MOON_DOME_FOSSIL
	closetext
	applymovement MT_MOON_FOSSIL_NERD, Movement_WalkToHelix
	disappear MT_MOON_HELIX_FOSSIL
	faceobject MT_MOON_FOSSIL_NERD, PLAYER
	faceobject PLAYER, MT_MOON_FOSSIL_NERD
	showtext MtMoon3FossilLabText
	end

MtMoonHelixFossilScript:
	opentext
	writetext MtMoon3HelixFossilText
	yesorno
	iffalse_endtext
	verbosegiveitem HELIX_FOSSIL
	iffalse_jumpopenedtext MtMoon3NoRoomText
	setevent EVENT_CHOSE_HELIX_FOSSIL_MT_MOON
	disappear MT_MOON_HELIX_FOSSIL
	closetext
	applymovement MT_MOON_FOSSIL_NERD, Movement_WalkToDome
	disappear MT_MOON_DOME_FOSSIL
	faceobject MT_MOON_FOSSIL_NERD, PLAYER
	faceobject PLAYER, MT_MOON_FOSSIL_NERD
	showtext MtMoon3FossilLabText
	end

Movement_WalkToHelix:
	slow_step_right
Movement_WalkToDome:
	slow_step_up
	slow_step_up
	step_end

MtMoonJessieJamesText1:
	text "Stop right there!"
	done

MtMoonJessieJamesText2:
	text "That fossil is"
	line "Team Rocket's!"

	para "Surrender now, or "
	line "prepare to fight!"
	done

MtMoonJessieJamesText3:
	text "A brat beat us?"
	done

MtMoonJessieJamesText4:
	text "Team Rocket, blast"
	line "off at the speed"
	cont "of light!"
	done

MtMoon3DomeFossilText:
	text "You want the"
	line "Dome Fossil?"
	done

MtMoon3HelixFossilText:
	text "You want the"
	line "Helix Fossil?"
	done

MtMoon3NoRoomText:
	text "Look, you've got"
	line "no room for this."
	done

MtMoon3BattleText1:
	text "Hey, stop!"

	para "I found these"
	line "fossils! They're"
	cont "both mine!"
	done

MtMoon3EndBattleText1:
	text "OK!"
	line "I'll share!"
	done

MtMoon3AfterBattleText1:
	text "We'll each take"
	line "one!"
	cont "No being greedy!"
	done

MtMoon3BattleText2:
	text "Team Rocket will"
	line "find the fossils,"
	cont "revive and sell"
	cont "them for cash!"
	done

MtMoon3EndBattleText2:
	text "Urgh!"
	line "Now I'm mad!"
	done

MtMoon3AfterBattleText2:
	text "This isn't the"
	line "end, it's only"
	cont "the beginning."
	
	para "Just you wait and"
	line "see!"
	done

MtMoon3BattleText3:
	text "We, Team Rocket,"
	line "are #MON"
	cont "gangsters!"
	done

MtMoon3EndBattleText3:
	text "I blew it!"
	done

MtMoon3BattleText4:
	text "We're pulling a"
	line "big job here!"
	cont "Get lost, kid!"
	done

MtMoon3EndBattleText4:
	text "So, you are good."
	done

MtMoon3BattleText5:
	text "Little kids"
	line "should leave"
	cont "grown-ups alone!"
	done

MtMoon3EndBattleText5:
	text "I'm steamed!"
	done

