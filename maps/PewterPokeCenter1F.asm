PewterPokeCenter1F_MapScriptHeader:
	db 0 ; scene scripts

	db 0 ; callbacks

	db 3 ; warp events
	warp_event  5,  7, PEWTER_CITY, 4
	warp_event  6,  7, PEWTER_CITY, 4
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	pc_nurse_event  5,  1
	pc_chansey_event  6,  1
	object_event  1,  2, SPRITE_JIGGLYPUFF, SPRITEMOVEDATA_POKEMON, 0, 0, -1, -1, PAL_NPC_RED, PERSONTYPE_SCRIPT, 0, PewterPokecenterJigglypuffScript, -1
	object_event  0,  4, SPRITE_BENCH_SITTER, SPRITEMOVEDATA_TILE_DOWN, 0, 0, -1, -1, 0, PERSONTYPE_COMMAND, jumptext, PewterPokecenterBenchGuyText, -1
	object_event  9,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 1, 1, -1, -1, 0, PERSONTYPE_COMMAND, jumptextfaceplayer, PewterPokecenterText2, -1

PewterPokecenterJigglypuffScript:
	opentext
	writetext PewterJigglypuffText
	playmusic MUSIC_JIGGLYPUFF_SONG
	pause 170
	closetext
	special RestartMapMusic
	end

PewterJigglypuffText:
	text "Jigglypuff: Puu"
	line "pupuu!"
	done

PewterPokecenterBenchGuyText:
	text "Yawn!"
	
	para "When Jigglypuff"
	line "sing, #mon"
	cont "get drowsy…"
	
	para "…Me too…"
	line "Snore…"
	done

PewterPokecenterText2:
	text "What!?"

	para "Team Rocket is"
	line "at Mt. Moon? Huh?"
	cont "I'm on the phone!"

	para "Scram!"
	done
