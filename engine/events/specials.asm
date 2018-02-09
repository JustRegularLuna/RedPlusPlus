Special:: ; c01b
; Run script special de.
	ld hl, SpecialsPointers
	add hl, de
	add hl, de
	add hl, de
	ld b, [hl]
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, b
	jp FarCall_hl
; c029

INCLUDE "data/special_pointers.asm"

SpecialNone: ; c224
	ret
; c225

Special_SetPlayerPalette: ; c225
	ld a, [ScriptVar]
	farjp SetPlayerPalette
; c230

Special_GameCornerPrizeMonCheckDex: ; c230
	ld a, [ScriptVar]
	dec a
	call CheckCaughtMon
	ret nz
	ld a, [ScriptVar]
	dec a
	call SetSeenAndCaughtMon
	call FadeToMenu
	ld a, [ScriptVar]
	ld [wd265], a
	farcall NewPokedexEntry
	jp ExitAllMenus
; c252

SpecialSeenMon: ; c252
	ld a, [ScriptVar]
	dec a
	jp SetSeenMon
; c25a

Special_FindGreaterThanThatLevel: ; c25a
	ld a, [ScriptVar]
	ld b, a
	farcall _FindGreaterThanThatLevel
	jr z, FoundNone
	jr FoundOne

Special_FindAtLeastThatHappy: ; c268
	ld a, [ScriptVar]
	ld b, a
	farcall _FindAtLeastThatHappy
	jr z, FoundNone
	jr FoundOne

Special_FindThatSpecies: ; c276
	ld a, [ScriptVar]
	ld b, a
	farcall _FindThatSpecies
	jr z, FoundNone
	jr FoundOne

Special_FindThatSpeciesYourTrainerID: ; c284
	ld a, [ScriptVar]
	ld b, a
	farcall _FindThatSpeciesYourTrainerID
	jr z, FoundNone
	; fallthrough

FoundOne: ; c292
	ld a, TRUE
	ld [ScriptVar], a
	ret

FoundNone: ; c298
	xor a
	ld [ScriptVar], a
	ret
; c29d

SpecialNameRival: ; 0xc29d
	ld b, $2 ; rival
	ld de, RivalName
	farcall _NamingScreen
	; default to "Silver"
	ld hl, RivalName
	ld de, .DefaultRivalName
	jp InitName
; 0xc2b2

.DefaultRivalName: ; 0xc2b2
	db "Silver@"

SpecialTrendyPhrase:
	ld b, $3 ; trendy phrase
	ld de, TrendyPhrase
	farcall _NamingScreen
	; default to "Nothing"
	ld hl, TrendyPhrase
	ld de, .DefaultTrendyPhrase
	jp InitName
; 0xc2b2

.DefaultTrendyPhrase:
	db "Nothing@"

SpecialNameRater: ; c2b9
	farjp NameRater
; c2c0

Special_TownMap: ; c2c0
	call FadeToMenu
	farcall _TownMap
	jp ExitAllMenus
; c2cd

Special_DisplayLinkRecord: ; c2da
	call FadeToMenu
	farcall DisplayLinkRecord
	jp ExitAllMenus
; c2e7

Special_KrissHousePC: ; c2e7
	xor a
	ld [ScriptVar], a
	farcall _KrissHousePC
	ld a, c
	ld [ScriptVar], a
	ret
; c2f6

BugContestJudging: ; c34a
	farcall _BugContestJudging
	ld a, b
	ld [ScriptVar], a
	dec a
	jr z, .firstplace
	dec a
	jr z, .secondplace
	dec a
	jr z, .thirdplace
	ld a, SHED_SHELL
	jr .finish
.firstplace
	ld a, SUN_STONE
	ld hl, StatusFlags
	bit 6, [hl] ; hall of fame
	jr z, .finish
	ld a, SHINY_STONE - MOON_STONE + 1 ; TODO: include ICE_STONE once it's useful
	call RandomRange
	add MOON_STONE
	jr .finish
.secondplace
	ld a, EVERSTONE
	jr .finish
.thirdplace
	ld a, SITRUS_BERRY
.finish
	ld [wBugContestOfficerPrize], a
	ret
; c355

MapRadio: ; c355
	ld a, [ScriptVar]
	ld e, a
	farjp PlayRadio
; c360

Special_UnownPuzzle: ; c360
	call FadeToMenu
	farcall UnownPuzzle
	ld a, [wSolvedUnownPuzzle]
	ld [ScriptVar], a
	jp ExitAllMenus
; c373

Special_SlotMachine: ; c373
	call Special_CheckCoins
	ret c
	ld a, BANK(_SlotMachine)
	ld hl, _SlotMachine
	jr Special_StartGameCornerGame
; c380

Special_CardFlip: ; c380
	call Special_CheckCoins
	ret c
	ld a, BANK(_CardFlip)
	ld hl, _CardFlip
	; fallthrough
; c38d

;Special_DummyNonfunctionalGameCornerGame: ; c38d
;	call Special_CheckCoins
;	ret c
;	ld a, BANK(_DummyGame)
;	ld hl, _DummyGame
;	call Special_StartGameCornerGame
;	ret
;; c39a

Special_StartGameCornerGame: ; c39a
	call FarQueueScript
	call FadeToMenu
	ld hl, wQueuedScriptBank
	ld a, [hli]
	push af
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop af
	call FarCall_hl
	jp ExitAllMenus
