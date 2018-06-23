ViridianNicknameSpeechHouse_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, VIRIDIAN_CITY, 2
	warp_event  3,  7, VIRIDIAN_CITY, 2

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  5,  3, SPRITE_BALDING_GUY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianHouseText1, -1
	object_event  1,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianHouseText2, -1
	object_event  5,  5, SPRITE_BIRD, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_POKEMON, SPEAROW, ViridianHouseText3, -1
	object_event  4,  0, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_TILE_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, ViridianHouseText4, -1

ViridianHouseText1:
	text "Coming up with"
	line "nicknames is fun,"
	cont "but hard."

	para "Simple names are"
	line "the easiest to"
	cont "remember."
	done

ViridianHouseText2:
	text "My Daddy loves"
	line "#mon too."
	done

ViridianHouseText3:
	text "Speary: Tetweet!"
	done

ViridianHouseText4:
	text "Spearow"
	line "Name: Speary"
	done
