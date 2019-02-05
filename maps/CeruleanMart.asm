CeruleanMart_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, CERULEAN_CITY, 6
	warp_event  3,  7, CERULEAN_CITY, 6

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	mart_clerk_event  1,  3, MARTTYPE_STANDARD, MART_CERULEAN
	object_event  7,  6, SPRITE_BLACK_HAIR_BOY_2, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanMartText2, -1
	object_event  6,  2, SPRITE_LASS, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, CeruleanMartText3, -1

CeruleanMartText2:
	text "Use Repel to keep"
	line "bugs and weak"
	cont "#mon away."

	para "Put your strongest"
	line "#mon at the"
	cont "top of the list"
	cont "for best results!"
	done

CeruleanMartText3:
	text "Have you seen any"
	line "Rare Candy?"

	para "It's supposed to"
	line "make #mon go"
	cont "up one level!"
	done
