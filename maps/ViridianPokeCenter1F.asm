ViridianPokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, VIRIDIAN_CITY, 5
	warp_event  6,  7, VIRIDIAN_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	pc_nurse_event  5,  1
	pc_chansey_event  6,  1
	object_event  9,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianPokeCenterText1, -1
	object_event  3,  3, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianPokeCenterText2, -1
	object_event  0,  4, SPRITE_BENCH_SITTER, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, ViridianPokecenterBenchGuyText, -1

ViridianPokeCenterText1:
	text "Everything in a"
	line "#mon Center is"
	cont "completely free"
	cont "to use."

	para "The receptionist"
	line "told me. So kind!"
	done

ViridianPokeCenterText2:
	text "Upstairs, you can"
	line "link together with"
	cont "a friend to trade"
	cont "or battle!"
	
	para "You can also trade"
	line "#mon with a"
	cont "stranger via the"
	cont "Wonder Trade desk!"
	done

ViridianPokecenterBenchGuyText:
	text "#mon Centers"
	line "heal your tired,"
	cont "hurt or fainted"
	cont "#mon!"
	done
