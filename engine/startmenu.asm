StartMenu:: ; 125cd

	call ClearWindowData

	ld de, SFX_MENU
	call PlaySFX

	farcall ReanchorBGMap_NoOAMUpdate

	ld hl, wStatusFlags2
	bit 2, [hl] ; ENGINE_BUG_CONTEST_TIMER
	ld hl, .MenuDataHeader
	jr z, .GotMenuData
	ld hl, .ContestMenuDataHeader
.GotMenuData:

	call LoadMenuDataHeader
	call .SetUpMenuItems
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a
	call DrawVariableLengthMenuBox
	call .DrawBugContestStatusBox
	call SafeUpdateSprites
	call BGMapAnchorTopLeft
	farcall LoadFonts_NoOAMUpdate
	call .DrawBugContestStatus
	call UpdateTimePals
	jr .Select

.Reopen:
	call UpdateSprites
	call UpdateTimePals
	call .SetUpMenuItems
	ld a, [wBattleMenuCursorBuffer]
	ld [wMenuCursorBuffer], a

.Select:
	call .GetInput
	jr c, .Exit
	ld a, [wMenuCursorBuffer]
	ld [wBattleMenuCursorBuffer], a
	call PlayClickSFX
	call PlaceHollowCursor
	call .OpenMenu

; Menu items have different return functions.
; For example, saving exits the menu.
	ld hl, .MenuReturns
	ld e, a
	ld d, 0
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.MenuReturns:
	dw .Reopen
	dw .Exit
	dw .ExitMenuCallFuncCloseText
	dw .ExitMenuRunScriptCloseText
	dw .ExitMenuRunScript
	dw .ReturnEnd
	dw .ReturnRedraw

.Exit:
	ld a, [hOAMUpdate]
	push af
	ld a, 1
	ld [hOAMUpdate], a
	call LoadFontsExtra
	pop af
	ld [hOAMUpdate], a
.ReturnEnd:
	call ExitMenu
.ReturnEnd2:
	call CloseText
	jp UpdateTimePals

.GetInput:
; Return carry on exit, and no-carry on selection.
	xor a
	ld [hBGMapMode], a
	call SetUpMenu
	ld a, $ff
	ld [wMenuSelection], a
.loop
	call ReadMenuJoypad
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .b
	cp A_BUTTON
	jr z, .a
	jr .loop
.a
	call PlayClickSFX
	and a
	ret
.b
	scf
	ret
; 12691

.ExitMenuRunScript: ; 12691
	call ExitMenu
	ld a, HMENURETURN_SCRIPT
	ld [hMenuReturn], a
	ret
; 12699

.ExitMenuRunScriptCloseText: ; 12699
	call ExitMenu
	ld a, HMENURETURN_SCRIPT
	ld [hMenuReturn], a
	jr .ReturnEnd2
; 126a2

.ExitMenuCallFuncCloseText: ; 126a2
	call ExitMenu
	ld hl, wQueuedScriptBank
	call FarPointerCall
	jr .ReturnEnd2
; 126b1

.ReturnRedraw: ; 126b1
	call ClearBGPalettes
	call ExitMenu
	call ReloadTilesetAndPalettes
	call DrawVariableLengthMenuBox
	call .DrawBugContestStatus
	call UpdateSprites
	call FinishExitMenu
	jp .Reopen
; 126b7

.MenuDataHeader:
	db $40 ; tile backup
	db 0, 10 ; start coords
	db 17, 19 ; end coords
	dw .MenuData
	db 1 ; default selection

.ContestMenuDataHeader:
	db $40 ; tile backup
	db 2, 10 ; start coords
	db 17, 19 ; end coords
	dw .MenuData
	db 1 ; default selection

.MenuData:
	db %10101000 ; x padding, wrap around, start can close
	dn 0, 0 ; rows, columns
	dw wMenuItemsList
	dw .MenuString
	dw .Items

.Items:
	dw StartMenu_Pokedex,  .PokedexString,  .NullDesc
	dw StartMenu_Pokemon,  .PartyString,    .NullDesc
	dw StartMenu_Pack,     .PackString,     .NullDesc
	dw StartMenu_Status,   .StatusString,   .NullDesc
	dw StartMenu_Save,     .SaveString,     .NullDesc
	dw StartMenu_Option,   .OptionString,   .NullDesc
	dw StartMenu_Exit,     .ExitString,     .NullDesc
	dw StartMenu_Pokegear, .PokegearString, .NullDesc
	dw StartMenu_Quit,     .QuitString,     .NullDesc

.PokedexString: 	db "#dex@"
.PartyString:   	db "#mon@"
.PackString:    	db "Bag@"
.StatusString:  	db "<PLAYER>@"
.SaveString:    	db "Save@"
.OptionString:  	db "Options@"
.ExitString:    	db "Exit@"
.PokegearString:	db "<PO><KE>gear@"
.QuitString:    	db "Quit@"

; Menu accounts are removed; this is vestigial
.NullDesc:      	db "@"

.OpenMenu: ; 127e5
	ld a, [wMenuSelection]
	call .GetMenuAccountTextPointer
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl
; 127ef

.MenuString: ; 127ef
	push de
	ld a, [wMenuSelection]
	call .GetMenuAccountTextPointer
	inc hl
	inc hl
	ld a, [hli]
	ld d, [hl]
	ld e, a
	pop hl
	jp PlaceString
; 12800

.GetMenuAccountTextPointer: ; 12819
	ld e, a
	ld d, 0
	ld hl, wMenuData2PointerTableAddr
	ld a, [hli]
	ld h, [hl]
	ld l, a
rept 6
	add hl, de
endr
	ret
