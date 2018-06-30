BluesHouse2F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 1 ; warp events
	warp_event  7,  0, BLUES_HOUSE_1F, 3

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, SIGNPOST_JUMPTEXT, BluesHouse2FPCText
	bg_event  5,  0, SIGNPOST_UP, BluesHouse2FPosterScript
	bg_event  3,  5, SIGNPOST_JUMPTEXT, BluesHouse2FSNESText

	db 0 ; object events

BluesHouse2FPCText:
	text "The web browser is"
	line "open to an article"
	cont "about legendary"
	cont "#mon sightings."

	para "What if they're"
	line "real?"
	done

BluesHouse2FPosterScript:
	thistext

	text "It's a poster of a"
	line "cute Marill."
	done

BluesHouse2FSNESText:
	text "<PLAYER> played the"
	line "SNES."

	para "Better get going--"
	line "no time to lose!"
	done
