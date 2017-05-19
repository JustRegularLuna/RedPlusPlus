AskName: ; 64eb (1:64eb)
	call SaveScreenTilesToBuffer1
	call GetPredefRegisters
	push hl
	ld a, [W_ISINBATTLE]
	dec a
	coord hl, 0, 0
	ld b, $4
	ld c, $b
	call z, ClearScreenArea ; only if in wild batle
	ld a, [wcf91]
	ld [wd11e], a
	call GetMonName
	ld hl, DoYouWantToNicknameText
	call PrintText
	coord hl, 14, 7
	ld bc, $80f
	ld a, TWO_OPTION_MENU
	ld [wTextBoxID], a
	call DisplayTextBoxID
	pop hl
	ld a, [wCurrentMenuItem]
	and a
	jr nz, .declinedNickname
	ld a, [wUpdateSpritesEnabled]
	push af
	xor a
	ld [wUpdateSpritesEnabled], a
	push hl
	ld a, NAME_MON_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	ld a, [W_ISINBATTLE]
	and a
	jr nz, .inBattle
	call ReloadMapSpriteTilePatterns
.inBattle
	call LoadScreenTilesFromBuffer1
	pop hl
	pop af
	ld [wUpdateSpritesEnabled], a
	ld a, [wcf4b]
	cp $50
	ret nz
.declinedNickname
	ld d, h
	ld e, l
	ld hl, wcd6d
	ld bc, 11
	jp CopyData

DoYouWantToNicknameText: ; 0x6557
	TX_FAR _DoYouWantToNicknameText
	db "@"

DisplayNameRaterScreen: ; 655c (1:655c)
	ld hl, wHPBarMaxHP
	xor a
	ld [wUpdateSpritesEnabled], a
	ld a, NAME_MON_SCREEN
	ld [wNamingScreenType], a
	call DisplayNamingScreen
	call GBPalWhiteOutWithDelay3
	call RestoreScreenTilesAndReloadTilePatterns
	call LoadGBPal
	ld a, [wcf4b]
	cp $50
	jr z, .playerCancelled
	ld hl, wPartyMonNicks
	ld bc, $b
	ld a, [wWhichPokemon]
	call AddNTimes
	ld e, l
	ld d, h
	ld hl, wHPBarMaxHP
	ld bc, 11
	call CopyData
	and a
	ret
.playerCancelled
	scf
	ret

DisplayNamingScreen: ; 6596 (1:6596)
	push hl
	ld hl, wd730
	set 6, [hl]
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	call UpdateSprites
	ld b, $8
	call GoPAL_SET
	call LoadHpBarAndStatusTilePatterns
	call LoadEDTile
	callba LoadMonPartySpriteGfx
	coord hl, 0, 4
	ld b, $9
	ld c, $12
	call TextBoxBorder
	call PrintNamingText
	ld a, $3
	ld [wTopMenuItemY], a
	ld a, $1
	ld [wTopMenuItemX], a
	ld [wLastMenuItem], a
	ld [wCurrentMenuItem], a
	ld a, $ff
	ld [wMenuWatchedKeys], a
	ld a, $7
	ld [wMaxMenuItem], a
	ld a, $50
	ld [wcf4b], a
	xor a
	ld hl, wHPBarMaxHP + 1
	ld [hli], a
	ld [hli], a
	ld [wAnimCounter], a
.selectReturnPoint
	call PrintAlphabet
	call GBPalNormal
.ABStartReturnPoint
	ld a, [wHPBarMaxHP + 1]
	and a
	jr nz, .submitNickname
	call PrintNicknameAndUnderscores
.dPadReturnPoint
	call PlaceMenuCursor
.inputLoop
	ld a, [wCurrentMenuItem]
	push af
	callba AnimatePartyMon_ForceSpeed1
	pop af
	ld [wCurrentMenuItem], a
	call JoypadLowSensitivity
	ld a, [hJoyPressed]
	and a
	jr z, .inputLoop
	ld hl, .namingScreenButtonFunctions
.checkForPressedButton
	sla a
	jr c, .foundPressedButton
	inc hl
	inc hl
	inc hl
	inc hl
	jr .checkForPressedButton
.foundPressedButton
	ld a, [hli]
	ld e, a
	ld a, [hli]
	ld d, a
	ld a, [hli]
	ld h, [hl]
	ld l, a
	push de
	jp [hl]

.submitNickname
	pop de
	ld hl, wcf4b
	ld bc, 11
	call CopyData
	call GBPalWhiteOutWithDelay3
	call ClearScreen
	call ClearSprites
	call GoPAL_SET_CF1C
	call GBPalNormal
	xor a
	ld [W_SUBANIMTRANSFORM], a
	ld hl, wd730
	res 6, [hl]
	ld a, [W_ISINBATTLE]
	and a
	jp z, LoadTextBoxTilePatterns
	ld hl, LoadHudTilePatterns
	ld b, BANK(LoadHudTilePatterns)
	jp Bankswitch

