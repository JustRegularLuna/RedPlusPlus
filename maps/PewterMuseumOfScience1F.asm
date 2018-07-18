PewterMuseumOfScience1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 5 ; warp events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_OF_SCIENCE_2F, 1

	db 2 ; coord events
	coord_event  9, 4, 0, PewterMuseumTriggerLeft
	coord_event 10, 4, 0, PewterMuseumTriggerRight

	db 9 ; bg events
	bg_event  2,  3, SIGNPOST_READ, KabutopsFossilSignpostScript
	bg_event  6,  3, SIGNPOST_READ, OmastarFossilSignpostScript
	bg_event  3,  6, SIGNPOST_READ, AerodactylFossilSignpostScript
	bg_event 12,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 13,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 14,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 15,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 17,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText
	bg_event 18,  1, SIGNPOST_JUMPTEXT, Museum1FBookshelfSignpostText

	db 5 ; object events
	object_event 12,  4, SPRITE_GREETER, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Museum1FText1, -1
	object_event  1,  4, SPRITE_GAMBLER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum1FText2, -1
	object_event 15,  2, SPRITE_OAK_AIDE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, Museum1FText3, -1
	object_event 17,  4, SPRITE_OAK_AIDE, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, Museum1FText4, -1
	object_event 16,  2, SPRITE_MAP_AMBER_LYING_OLD_MAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, Museum1FText5, EVENT_RECEIVED_OLD_AMBER

	const_def 1 ; object constants
	const PEWTER_MUSEUM_GREETER
	const PEWTER_MUSEUM_GAMBLER
	const PEWTER_MUSUEM_SCIENTIST1
	const PEWTER_MUSEUM_SCIENTIST2
	const PEWTER_MUSEUM_AMBER

PewterMuseumTriggerLeft:
	applyonemovement PLAYER, step_right
PewterMuseumTriggerRight:
	turnobject PLAYER, RIGHT
	opentext
	special PlaceMoneyTopRight
	writetext MuseumWouldYouLikeToComeInText
	yesorno
	iffalse .ComeAgain
	checkmoney $0, 50
	ifequal $2, .NotEnoughMoney
	takemoney $0, 50
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	writetext MuseumThankYouText
	buttonsound
	setscene $1
	endtext

.NotEnoughMoney
	writetext MuseumNotEnoughMoneyText
	closetext
	applyonemovement PLAYER, step_down
	end

.ComeAgain
	writetext MuseumComeAgainText
	closetext
	applyonemovement PLAYER, step_down
	end

Museum1FText1:
	checkcode VAR_FACING
	ifequal RIGHT, .Normal
	ifequal UP, .Below
	faceplayer
	opentext
	writetext GreeterAskAboutAmberText
	yesorno
	iftrue_jumpopenedtext GreeterMentionLabText
	thisopenedtext
	
	text "Amber is fossil-"
	line "ized tree sap."
	done

.Below
	thistextfaceplayer
	text "Please go to the"
	line "other side!"
	done

.Normal
	thistextfaceplayer
	text "Take plenty of"
	line "time to look!"
	done

Museum1FText2:
	text "That is one"
	line "magnificent"
	cont "fossil!"
	done

Museum1FText3:
	checkevent EVENT_RECEIVED_OLD_AMBER
	iftrue_jumptextfaceplayer MuseumGetAmberCheckedText
	faceplayer
	opentext
	writetext ScientistIntroduceAmberText
	buttonsound
	verbosegiveitem OLD_AMBER
	iffalse_jumpopenedtext ScientistNoRoomText
	setevent EVENT_RECEIVED_OLD_AMBER
	disappear PEWTER_MUSEUM_AMBER
	thisopenedtext
MuseumGetAmberCheckedText:
	text "Ssh! Get the Old"
	line "Amber checked!"
	done

Museum1FText4:
	text "We are proud of 3"
	line "fossils of very"
	cont "rare, prehistoric"
	cont "#mon!"
	done

Museum1FText5:
	text "The Amber is"
	line "clear and gold!"
	done

KabutopsFossilSignpostScript:
	refreshscreen
	trainerpic KABUTOPS_FOSSIL
	waitbutton
	closepokepic
	thistext

	text "Kabutops Fossil"

	para "A primitive and"
	line "rare Pokémon."
	done

OmastarFossilSignpostScript:
	refreshscreen
	trainerpic OMASTAR_FOSSIL
	waitbutton
	closepokepic
	thistext

	text "Omastar Fossil"

	para "A primitive and"
	line "rare Pokémon."
	done

AerodactylFossilSignpostScript:
	refreshscreen
	trainerpic AERODACTYL_FOSSIL
	waitbutton
	closepokepic
	thistext

	text "Aerodactyl Fossil"

	para "A primitive and"
	line "rare Pokémon."
	done

GreeterAskAboutAmberText:
	text "You can't sneak"
	line "in the back way!"

	para "Oh, whatever!"
	line "Do you know what"
	cont "Amber is?"
	done

GreeterMentionLabText:
	text "There's a lab"
	line "somewhere trying"
	cont "to resurrect"
	cont "ancient #mon"
	cont "from Amber."
	done

ScientistIntroduceAmberText:
	text "Ssh! I think that"
	line "this chunk of"
	cont "Amber contains"
	cont "#mon DNA!"

	para "It would be great"
	line "if #mon could"
	cont "be resurrected"
	cont "from it!"

	para "But, my colleagues"
	line "just ignore me!"

	para "So, I have a favor"
	line "to ask!"

	para "Take this to a"
	line "#mon Lab and"
	cont "get it examined!"
	done

ScientistNoRoomText:
	text "You don't have"
	line "space for this!"
	done

MuseumWouldYouLikeToComeInText:
	text "It's ¥50 for a"
	line "child's ticket."

	para "Would you like to"
	line "come in?"
	done

MuseumThankYouText:
	text "Right, ¥50!"
	line "Thank you!"
	done

MuseumNotEnoughMoneyText:
	text "You don't have"
	line "enough money."
	prompt

MuseumComeAgainText:
	text "Come again!"
	prompt

Museum1FBookshelfSignpostText:
	text "Thick and well-"
	line "read books!"

	para "Archaeology Man-"
	line "ual, Lost #mon,"
	cont "#mon Ancestors,"

	para "Caring at the"
	line "Loamy Layer of"
	cont "Kanto…"
	done



