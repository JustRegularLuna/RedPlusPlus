Route22_MapScriptHeader:
	db 0 ; scene scripts
	; Nothing runs in the background, there are only coord events using the map scene number
	; 0 - default (nothing)
	; 1 - delivered parcel, can battle rival
	; 2 - defeated rival, OR ignored rival and defeated brock (nothing)
	; 3 - defeated all 8 gyms, can battle rival pre-e4
	; 4 - defeated rival the second time (nothing)

	db 0 ; callbacks

	db 2 ; warp events
	warp_event  6,  7, POKEMON_LEAGUE_GATE, 1
	warp_event 28,  4, HIDDEN_CAVE_GROTTO, 1

	db 4 ; coord events
	coord_event 22, 6, 1, Route22FirstRivalScriptTop
	coord_event 22, 7, 1, Route22FirstRivalScriptBottom
	coord_event 22, 6, 3, Route22LastRivalScriptTop
	coord_event 22, 7, 3, Route22LastRivalScriptBottom

	db 1 ; bg events
	bg_event  8, 10, SIGNPOST_JUMPTEXT, Route22FrontGateText

	db 2 ; object events
	cavebase_event 28,  3, SECRET_BASE_ROUTE_22, EVENT_SECRET_BASE_ROUTE_22
	object_event   17,  6, SPRITE_BLUE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, PERSONTYPE_SCRIPT, 0, ObjectEvent, EVENT_HIDE_ROUTE_22_RIVAL

	const_def 1 ; object constants
	const ROUTE22_SECRET_BASE
	const ROUTE22_RIVAL


Route22FirstRivalScriptTop:
	appear ROUTE22_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_MEET_RIVAL
	applymovement ROUTE22_RIVAL, Route22_Rival_Approach_Top
	showtext Route22RivalBeforeBattleText1
	winlosstext Route22RivalDefeatedText1, Route22RivalWonText1
	setlasttalked ROUTE22_RIVAL
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	loadtrainer SONY1, 4
	jump .continueBattle
.Squirtle
	loadtrainer SONY1, 5
	jump .continueBattle
.Bulbasaur
	loadtrainer SONY1, 6
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_FAREWELL_RIVAL
	showtext Route22RivalAfterBattleText1
	applymovement ROUTE22_RIVAL, Route22_Rival_Depart_Top
	disappear ROUTE22_RIVAL
	setevent EVENT_BATTLED_ROUTE_22_RIVAL_1
	setscene $2
	playmapmusic
	end

Route22FirstRivalScriptBottom:
	appear ROUTE22_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_MEET_RIVAL
	applymovement ROUTE22_RIVAL, Route22_Rival_Approach_Bottom
	showtext Route22RivalBeforeBattleText1
	winlosstext Route22RivalDefeatedText1, Route22RivalWonText1
	setlasttalked ROUTE22_RIVAL
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	loadtrainer SONY1, 4
	jump .continueBattle
.Squirtle
	loadtrainer SONY1, 5
	jump .continueBattle
.Bulbasaur
	loadtrainer SONY1, 6
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_FAREWELL_RIVAL
	showtext Route22RivalAfterBattleText1
	applymovement ROUTE22_RIVAL, Route22_Rival_Depart_Bottom
	disappear ROUTE22_RIVAL
	setevent EVENT_BATTLED_ROUTE_22_RIVAL_1
	setscene $2
	playmapmusic
	end

Route22LastRivalScriptTop:
	appear ROUTE22_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_MEET_RIVAL
	applymovement ROUTE22_RIVAL, Route22_Rival_Approach_Top
	showtext Route22RivalBeforeBattleText2
	winlosstext Route22RivalDefeatedText2, Route22RivalWonText2
	setlasttalked ROUTE22_RIVAL
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	loadtrainer SONY2, 10
	jump .continueBattle
.Squirtle
	loadtrainer SONY2, 11
	jump .continueBattle
.Bulbasaur
	loadtrainer SONY2, 12
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_FAREWELL_RIVAL
	showtext Route22RivalAfterBattleText2
	applymovement ROUTE22_RIVAL, Route22_Rival_Depart_Top
	disappear ROUTE22_RIVAL
	setevent EVENT_BATTLED_ROUTE_22_RIVAL_2
	setscene $4
	playmapmusic
	end