; 12829


.SetUpMenuItems: ; 12829
	xor a
	ld [wWhichIndexSet], a
	call .FillMenuList

	ld hl, wStatusFlags
	bit 0, [hl]
	jr z, .no_pokedex
	xor a ; pokedex
	call .AppendMenuList
.no_pokedex

	ld a, [wPartyCount]
	and a
	jr z, .no_pokemon
	ld a, 1 ; pokemon
	call .AppendMenuList
.no_pokemon

	ld a, [wLinkMode]
	and a
	jr nz, .no_pack
	ld hl, wStatusFlags2
	bit 2, [hl] ; ENGINE_BUG_CONTEST_TIMER
	jr nz, .no_pack
	ld a, 2 ; pack
	call .AppendMenuList
.no_pack

	ld hl, wPokegearFlags
	bit 7, [hl]
	jr z, .no_pokegear
	ld a, 7 ; pokegear
	call .AppendMenuList
.no_pokegear

	ld a, 3 ; status
	call .AppendMenuList

	ld a, [wLinkMode]
	and a
	jr nz, .no_save
	ld hl, wStatusFlags2
	bit 2, [hl] ; ENGINE_BUG_CONTEST_TIMER
	ld a, 8 ; quit
	jr nz, .write
	ld a, 4 ; save
.write
	call .AppendMenuList
.no_save

	ld a, 5 ; option
	call .AppendMenuList
	ld a, 6 ; exit
	call .AppendMenuList
	ld a, c
	ld [wMenuItemsList], a
	ret
; 1288d


.FillMenuList: ; 1288d
	xor a
	ld hl, wMenuItemsList
	ld [hli], a
	ld a, -1
	ld bc, wMenuItemsListEnd - (wMenuItemsList + 1)
	call ByteFill
	ld de, wMenuItemsList + 1
	ld c, 0
	ret
; 128a0

.AppendMenuList: ; 128a0
	ld [de], a
	inc de
	inc c
	ret
; 128a4

.DrawBugContestStatusBox: ; 128d1
	ld hl, wStatusFlags2
	bit 2, [hl] ; ENGINE_BUG_CONTEST_TIMER
	ret z
	farjp StartMenu_DrawBugContestStatusBox
; 128de

.DrawBugContestStatus: ; 128de
	ld hl, wStatusFlags2
	bit 2, [hl] ; ENGINE_BUG_CONTEST_TIMER
	jr nz, .contest
	ret
.contest
	farjp StartMenu_PrintBugContestStatus
; 128ed


StartMenu_Exit: ; 128ed
; Exit the menu.

	ld a, 1
	ret
; 128f0


StartMenu_Quit: ; 128f0
; Retire from the bug catching contest.

	ld hl, .EndTheContestText
	call StartMenuYesNo
	jr c, .DontEndContest
	ld a, BANK(BugCatchingContestReturnToGateScript)
	ld hl, BugCatchingContestReturnToGateScript
	call FarQueueScript
	ld a, 4
	ret

.DontEndContest:
	xor a
	ret

.EndTheContestText:
	text_jump UnknownText_0x1c1a6c
	db "@"
; 1290b


StartMenu_Save: ; 1290b
; Save the game.

	call BufferScreen
	farcall SaveMenu
	jr nc, .asm_12919
	xor a
	ret
.asm_12919
	ld a, 1
	ret
; 1291c


StartMenu_Option: ; 1291c
; Game options.

	call FadeToMenu
	farcall OptionsMenu
	ld a, 6
	ret
; 12928


StartMenu_Status: ; 12928
; Player status.

	call FadeToMenu
	farcall TrainerCard
	call CloseSubmenu
	xor a
	ret
; 12937


StartMenu_Pokedex: ; 12937

	ld a, [wPartyCount]
	and a
	jr z, .asm_12949

	call FadeToMenu
	farcall Pokedex
	call CloseSubmenu

.asm_12949
	xor a
	ret
; 1294c


StartMenu_Pokegear: ; 1294c

	call FadeToMenu
	farcall InitPokegearPalettes
	farcall PokeGear
	call CloseSubmenu
	call ApplyTilemapInVBlank
	call SetPalettes
	call DelayFrame
	xor a
	ret
; 1295b


StartMenu_Pack: ; 1295b

	call FadeToMenu
	farcall Pack
	ld a, [wcf66]
	and a
	jr nz, .used_item
	call CloseSubmenu
	xor a
	ret

.used_item
	call ExitAllMenus
	ld a, 4
	ret
; 12976


StartMenu_Pokemon: ; 12976

	ld a, [wPartyCount]
	and a
	jr z, .return

	call FadeToMenu

.choosemenu
	xor a
	ld [wPartyMenuActionText], a ; Choose a POKéMON.
	call ClearBGPalettes

.menu
	farcall LoadPartyMenuGFX
	farcall InitPartyMenuWithCancel
	farcall InitPartyMenuGFX

.menunoreload
	farcall WritePartyMenuTilemap
	farcall PrintPartyMenuText
	call ApplyTilemapInVBlank
	call SetPalettes ; load regular palettes?
	call DelayFrame
	farcall PartyMenuSelect
	jr c, .return ; if cancelled or pressed B

	call PokemonActionSubmenu
	push af
	call SFXDelay2
	pop af
	and a ; 0?
	jr z, .choosemenu
	dec a ; 1?
	jr z, .menunoreload
	dec a ; 2?
	jr z, .quit
	dec a ; 3?
	jr z, .menu

.return
	call CloseSubmenu
	xor a
	ret

.quit
	ld a, b
	push af
	call ExitAllMenus
	pop af
	ret
; 129d5
