Route1_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event 10,  3, ROUTE_1_VIRIDIAN_GATE, 3

	db 0 ; coord events

	db 1 ; bg events
	bg_event  9, 35, SIGNPOST_JUMPTEXT, Route1Text3

	db 3 ; object events
	object_event  5, 32, SPRITE_CLERK, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_SCRIPT, 0, Route1Text1, -1
	object_event 15, 21, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, Route1Text2, -1
	fruittree_event  6, 11, FRUITTREE_ROUTE_1, ORAN_BERRY

	const_def 1 ; object constants

Route1Text1:
	checkevent EVENT_GOT_POTION_ROUTE_1
	iftrue_jumptextfaceplayer Route1ViridianMartSampleReceivedText
	faceplayer
	opentext
	writetext Route1ViridianMartSampleText
	buttonsound
	verbosegiveitem POTION
	iffalse_endtext
	setevent EVENT_GOT_POTION_ROUTE_1
	thisopenedtext

Route1ViridianMartSampleReceivedText:
	text "We also carry"
	line "# Balls for"
	cont "catching #mon!"
	done

Route1ViridianMartSampleText:
	text "Hi! I work at a"
	line "#mon Mart."

	para "It's a convenient"
	line "shop, so please"
	cont "visit us in"
	cont "Viridian City."

	para "I know, I'll give"
	line "you a sample!"
	cont "Here you go!"
	done

Route1Text2:
	text "See those ledges"
	line "along the road?"

	para "It's a bit scary,"
	line "but you can jump"
	cont "from them."

	para "You can get back"
	line "to Pallet Town"
	cont "quicker that way."
	done

Route1Text3:
	text "Route 1"
	line "Pallet Town -"
	cont "Viridian City"
	done
