_CopycatsHouse2FText_5ccd4:: ; a15ad (28:55ad)
	text "[PLAYER]: Hi! Do"
	line "you like #mon?"

	para "[PLAYER]: Uh no, I"
	line "just asked you."

	para "[PLAYER]: Huh?"
	line "You're strange!"

	para "Copycat: Hmm?"
	line "Quit mimicking?"

	para "But, that's my"
	line "favorite hobby!"
	prompt

_TM31PreReceiveText:: ; a1636 (28:5636)
	text "Oh wow!"
	line "A # Doll!"

	para "For me?"
	line "Thank you!"

	para "You can have"
	line "this, then!"
	prompt

_ReceivedTM31Text:: ; a1675 (28:5675)
	text "[PLAYER] received"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_TM31ExplanationText1:: ; a1689 (28:5689)
	db $0
	para "TM31 contains my"
	line "favorite, Mimic!"

	para "Use it on a good"
	line "#mon!@@"

_TM31ExplanationText2:: ; a16c5 (28:56c5)
	text "[PLAYER]: Hi!"
	line "Thanks for TM31!"

	para "[PLAYER]: Pardon?"

	para "[PLAYER]: Is it"
	line "that fun to mimic"
	cont "my every move?"

	para "Copycat: You bet!"
	line "It's a scream!"
	done

_TM31NoRoomText:: ; a1733 (28:5733)
	text "Don't you want"
	line "this?@@"

_CopycatsHouse2FText2:: ; a1749 (28:5749)
	text "Doduo: Giiih!"

	para "MIRROR MIRROR ON"
	line "THE WALL, WHO IS"
	cont "THE FAIREST ONE"
	cont "OF ALL?"
	done

_CopycatsHouse2FText3:: ; a1792 (28:5792)
	text "This is a rare"
	line "#mon! Huh?"
	cont "It's only a doll!"
	done

_CopycatsHouse2FText6:: ; a17be (28:57be)
	text "A game with Mario"
	line "wearing a bucket"
	cont "on his head!"
	done

_CopycatsHouse2FText_5cd17:: ; a17ef (28:57ef)
	text "..."

	para "My Secrets!"

	para "Skill: Mimicry!"
	line "Hobby: Collecting"
	cont "dolls!"
	cont "Favorite #mon:"
	cont "Clefairy!"
	done

_CopycatsHouse2FText_5cd1c:: ; a1842 (28:5842)
	text "Huh? Can't see!"
	done

