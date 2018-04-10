ViridianMart_MapScriptHeader:
	db 2 ; scene scripts
	scene_script ViridianMartTrigger0
	scene_script ViridianMartTrigger1

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  2,  7, VIRIDIAN_CITY, 4
	warp_event  3,  7, VIRIDIAN_CITY, 4

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ViridianMartClerkScript, -1
	object_event  7,  6, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianMartText2, -1
	object_event  6,  2, SPRITE_BLACK_HAIR_BOY_1, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, ViridianMartText3, -1

	const_def 1 ; object constants

ViridianMartTrigger0:
	showtext FromPalletText
	applymovement PLAYER, Movement_WalkUpToViridianClerk
	opentext
	writetext ViridianMartParcelQuestText
	waitbutton
	verbosegiveitem OAKS_PARCEL
	setevent EVENT_GOT_OAKS_PARCEL
	showtext HiToOakText
	setscene $1
ViridianMartTrigger1:
	end

Movement_WalkUpToViridianClerk:
	step_up
	step_up
	step_up
	step_up
	turn_head_left
	step_end

ViridianMartClerkScript:
	checkevent EVENT_GOT_POKEDEX
	iftrue .AfterDex
	showtext HiToOakText
	end
.AfterDex
	pokemart MARTTYPE_STANDARD, MART_VIRIDIAN

HiToOakText:
	text "Okay! Say hi to"
	line "Prof. Oak for me!"
	done

FromPalletText:
	text "Hey! You came from"
	line "Pallet Town?"
	done

ViridianMartParcelQuestText:
	text "You know Prof."
	line "Oak, right?"

	para "His order came in."
	line "Will you take it"
	cont "to him?"
	done

ViridianMartText2::
	text "This shop sells"
	line "many Antidotes."
	done

ViridianMartText3::
	text "The shop finally"
	line "has some Potions"
	cont "in stock."
	done