.namingScreenButtonFunctions
	dw .dPadReturnPoint
	dw .pressedDown
	dw .dPadReturnPoint
	dw .pressedUp
	dw .dPadReturnPoint
	dw .pressedLeft
	dw .dPadReturnPoint
	dw .pressedRight
	dw .ABStartReturnPoint
	dw .pressedStart
	dw .selectReturnPoint
	dw .pressedSelect
	dw .ABStartReturnPoint
	dw .pressedB
	dw .ABStartReturnPoint
	dw .pressedA

.pressedA_changedCase
	pop de
	ld de, .selectReturnPoint
	push de
.pressedSelect
	ld a, [wHPBarOldHP]
	xor $1
	ld [wHPBarOldHP], a
	ret

.pressedStart
	ld a, $1
	ld [wHPBarMaxHP + 1], a
	ret

.pressedA
	ld a, [wCurrentMenuItem]
	cp $5 ; "ED" row
	jr nz, .didNotPressED
	ld a, [wTopMenuItemX]
	cp $11 ; "ED" column
	jr z, .pressedStart
.didNotPressED
	ld a, [wCurrentMenuItem]
	cp $6 ; case swtich row
	jr nz, .didNotPressCaseSwtich
	ld a, [wTopMenuItemX]
	cp $1 ; case switch column
	jr z, .pressedA_changedCase
.didNotPressCaseSwtich
	ld hl, wMenuCursorLocation
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	ld a, [hl]
	ld [wHPBarNewHP], a
	call CalcStringLength
	ld a, [wHPBarNewHP]
	cp $e5
	ld de, Dakutens
	jr z, .dakutensAndHandakutens
	cp $e4
	ld de, Handakutens
	jr z, .dakutensAndHandakutens
	ld a, [wNamingScreenType]
	cp NAME_MON_SCREEN
	jr nc, .checkMonNameLength
	ld a, [wHPBarMaxHP]
	cp $7 ; max length of player/rival names
	jr .checkNameLength
.checkMonNameLength
	ld a, [wHPBarMaxHP]
	cp $a ; max length of pokemon nicknames
.checkNameLength
	jr c, .addLetter
	ret

.dakutensAndHandakutens
	push hl
	call DakutensAndHandakutens
	pop hl
	ret nc
	dec hl
.addLetter
	ld a, [wHPBarNewHP]
	ld [hli], a
	ld [hl], $50
	ld a, (SFX_02_40 - SFX_Headers_02) / 3
	call PlaySound
	ret
.pressedB
	ld a, [wHPBarMaxHP]
	and a
	ret z
	call CalcStringLength
	dec hl
	ld [hl], $50
	ret
.pressedRight
	ld a, [wCurrentMenuItem]
	cp $6
	ret z ; can't scroll right on bottom row
	ld a, [wTopMenuItemX]
	cp $11 ; max
	jp z, .wrapToFirstColumn
	inc a
	inc a
	jr .done
.wrapToFirstColumn
	ld a, $1
	jr .done
.pressedLeft
	ld a, [wCurrentMenuItem]
	cp $6
	ret z ; can't scroll right on bottom row
	ld a, [wTopMenuItemX]
	dec a
	jp z, .wrapToLastColumn
	dec a
	jr .done
.wrapToLastColumn
	ld a, $11 ; max
	jr .done
.pressedUp
	ld a, [wCurrentMenuItem]
	dec a
	ld [wCurrentMenuItem], a
	and a
	ret nz
	ld a, $6 ; wrap to bottom row
	ld [wCurrentMenuItem], a
	ld a, $1 ; force left column
	jr .done
.pressedDown
	ld a, [wCurrentMenuItem]
	inc a
	ld [wCurrentMenuItem], a
	cp $7
	jr nz, .wrapToTopRow
	ld a, $1
	ld [wCurrentMenuItem], a
	jr .done
.wrapToTopRow
	cp $6
	ret nz
	ld a, $1
.done
	ld [wTopMenuItemX], a
	jp EraseMenuCursor

LoadEDTile: ; 675b (1:675b)
	ld de, ED_Tile
	ld hl, vFont + $700
	ld bc, $1
	jp CopyVideoDataDouble

ED_Tile: ; 6767 (1:6767)
	INCBIN "gfx/ED_tile.1bpp"

PrintAlphabet: ; 676f (1:676f)
	xor a
	ld [H_AUTOBGTRANSFERENABLED], a
	ld a, [wHPBarOldHP]
	and a
	ld de, LowerCaseAlphabet
	jr nz, .lowercase
	ld de, UpperCaseAlphabet
.lowercase
	coord hl, 2, 5
	ld bc, $509 ; 5 rows, 9 columns
.outerLoop
	push bc
.innerLoop
	ld a, [de]
	ld [hli], a
	inc hl
	inc de
	dec c
	jr nz, .innerLoop
	ld bc, SCREEN_WIDTH + 2
	add hl, bc
	pop bc
	dec b
	jr nz, .outerLoop
	call PlaceString
	ld a, $1
	ld [H_AUTOBGTRANSFERENABLED], a
	jp Delay3

