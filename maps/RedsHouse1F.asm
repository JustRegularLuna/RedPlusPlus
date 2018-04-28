RedsHouse1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  2,  7, PALLET_TOWN, 1
	warp_event  3,  7, PALLET_TOWN, 1
	warp_event  7,  0, REDS_HOUSE_2F, 1

	db 0 ; coord events

	db 4 ; bg events
	bg_event  5,  1, SIGNPOST_UP, RedsHouse1FText2
	bg_event  0,  1, SIGNPOST_JUMPTEXT, RedsHouse1FText3
	bg_event  1,  1, SIGNPOST_JUMPTEXT, RedsHouse1FText4
	bg_event  2,  1, SIGNPOST_JUMPTEXT, RedsHouse1FText5

	db 1 ; object events
	object_event 5,  3, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, RedsHouse1FText1, -1

RedsHouse1FText1:
	faceplayer
	opentext
	checkevent EVENT_GOT_STARTER
	iftrue .MomHealPokemon
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue_jumpopenedtext MomWakeUpText2
	thisopenedtext

;MomWakeUpText:
	text "Mom: Right."
	line "All boys leave"
	cont "home someday."
	cont "It said so on TV."

	para "Prof. Oak, next"
	line "door, is looking"
	cont "for you."
	done

.MomHealPokemon
	writetext MomHealText1
	closetext
	special Special_FadeBlackQuickly
	special Special_ReloadSpritesNoPalettes
	playmusic MUSIC_PKMN_HEALED
	special HealParty
	pause 60
	special Special_FadeInQuickly
	special RestartMapMusic
	blackoutmod PALLET_TOWN
	opentext
	thisopenedtext
	
;MomHealText2:
	text "Mom: Oh good!"
	line "You and your"
	cont "#mon are"
	cont "looking great!"
	cont "Take care now!"
	done
	

RedsHouse1FText2:
	opentext
	writetext TheresAMovieText
	waitbutton
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue_jumpopenedtext WizardOfOzText
	thisopenedtext

;StandByMeText:
	text "Four boys are"
	line "walking on"
	cont "railroad tracks."

	para "I better go too."
	done


RedsHouse1FText3:
	text "Let's see what's"
	line "in the fridge…"
	
	para "Fresh Water and"
	line "tasty Lemonade!"
	done

RedsHouse1FText4:
	text "The sink is shiny"
	line "and clean."
	done

RedsHouse1FText5:
	text "Nothing on the"
	line "stove."
	done

MomWakeUpText2:
	text "Mom: Right."
	line "All girls leave"
	cont "home someday."
	cont "It said so on TV."

	para "Prof. Oak, next"
	line "door, is looking"
	cont "for you."
	done

MomHealText1:
	text "Mom: <PLAYER>!"
	line "You should take a"
	cont "quick rest."
	prompt

TheresAMovieText:
	text "There's a movie"
	line "on TV."
	done

WizardOfOzText:
	text "A girl with her"
	line "hair in pigtails"
	cont "is walking up a"
	cont "brick road."

	para "I better go too."
	done
