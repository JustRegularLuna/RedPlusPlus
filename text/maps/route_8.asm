_Route8BattleText1:: ; 8dea9 (23:5ea9)
	text "You look good at"
	line "#mon, but"
	cont "how's your chem?"
	done

_Route8EndBattleText1:: ; 8ded5 (23:5ed5)
	text "Ow!"
	line "Meltdown!"
	prompt

_Route8AfterBattleText1:: ; 8dee4 (23:5ee4)
	text "I am better at"
	line "school than this!"
	done

_Route8BattleText2:: ; 8df06 (23:5f06)
	text "All right! Let's"
	line "roll the dice!"
	done

_Route8EndBattleText2:: ; 8df26 (23:5f26)
	text "Drat!"
	line "Came up short!"
	prompt

_Route8AfterBattleText2:: ; 8df3c (23:5f3c)
	text "Lady Luck's not"
	line "with me today!"
	done

_Route8BattleText3:: ; 8df5b (23:5f5b)
	text "You need strategy"
	line "to win at this!"
	done

_Route8EndBattleText3:: ; 8df7e (23:5f7e)
	text "It's not logical!"
	prompt

_Route8AfterBattleText3:: ; 8df90 (23:5f90)
IF DEF(_BLUE)
	text "Go with Muk"
ELSE
	text "Go with Grimer"
ENDC
	line "first...and..."
	cont "...and...then..."
	done

_Route8BattleText4:: ; 8dfc0 (23:5fc0)
	text "I like Nidoran, so"
	line "I collect them!"
	done

_Route8EndBattleText4:: ; 8dfe4 (23:5fe4)
	text "Why? Why??"
	prompt

_Route8AfterBattleText4:: ; 8dff0 (23:5ff0)
	text "When #mon grow"
	line "up they get ugly!"
	cont "They shouldn't"
	cont "evolve!"
	done

_Route8BattleText5:: ; 8e028 (23:6028)
	text "School is fun, but"
	line "so are #mon."
	done

_Route8EndBattleText5:: ; 8e049 (23:6049)
	text "I'll stay with"
	line "school."
	prompt

_Route8AfterBattleText5:: ; 8e060 (23:6060)
	text "We're stuck here"
	line "because of the"
	cont "gates at Saffron."
	done

_Route8BattleText6:: ; 8e092 (23:6092)
	text "I like skirts,"
	line "they're cute and"
    cont "comfy to wear!"
	done

_Route8EndBattleText6:: ; 8e0b8 (23:60b8)
	text "Oh my!"
	prompt

_Route8AfterBattleText6:: ; 8e0bf (23:60bf)
	text "Oh well, I'm more"
	line "worried about"
	cont "having fun than"
    cont "being competitive."
	done

_Route8BattleText7:: ; 8e0e9 (23:60e9)
	text "We must look"
	line "silly standing"
	cont "here like this!"
	done

_Route8EndBattleText7:: ; 8e116 (23:6116)
	text "Look what you"
	line "did!"
	prompt

_Route8AfterBattleText7:: ; 8e12a (23:612a)
	text "Saffron's gate-"
	line "keeper won't let"
	cont "us through."
	cont "He's so mean!"
	done

_Route8BattleText8:: ; 8e162 (23:6162)
	text "I'm a rambling,"
	line "gambling dude!"
	done

_Route8EndBattleText8:: ; 8e181 (23:6181)
	text "Missed the big"
	line "score!"
	prompt

_Route8AfterBattleText8:: ; 8e198 (23:6198)
	text "Gambling and"
	line "#mon are like"
	cont "eating peanuts!"
	cont "Just can't stop!"
	done

_Route8BattleText9:: ; 8e1d4 (23:61d4)
	text "What's a cute,"
	line "round and fluffy"
	cont "#mon?"
	done

_Route8EndBattleText9:: ; 8e1fa (23:61fa)
	text "Stop!"

	para "Don't be so mean"
IF DEF(_BLUE)
	line "to my clefable!"
ELSE
	line "to my Clefairy!"
ENDC
	prompt

_Route8AfterBattleText9:: ; 8e221 (23:6221)
IF DEF(_BLUE)
	text "Did you know"
ELSE
	text "I heard that"
ENDC
	line "Clefairy evolves"
	cont "when it's exposed"
IF DEF(_BLUE)
	cont "to a Moon Stone?"
ELSE
	cont "to a Moon Stone."
ENDC
	done

_Route8Text10:: ; 8e262 (23:6262)
	text "Underground Path"
	line "Lavender Town -"
	cont "Celadon City"
	done

