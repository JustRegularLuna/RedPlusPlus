ViridianForestPewterGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  7, VIRIDIAN_FOREST, 1
	warp_event  5,  7, VIRIDIAN_FOREST, 1
	warp_event  4,  0, ROUTE_2_NORTH, 5
	warp_event  5,  0, ROUTE_2_NORTH, 6

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  3,  2, SPRITE_LASS, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestExitText1, -1
	object_event  2,  5, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestExitText2, -1

ViridianForestExitText1:
	text "Many #mon live"
	line "only in forests "
	cont "and caves."

	para "You need to look"
	line "everywhere to get"
	cont "different kinds!"
	done

ViridianForestExitText2:
	text "When I was raising"
	line "my Eevee in the"
	cont "forest, it went"
	cont "and evolved!"
	done
