Route2Gate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 6 ; warp events
	warp_event  4,  0, ROUTE_2_NORTH, 2
	warp_event  5,  0, ROUTE_2_NORTH, 3
	warp_event  4,  7, ROUTE_2_SOUTH, 1
	warp_event  5,  7, ROUTE_2_SOUTH, 1
	warp_event  9,  3, ROUTE_16_WEST, 1
	warp_event  9,  4, ROUTE_16_WEST, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  3,  4, SPRITE_OAK_AIDE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Route2GateText1, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Route2GateText2, -1

Route2GateText1:
	faceplayer
	opentext
	checkevent EVENT_GOT_FLASH_FROM_OAKS_AIDE
	iftrue .Explain
	writetext OaksAideFlashIntro
	waitbutton
	count_seen_caught
	checkcode VAR_DEXCAUGHT
	ifgreater 9, .GiveFlash
	jumpopenedtext OaksAideFlashNotEnough
.GiveFlash
	writetext OaksAideGiveFlashText
	waitbutton
	verbosegivetmhm TM_FLASH
	setevent EVENT_GOT_FLASH_FROM_OAKS_AIDE
.Explain
	thisopenedtext

	text "A #mon with"
	line "Flash can light up"
	cont "even the darkest"
	cont "caves!"
	
	para "I'm sure you'll"
	line "find that useful"
	cont "on your travels."
	done

OaksAideFlashIntro:
	text "Hi! Remember me?"
	line "I'm Prof.Oak's"
	cont "Aide!"

	para "If you caught 10"
	line "kinds of #MON,"
	cont "I'm supposed to"
	cont "give you a TM!"

	para "So, <PLAYER>! Have"
	line "you caught at"
	cont "least 10 kinds of"
	cont "#MON?"
	done

OaksAideFlashNotEnough:
	text "Let's see…"
	line "Uh-oh! You've only"

	para "caught @"
	deciram wd003, 1, 3
	text " kinds"
	line "of #mon."

	para "When you get 10"
	line "kinds, come back"
	cont "for your TM."
	done

OaksAideGiveFlashText:
	text "Let's see…"
	line "Great job! You've"

	para "caught @"
	deciram wd003, 1, 3
	text " kinds"
	line "of #mon."

	para "Congratulations!"
	line "Here you go!"
	done

Route2GateText2:
	text "Once a #mon"
	line "learns Flash, you"
	cont "can get through"
	cont "Rock Tunnel."
	done