; c3ae

Special_CheckCoins: ; c3ae
	ld hl, Coins
	ld a, [hli]
	or [hl]
	jr z, .no_coins
	ld a, COIN_CASE
	ld [CurItem], a
	ld hl, NumItems
	call CheckItem
	jr nc, .no_coin_case
	and a
	ret

.no_coins
	ld hl, .NoCoinsText
	jr .print

.no_coin_case
	ld hl, .NoCoinCaseText

.print
	call PrintText
	scf
	ret
; c3d1

.NoCoinsText: ; 0xc3d1
	; You have no coins.
	text_jump UnknownText_0x1bd3d7
	db "@"
; 0xc3d6

.NoCoinCaseText: ; 0xc3d6
	; You don't have a COIN CASE.
	text_jump UnknownText_0x1bd3eb
	db "@"
; 0xc3db

ScriptReturnCarry: ; c3e2
	jr c, .carry
	xor a
	ld [ScriptVar], a
	ret
.carry
	ld a, 1
	ld [ScriptVar], a
	ret
; c3ef

Special_ActivateFishingSwarm: ; c3fc
	ld a, [ScriptVar]
	ld [wFishingSwarmFlag], a
	ret
; c403

StoreSwarmMapIndices:: ; c403
	ld a, c
	and a
	jr nz, .yanma
; swarm dark cave violet entrance
	ld a, d
	ld [wDunsparceMapGroup], a
	ld a, e
	ld [wDunsparceMapNumber], a
	ret

.yanma
	ld a, d
	ld [wYanmaMapGroup], a
	ld a, e
	ld [wYanmaMapNumber], a
	ret
; c419

SpecialCheckPokerus: ; c419
; Check if a monster in your party has Pokerus
	farcall CheckPokerus
	jp ScriptReturnCarry
; c422

Special_ResetLuckyNumberShowFlag: ; c422
	farcall RestartLuckyNumberCountdown
	ld hl, wLuckyNumberShowFlag
	res 0, [hl]
	farjp LoadOrRegenerateLuckyIDNumber
; c434

Special_CheckLuckyNumberShowFlag: ; c434
	farcall CheckLuckyNumberShowFlag
	jp ScriptReturnCarry
; c43d

SpecialSnorlaxAwake: ; 0xc43d
; Check if the Poké Flute channel is playing.

; outputs:
; ScriptVar is 1 if the conditions are met, otherwise 0.

; check background music
	ld a, [wMapMusic]
	cp MUSIC_POKE_FLUTE_CHANNEL
	jr nz, .nope
	ld a, TRUE
	jr .done
.nope
	xor a
.done
	ld [ScriptVar], a
	ret

PlayCurMonCry: ; c472
	ld a, [CurPartySpecies]
	jp PlayCry
; c478

Special_FadeOutMusic: ; c48f
	ld a, MUSIC_NONE % $100
	ld [MusicFadeIDLo], a
	ld a, MUSIC_NONE / $100
	ld [MusicFadeIDHi], a
	ld a, $2
	ld [MusicFade], a
	ret
; c49f

Diploma: ; c49f
	call FadeToMenu
	farcall _Diploma
	jp ExitAllMenus
; c4ac

Special_GetOvercastIndex::
	call GetOvercastIndex
	ld [ScriptVar], a
	ret

CheckIfTrendyPhraseIsLucky:
	xor a
	ld [ScriptVar], a
	ld hl, TrendyPhrase
	ld bc, .KeyPhrase
	ld d, 6
.loop
	ld a, [bc]
	ld e, a
	ld a, [hli]
	cp e
	ret nz
	inc bc
	dec d
	jr nz, .loop
	ld a, 1
	ld [ScriptVar], a
	ret

.KeyPhrase:
	db "Lucky@"

RespawnOneOffs:
	; TODO: respawn uncaught one-off Pokémon (legendaries, etc) after beating Elite 4
	ret

BillBoxSwitchCheck:
	ld a, [wCurBox]
	cp NUM_BOXES - 1
	jr nz, .notbox14
	ld a, -1
.notbox14
	inc a
.billboxloop
	inc a
	ld c, a
	push af
	farcall GetBoxCountWithC
	cp MONS_PER_BOX
	jr nz, .foundspace
	pop af
	dec a
	cp NUM_BOXES - 1
	jr nz, .notlastbox
	ld a, -1
.notlastbox
	inc a
	ld c, a
	ld a, [wCurBox]
	cp c
	ld a, c
	jr nz, .billboxloop
	xor a
	ld [ScriptVar], a
	ret

.foundspace
	pop af
	dec a
	ld [ScriptVar], a
	ld [EngineBuffer1], a
	ret

BillBoxSwitch:
	; back up wMisc to wDecompressScratch
	ld hl, wMisc
	ld de, wDecompressScratch
	ld bc, (wMiscEnd - wMisc)
	ld a, BANK(wDecompressScratch)
	call FarCopyWRAM
	; change boxes (overwrites wMisc)
	ld a, [EngineBuffer1]
	ld e, a
	farcall ChangeBoxSaveGameNoConfirm
	; restore wMisc from wDecompressScratch
	ld hl, wDecompressScratch
	ld de, wMisc
	ld bc, (wMiscEnd - wMisc)
	ld a, BANK(wDecompressScratch)
	jp FarCopyWRAM
