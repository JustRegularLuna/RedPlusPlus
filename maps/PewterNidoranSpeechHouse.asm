PewterNidoranSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, PEWTER_CITY, 1
	warp_event  3,  7, PEWTER_CITY, 1

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  4,  5, SPRITE_NIDORAN_M, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_PURPLE, PERSONTYPE_POKEMON, NIDORAN_M, PewterHouse1Text1, -1
	object_event  3,  5, SPRITE_YOUNG_BOY, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterHouse1Text2, -1
	object_event  1,  2, SPRITE_FAT_BALD_GUY, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterHouse1Text3, -1

PewterHouse1Text1:
	text "Nidoran: Bowbow!"
	done

PewterHouse1Text2::
	text "Here you go,"
	line "Nidoran!"
	
	para "Here's a nice"
	line "Pecha Berry for"
	cont "you!"
	done

PewterHouse1Text3:
	text "My son doesn't"
	line "agree with me on"
	cont "how to pronounce"
	cont "Pecha Berry."

	para "He thinks it's"
	line "like Petcha, but"
	cont "I say it's Pecca."
	done
