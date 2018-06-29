ViridianSchoolHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  9, VIRIDIAN_CITY, 3
	warp_event  3,  9, VIRIDIAN_CITY, 3

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  0, SIGNPOST_READ, SchoolBlackboard
	bg_event  4,  0, SIGNPOST_READ, SchoolBlackboard

	db 5 ; object events
	object_event  0,  1, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, SchoolText1, -1
	object_event  3,  3, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SchoolNotes, -1
	object_event  3,  4, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, SchoolText2, -1
	object_event  4,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SchoolSlacker1, -1
	object_event  5,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, SchoolSlacker2, -1

SchoolBlackboard:
	opentext
	writetext SchoolBlackboardText
.Loop:
	loadmenu .MenuHeader
	_2dmenu
	closewindow
	ifequal $1, .Poison
	ifequal $2, .Paralysis
	ifequal $3, .Sleep
	ifequal $4, .Burn
	ifequal $5, .Freeze
	endtext

.Poison:
	writetext SchoolPoisonText
	waitbutton
	jump .Loop

.Paralysis:
	writetext SchoolParalysisText
	waitbutton
	jump .Loop

.Sleep:
	writetext SchoolSleepText
	waitbutton
	jump .Loop

.Burn:
	writetext SchoolBurnText
	waitbutton
	jump .Loop

.Freeze:
	writetext SchoolFreezeText
	waitbutton
	jump .Loop

.MenuHeader:
	db $40 ; flags
	db 00, 00 ; start coords
	db 08, 11 ; end coords
	dw .Data
	db 1 ; default option

.Data:
	db $80 ; flags
	dn 3, 2 ; rows, columns
	db 5 ; spacing
	dba .Text
	dbw BANK(SchoolBlackboard), 0

.Text:
	db "Psn@"
	db "Par@"
	db "Slp@"
	db "Brn@"
	db "Frz@"
	db "Quit@"

SchoolSlacker1:
	showtextfaceplayer SchoolText3
	turnobject LAST_TALKED, RIGHT
	end

SchoolSlacker2:
	showtextfaceplayer SchoolText4
	turnobject LAST_TALKED, LEFT
	end

SchoolNotes:
	opentext
	writetext ViridianSchoolNotebookText1
	writetext TurnPageText
	yesorno
	iffalse_endtext
	writetext ViridianSchoolNotebookText2
	writetext TurnPageText
	yesorno
	iffalse_endtext
	writetext ViridianSchoolNotebookText3
	writetext TurnPageText
	yesorno
	iffalse_endtext
	writetext ViridianSchoolNotebookText4
	writetext TurnPageText
	yesorno
	iffalse_endtext
	thisopenedtext

ViridianSchoolNotebookText5:
	text "Girl: Hey! Don't"
	line "look at my notes!"
	done

ViridianSchoolNotebookText1:
	text "Looked at the"
	line "notebook!"

	para "First page…"

	para "# Balls are"
	line "used to catch"
	cont "#mon."

	para "Up to 6 #mon"
	line "can be carried."

	para "People who raise"
	line "and make #mon"
	cont "fight are called"
	cont "#mon trainers."
	prompt

ViridianSchoolNotebookText2:
	text "Second page…"

	para "A healthy #mon"
	line "may be hard to"
	cont "catch, so weaken"
	cont "it first!"

	para "Poison, burns and"
	line "other damage are"
	cont "effective!"
	prompt

ViridianSchoolNotebookText3:
	text "Third page…"

	para "#mon trainers"
	line "seek others to"
	cont "engage in #mon"
	cont "fights."

	para "Battles are"
	line "constantly fought"
	cont "at #mon Gyms."
	prompt

ViridianSchoolNotebookText4:
	text "Fourth page…"

	para "The goal for"
	line "#mon trainers"
	cont "is to beat the "
	cont "top 8 #mon"
	cont "Gym Leaders."

	para "Do so to earn the"
	line "right to face…"

	para "The Elite Four of"
	line "#mon League!"
	prompt

TurnPageText:
	text "Turn the page?"
	done

SchoolText1:
	text "Okay!"

	para "Be sure to read"
	line "the blackboard"
	cont "carefully!"
	done

SchoolText2:
	text "Whew! I'm trying"
	line "to memorize all"
	cont "my notes."
	done

SchoolText3:
	text "I traded my best"
	line "#mon to the"
	cont "guy beside me."
	done

SchoolText4:
	text "Huh? The #mon I"
	line "just got is a"
	cont "different color!"
	done

SchoolBlackboardText:
	text "The blackboard"
	line "describes #mon"

	para "status changes in"
	line "battle."
	done

SchoolPoisonText:
	text "If poisoned, a"
	line "#mon steadily"
	cont "loses HP."

	para "Poison lingers"
	line "after the battle,"

	para "and HP is lost as"
	line "you walk."

	para "To cure it, use an"
	line "Antidote."
	done

SchoolParalysisText:
	text "Paralysis reduces"
	line "speed and may"
	cont "prevent movement."

	para "It remains after"
	line "battle, so use"
	cont "a ParalyzeHeal."
	done

SchoolSleepText:
	text "If asleep, your"
	line "#mon can't make"
	cont "a move."

	para "A sleeping #mon"
	line "doesn't wake up"
	cont "after battle."

	para "Wake it up with"
	line "an Awakening."
	done

SchoolBurnText:
	text "A burn steadily"
	line "consumes HP."

	para "It also reduces"
	line "attack power."

	para "A burn lingers"
	line "after battle."

	para "Use a Burn Heal as"
	line "the cure."
	done

SchoolFreezeText:
	text "If your #mon is"
	line "frozen, it can't"
	cont "do a thing."

	para "It remains frozen"
	line "after battle."

	para "Thaw it out with"
	line "an Ice Heal."
	done
