Route3PokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, ROUTE_3_NORTH, 2
	warp_event  6,  7, ROUTE_3_NORTH, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 7 ; object events
	pc_nurse_event  5,  1
	pc_chansey_event  6,  1
	object_event  4,  3, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MtMoonPokecenterText2, -1
	object_event  7,  3, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, MtMoonPokecenterText3, -1
	object_event 10,  6, SPRITE_FAT_BALD_GUY, SPRITEMOVEDATA_WANDER, 2, 2, -1, -1, 0, PERSONTYPE_SCRIPT, 0, MagikarpSalesmanText, -1
	object_event  7,  2, SPRITE_BOOK_PAPER_POKEDEX, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, MtMoonPokecenterText5, -1
	object_event  0,  4, SPRITE_BENCH_SITTER, SPRITEMOVEDATA_TILE_UP, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, Route3PokecenterBenchGuyText, -1

MagikarpSalesmanText:
	checkevent EVENT_BOUGHT_MAGIKARP
	iftrue_jumptextfaceplayer MagikarpSalesmanText2
	faceplayer
	opentext
	special PlaceMoneyTopRight
	writetext MagikarpSalesmanText1
	yesorno
	iffalse_jumpopenedtext MagikarpSalesmanNoText
	checkcode VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .party_full
	checkmoney $0, 500
	ifequal $2, .NotEnoughMoney
	takemoney $0, 500
	special PlaceMoneyTopRight
	waitsfx
	playsound SFX_TRANSACTION
	givepoke MAGIKARP, 5, NO_ITEM
	special Special_MakeGiveMonShiny
	setevent EVENT_BOUGHT_MAGIKARP
	closetext
	end

.party_full
	jumpopenedtext MagikarpSalesmanNoRoomText

.NotEnoughMoney
	jumpopenedtext MagikarpSalesmanNoMoneyText

MtMoonPokecenterText2:
	text "I've 6 # Balls"
	line "set in my belt."

	para "At most, you can"
	line "carry 6 #mon."
	done

MtMoonPokecenterText3:
	text "Team Rocket"
	line "attacks Cerulean"
	cont "citizens…"

	para "Team Rocket is"
	line "always in the"
	cont "news!"
	done

MtMoonPokecenterText5:
	text "Stop walking on"
	line "the walls!"
	done

MagikarpSalesmanText1:
	text "Man: Hello, there!"
	line "Have I got a deal"
	cont "just for you!"

	para "I'll let you have"
	line "a swell Magikarp"
	cont "for just ¥500!"
	cont "What do you say?"
	done

MagikarpSalesmanNoText:
	text "No? I'm only"
	line "doing this as a"
	cont "favor to you!"
	done

MagikarpSalesmanNoMoneyText:
	text "You'll need more"
	line "money than that!"
	done

MagikarpSalesmanNoRoomText:
	text "You have no room"
	line "for this!"
	done

MagikarpSalesmanText2:
	text "Man: Well, I don't"
	line "give refunds!"
	done

Route3PokecenterBenchGuyText:
	text "If you have too"
	line "many #mon, you"
	cont "should store them"
	cont "via PC!"
	done
