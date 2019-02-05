CeruleanZigHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 12
	warp_event  3,  7, CERULEAN_CITY, 12

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  4,  1, SPRITE_ZIGZAGOON, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_POKEMON, ZIGZAGOON, CeruleanZigHouseText1, -1
	object_event  7,  3, SPRITE_MEOWTH, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_POKEMON, MEOWTH, CeruleanZigHouseText2, -1
	object_event  2,  3, SPRITE_LASS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_SCRIPT, 0, CeruleanZigHouseText3, -1

CeruleanZigHouseText1:
	text "Ziggy: Zigazigahh!"
	done

CeruleanZigHouseText2:
	text "Meowsy: Nyaaa!"
	done

CeruleanZigHouseText3:
	checkevent EVENT_GOT_STARDUST_CERULEAN_ZIG_HOUSE
	iftrue_jumptextfaceplayer CeruleanZigHouseSampleReceivedText
	faceplayer
	opentext
	writetext CeruleanZigHouseFreeSampleText
	buttonsound
	verbosegiveitem STARDUST
	iffalse_endtext
	setevent EVENT_GOT_STARDUST_CERULEAN_ZIG_HOUSE
	thisopenedtext

CeruleanZigHouseSampleReceivedText:
	text "#mon don't all"
	line "have the same"
	cont "Abilities, though."
	
	para "Some help out in"
	line "battle. Others,"
	cont "like Pickup, help"
	cont "in other ways!"
	done

CeruleanZigHouseFreeSampleText:
	text "Did you know that"
	line "#mon all have"
	cont "special Abilities?"
	
	para "Mine are always"
	line "picking up items"
	cont "and bringing them"
	cont "home to me."
	
	para "Here, I'll share"
	line "one with you."
	done
