PewterMuseumOfScience2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_1F, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3,  6, SIGNPOST_READ, Museum2FMoonStoneSignpostScript
	bg_event 11,  2, SIGNPOST_JUMPTEXT, Museum2FSpaceShuttleSignpostText

	db 5 ; object events
	object_event  1,  7, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum2FText1, -1
	object_event  0,  5, SPRITE_OLD_PERSON, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum2FText2, -1
	object_event  7,  5, SPRITE_OAK_AIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum2FText3, -1
	object_event 11,  5, SPRITE_BRUNETTE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum2FText4, -1
	object_event 12,  5, SPRITE_HIKER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, trade, TRADE_WITH_BOB_FOR_TOGEPI, -1


Museum2FMoonStoneSignpostScript:
	refreshscreen
	trainerpic METEORITE
	waitbutton
	closepokepic
	thistext

	text "Meteorite that"
	line "fell on Mt.Moon."
	cont "(Moon Stone)"
	done

Museum2FText1:
	text "Moon Stone?"

	para "What's so special"
	line "about it?"
	done

Museum2FText2:
	text "July 20, 1969!"

	para "The 1st lunar"
	line "landing!"

	para "I bought a color"
	line "TV to watch it!"
	done

Museum2FText3:
	text "We have a space"
	line "exhibit now."
	done

Museum2FText4:
	text "I want a Pikachu!"
	line "It's so cute!"

	para "I asked my Daddy"
	line "to catch me one!"
	done

Museum2FSpaceShuttleSignpostText:
	text "Space Shuttle"
	done