LowerCaseAlphabet: ; 679e (1:679e)
	db "abcdefghijklmnopqrstuvwxyz ×():;[]",$e1,$e2,"-?!♂♀/",$f2,",¥UPPER CASE@"

UpperCaseAlphabet: ; 67d6 (1:67d6)
	db "ABCDEFGHIJKLMNOPQRSTUVWXYZ ×():;[]",$e1,$e2,"-?!♂♀/",$f2,",¥lower case@"

PrintNicknameAndUnderscores: ; 680e (1:680e)
	call CalcStringLength
	ld a, c
	ld [wHPBarMaxHP], a
	coord hl, 10, 2
	ld bc, $10a
	call ClearScreenArea
	coord hl, 10, 2
	ld de, wcf4b
	call PlaceString
	coord hl, 10, 3
	ld a, [wNamingScreenType]
	cp NAME_MON_SCREEN
	jr nc, .pokemon1
	ld b, 7 ; player or rival max name length
	jr .playerOrRival1
.pokemon1
	ld b, 10 ; pokemon max name length
.playerOrRival1
	ld a, $76 ; underscore tile id
.placeUnderscoreLoop
	ld [hli], a
	dec b
	jr nz, .placeUnderscoreLoop
	ld a, [wNamingScreenType]
	cp NAME_MON_SCREEN
	ld a, [wHPBarMaxHP]
	jr nc, .pokemon2
	cp 7 ; player or rival max name length
	jr .playerOrRival2
.pokemon2
	cp 10 ; pokemon max name length
.playerOrRival2
	jr nz, .emptySpacesRemaining
	; when all spaces are filled, force the cursor onto the ED tile
	call EraseMenuCursor
	ld a, $11 ; "ED" x coord
	ld [wTopMenuItemX], a
	ld a, $5 ; "ED" y corrd
	ld [wCurrentMenuItem], a
	ld a, [wNamingScreenType]
	cp NAME_MON_SCREEN
	ld a, 9 ; keep the last underscore raised
	jr nc, .pokemon3
	ld a, 6 ; keep the last underscore raised
.pokemon3
.emptySpacesRemaining
	ld c, a
	ld b, $0
	coord hl, 10, 3
	add hl, bc
	ld [hl], $77 ; raised underscore tile id
	ret

DakutensAndHandakutens: ; 6871 (1:6871)
	push de
	call CalcStringLength
	dec hl
	ld a, [hl]
	pop hl
	ld de, $2
	call IsInArray
	ret nc
	inc hl
	ld a, [hl]
	ld [wHPBarNewHP], a
	ret

Dakutens: ; 6885 (1:6885)
	db "かが", "きぎ", "くぐ", "けげ", "こご"
	db "さざ", "しじ", "すず", "せぜ", "そぞ"
	db "ただ", "ちぢ", "つづ", "てで", "とど"
	db "はば", "ひび", "ふぶ", "へべ", "ほぼ"
	db "カガ", "キギ", "クグ", "ケゲ", "コゴ"
	db "サザ", "シジ", "スズ", "セゼ", "ソゾ"
	db "タダ", "チヂ", "ツヅ", "テデ", "トド"
	db "ハバ", "ヒビ", "フブ", "へべ", "ホボ"
	db $ff

Handakutens: ; 68d6 (1:68d6)
	db "はぱ", "ひぴ", "ふぷ", "へぺ", "ほぽ"
	db "ハパ", "ヒピ", "フプ", "へぺ", "ホポ"
	db $ff

; calculates the length of the string at wcf4b and stores it in c
CalcStringLength: ; 68eb (1:68eb)
	ld hl, wcf4b
	ld c, $0
.loop
	ld a, [hl]
	cp $50
	ret z
	inc hl
	inc c
	jr .loop

PrintNamingText: ; 68f8 (1:68f8)
	coord hl, 0, 1
	ld a, [wNamingScreenType]
	ld de, YourTextString
	and a
	jr z, .notNickname
	ld de, RivalsTextString
	dec a
	jr z, .notNickname
	ld a, [wcf91]
	ld [wMonPartySpriteSpecies], a
	push af
	callba WriteMonPartySpriteOAMBySpecies
	pop af
	ld [wd11e], a
	call GetMonName
	coord hl, 4, 1
	call PlaceString
	ld hl, $1
	add hl, bc
	ld [hl], $7f
	coord hl, 1, 3
	ld de, NicknameTextString
	jr .placeString
.notNickname
	call PlaceString
	ld l, c
	ld h, b
	ld de, NameTextString
.placeString
	jp PlaceString

YourTextString: ; 693f (1:693f)
	db "Your @"

RivalsTextString: ; 6945 (1:6945)
	db "Rival's @"

NameTextString: ; 694d (1:694d)
	db "name?@"

NicknameTextString: ; 6953 (1:6953)
	db "Nickname?@"