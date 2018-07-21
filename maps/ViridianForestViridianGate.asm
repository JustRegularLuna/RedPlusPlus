ViridianForestViridianGate_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 4 ; warp events
	warp_event  4,  0, VIRIDIAN_FOREST, 2
	warp_event  5,  0, VIRIDIAN_FOREST, 3
	warp_event  4,  7, ROUTE_2_SOUTH, 2
	warp_event  5,  7, ROUTE_2_SOUTH, 2

	db 0 ; coord events

	db 0 ; bg events

	db 2 ; object events
	object_event  7,  4, SPRITE_GIRL, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestEntranceText1, -1
	object_event  2,  4, SPRITE_LITTLE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianForestEntranceText2, -1

ViridianForestEntranceText1:
	text "Are you going to"
	line "Viridian Forest?"
	cont "Be careful, it's"
	cont "a natural maze!"
	done

ViridianForestEntranceText2:
	text "You have to roam"
	line "far to get new"
	cont "kinds of #mon."

	para "Look for other"
	line "types outside of"
	cont "Viridian Forest."
	done
