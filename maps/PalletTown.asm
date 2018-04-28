PalletTown_MapScriptHeader:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_NEWMAP, PalletTownFlyPoint

	db 3 ; warp events
	warp_event  5,  5, REDS_HOUSE_1F, 1
	warp_event 13,  5, BLUES_HOUSE_1F, 1
	warp_event 12, 11, OAKS_LAB, 2

	db 2 ; coord events
	coord_event 10, 1, 0, PalletTown_OakStopsYouTrigger1
	coord_event 11, 1, 0, PalletTown_OakStopsYouTrigger2

	db 4 ; bg events
	bg_event 13, 13, SIGNPOST_JUMPTEXT, PalletTownText4
	bg_event  7,  9, SIGNPOST_JUMPTEXT, PalletTownText5
	bg_event  3,  5, SIGNPOST_JUMPTEXT, PalletTownText6
	bg_event 11,  5, SIGNPOST_JUMPTEXT, PalletTownText7

	db 5 ; object events
	object_event  8,  6, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BROWN, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_PALLETTOWN_OAK
	object_event  3,  8, SPRITE_GIRL, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, PAL_NPC_RED, PERSONTYPE_COMMAND, jumptextfaceplayer, PalletTownText2, -1
	object_event 11, 15, SPRITE_FISHER2, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, PAL_NPC_GREEN, PERSONTYPE_COMMAND, jumptextfaceplayer, PalletTownText3, -1
	treebase_left_event_1 10, 21, SECRET_BASE_ROUTE_21, EVENT_SECRET_BASE_ROUTE_21 ; visible on Route21
	treebase_left_event_2 10, 21, SECRET_BASE_ROUTE_21, EVENT_SECRET_BASE_ROUTE_21_ESTABLISHED ; visible on Route21

	const_def 1 ; object constants
	const PALLETTOWN_OAK

PalletTownFlyPoint:
	setflag ENGINE_FLYPOINT_PALLET
	return

PalletTown_OakStopsYouTrigger1:
	playmusic MUSIC_MEET_PROF_OAK
	turnobject PLAYER, DOWN
	showtext OakAppearsText
	showemote EMOTE_SHOCK, PLAYER, 15
	appear PALLETTOWN_OAK
	applymovement PALLETTOWN_OAK, Movement_OakWalksToYou1
	showtext OakWalksUpText
	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, Movement_OakWalksToLab1
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PALLETTOWN_OAK
	applyonemovement PLAYER, step_up
	setscene $1
	setmapscene OAKS_LAB, $1
	clearevent EVENT_HIDE_OAKSLAB_OAK
	warpcheck
	end

PalletTown_OakStopsYouTrigger2:
	playmusic MUSIC_MEET_PROF_OAK
	turnobject PLAYER, DOWN
	showtext OakAppearsText
	showemote EMOTE_SHOCK, PLAYER, 15
	appear PALLETTOWN_OAK
	applymovement PALLETTOWN_OAK, Movement_OakWalksToYou2
	showtext OakWalksUpText
	follow PALLETTOWN_OAK, PLAYER
	applymovement PALLETTOWN_OAK, Movement_OakWalksToLab2
	stopfollow
	playsound SFX_EXIT_BUILDING
	disappear PALLETTOWN_OAK
	applyonemovement PLAYER, step_up
	setscene $1
	setmapscene OAKS_LAB, $1
	clearevent EVENT_HIDE_OAKSLAB_OAK
	warpcheck
	end

Movement_OakWalksToYou1:
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_right
	turn_head_up
	step_end

Movement_OakWalksToYou2:
	slow_step_up
	slow_step_up
	slow_step_right
	slow_step_right
	slow_step_up
	slow_step_up
	slow_step_right
	turn_head_up
	step_end

Movement_OakWalksToLab2:
	step_left
Movement_OakWalksToLab1:
	step_down
	step_down
	step_down
	step_down
	step_down
	step_left
	step_down
	step_down
	step_down
	step_down
	step_down
	step_right
	step_right
	step_right
	step_up
	step_end

OakAppearsText:
	text "Oak: Hey! Wait!"
	line "Don't go out!"
	done

OakWalksUpText:
	text "Oak: Sorry I'm so"
	line "slow, I don't have"
	cont "Running Shoes"
    cont "like you do."

	para "Anyway, you need"
	line "your own #mon"
	cont "for protection."

	para "Here, come with"
	line "me!"
	done

PalletTownText2:
	text "I'm raising"
	line "#mon too!"

	para "When they get"
	line "strong, they can"
	cont "protect me!"
	done

PalletTownText3:
	text "Technology is"
	line "incredible!"

	para "You can now store"
	line "and recall items"
	cont "and #mon as"
	cont "data via PC!"
	done

PalletTownText4:
	text "Oak's #mon"
	line "Research Lab"
	done

PalletTownText5:
	text "Pallet Town"

	para "Shades of your"
	line "journey await!"
	done

PalletTownText6:
	text "<PLAYER>'s house "
	done

PalletTownText7:
	text "<RIVAL>'s house "
	done