Route22LastRivalScriptBottom:
	appear ROUTE22_RIVAL
	showemote EMOTE_SHOCK, PLAYER, 15
	playmusic MUSIC_MEET_RIVAL
	applymovement ROUTE22_RIVAL, Route22_Rival_Approach_Bottom
	showtext Route22RivalBeforeBattleText2
	winlosstext Route22RivalDefeatedText2, Route22RivalWonText2
	setlasttalked ROUTE22_RIVAL
	checkevent EVENT_PLAYER_CHOSE_SQUIRTLE
	iftrue .Squirtle
	checkevent EVENT_PLAYER_CHOSE_BULBASAUR
	iftrue .Bulbasaur
	loadtrainer SONY2, 10
	jump .continueBattle
.Squirtle
	loadtrainer SONY2, 11
	jump .continueBattle
.Bulbasaur
	loadtrainer SONY2, 12
.continueBattle
	writecode VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	dontrestartmapmusic
	reloadmapafterbattle
	playmusic MUSIC_FAREWELL_RIVAL
	showtext Route22RivalAfterBattleText2
	applymovement ROUTE22_RIVAL, Route22_Rival_Depart_Bottom
	disappear ROUTE22_RIVAL
	setevent EVENT_BATTLED_ROUTE_22_RIVAL_2
	setscene $4
	playmapmusic
	end

Route22_Rival_Approach_Bottom:
	step_down
Route22_Rival_Approach_Top:
	step_right
	step_right
	step_right
	step_right
	step_end

Route22_Rival_Depart_Top:
	step_down
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_end

Route22_Rival_Depart_Bottom:
	step_up
	step_right
	step_right
	step_right
	step_right
	step_right
	step_right
	step_down
	step_down
	step_down
	step_down
	step_down
	step_down
	step_end

Route22FrontGateText:
	text "#mon League"
	line "Front Gate"
	done

Route22RivalBeforeBattleText1:
	text "<RIVAL>: Hey!"
	line "<PLAYER>!"

	para "You're going to"
	line "#mon League?"

	para "Forget it! You"
	line "probably don't"
	cont "have any Badges!"

	para "The guard won't"
	line "let you through!"

	para "By the way, did"
	line "your #mon"
	cont "get any stronger?"
	done

Route22RivalAfterBattleText1:
	text "I heard #mon"
	line "League has many"
	cont "tough trainers!"

	para "I have to figure"
	line "out how to get"
	cont "past them!"

	para "You should quit"
	line "dawdling and get"
	cont "a move on!"
	done

Route22RivalDefeatedText1:
	text "Awww!"
	line "You just lucked"
	cont "out!"
	done

Route22RivalWonText1:
	text "<RIVAL>: What?"
	line "Why do I have 2"
	cont "#mon?"

	para "You should catch"
	line "some more too!"
	done

Route22RivalBeforeBattleText2:
	text "<RIVAL>: What?"
	line "<PLAYER>! What a"
	cont "surprise to see"
	cont "you here!"

	para "So you're going to"
	line "#mon League?"

	para "You collected all"
	line "the Badges too?"
	cont "That's cool!"

	para "Then I'll whip"
	line "you, <PLAYER>, as"
	cont "a warmup for"
	cont "#mon League!"

	para "Come on!"
	done

Route22RivalAfterBattleText2:
	text "That loosened me"
	line "up! I'm ready for"
	cont "#mon League!"

	para "<PLAYER>, you need"
	line "more practice!"

	para "But hey, you know"
	line "that! I'm out of"
	cont "here. Smell ya!"
	done

Route22RivalDefeatedText2:
	text "What!?"

	para "I was just"
	line "careless!"
	prompt

Route22RivalWonText2:
	text "<RIVAL>: Hahaha!"
	line "<PLAYER>! That's"
	cont "your best? You're"
	cont "nowhere near as"
	cont "good as me, pal!"

	para "Go train some"
	line "more! You loser!"
	done
