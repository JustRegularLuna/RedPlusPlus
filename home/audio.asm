; Audio interfaces.

MapSetup_Sound_Off:: ; 3b4e

	push hl
	push de
	push bc
	push af

	ld a, [hROMBank]
	push af
	ld a, BANK(_MapSetup_Sound_Off)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	call _MapSetup_Sound_Off

	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret
; 3b6a


UpdateSound:: ; 3b6a

	push hl
	push de
	push bc
	push af

	ld a, [hROMBank]
	push af
	ld a, BANK(_UpdateSound)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	call _UpdateSound

	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret
; 3b86


_LoadMusicByte:: ; 3b86
; CurMusicByte = [a:de]
GLOBAL LoadMusicByte

	ld [hROMBank], a
	ld [MBC3RomBank], a

	ld a, [de]
	ld [CurMusicByte], a
	ld a, BANK(LoadMusicByte)

	ld [hROMBank], a
	ld [MBC3RomBank], a
	ret
; 3b97


PlayMusic:: ; 3b97
; Play music de.

	push hl
	push de
	push bc
	push af

	ld a, [hROMBank]
	push af
	ld a, BANK(_PlayMusic) ; and BANK(_MapSetup_Sound_Off)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	ld a, e
	and a
	jr z, .nomusic

	call _PlayMusic
	jr .end

.nomusic
	call _MapSetup_Sound_Off

.end
	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a
	pop af
	pop bc
	pop de
	pop hl
	ret
; 3bbc


PlayMusic2:: ; 3bbc
; Stop playing music, then play music de.

	push hl
	push de
	push bc
	push af

	ld a, [hROMBank]
	push af
	ld a, BANK(_PlayMusic)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	push de
	ld de, MUSIC_NONE
	call _PlayMusic
	call DelayFrame
	pop de
	call _PlayMusic

	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret

; 3be3


PlayCryHeader:: ; 3be3
; Play cry header de.

	push hl
	push de
	push bc
	push af

	ld a, [hROMBank]
	push af

	; Cry headers are stuck in one bank.
	ld a, BANK(CryHeaders)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	ld hl, CryHeaders
rept 6
	add hl, de
endr

	ld e, [hl]
	inc hl
	ld d, [hl]
	inc hl

	ld a, [hli]
	ld [CryPitch], a
	ld a, [hli]
	ld [CryPitch + 1], a
	ld a, [hli]
	ld [CryLength], a
	ld a, [hl]
	ld [CryLength + 1], a

	ld a, BANK(_PlayCryHeader)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	call _PlayCryHeader

	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a

	pop af
	pop bc
	pop de
	pop hl
	ret
; 3c23


PlaySFX:: ; 3c23
; Play sound effect de.
; Sound effects are ordered by priority (highest to lowest)

	push hl
	push de
	push bc
	push af

	; Is something already playing?
	call CheckSFX
	jr nc, .play

	; Does it have priority?
	ld a, [CurSFX]
	cp e
	jr c, .done

.play
	ld a, [hROMBank]
	push af
	ld a, BANK(_PlaySFX)
	ld [hROMBank], a
	ld [MBC3RomBank], a

	ld a, e
	ld [CurSFX], a
	call _PlaySFX

	pop af
	ld [hROMBank], a
	ld [MBC3RomBank], a

.done
	pop af
	pop bc
	pop de
	pop hl
	ret
; 3c4e


WaitPlaySFX:: ; 3c4e
	call WaitSFX
	jp PlaySFX
; 3c55


WaitSFX:: ; 3c55
; infinite loop until sfx is done playing

	push hl

.wait
	ld hl, Channel5Flags
	bit 0, [hl]
	jr nz, .wait
	ld hl, Channel6Flags
	bit 0, [hl]
	jr nz, .wait
	ld hl, Channel7Flags
	bit 0, [hl]
	jr nz, .wait
	ld hl, Channel8Flags
	bit 0, [hl]
	jr nz, .wait

	pop hl
	ret
; 3c74

IsSFXPlaying:: ; 3c74
; Return carry if no sound effect is playing.
; The inverse of CheckSFX.
	push hl

	ld hl, Channel5Flags
	bit 0, [hl]
	jr nz, .playing
	ld hl, Channel6Flags
	bit 0, [hl]
	jr nz, .playing
	ld hl, Channel7Flags
	bit 0, [hl]
	jr nz, .playing
	ld hl, Channel8Flags
	bit 0, [hl]
	jr nz, .playing

	pop hl
	scf
	ret

.playing
	pop hl
	and a
	ret
; 3c97

MaxVolume:: ; 3c97
	ld a, $77 ; max
	ld [Volume], a
	ret
; 3c9d

LowVolume:: ; 3c9d
	ld a, $33 ; 40%
	ld [Volume], a
	ret
; 3ca3

VolumeOff:: ; 3ca3
	xor a
	ld [Volume], a
	ret
; 3ca8

FadeInMusic:: ; 3cae
	ld a, 4 | 1 << 7
	ld [MusicFade], a
	ret
; 3cb4

SkipMusic:: ; 3cb4
; Skip a frames of music.
.loop
	and a
	ret z
	dec a
	call UpdateSound
	jr .loop
; 3cbc

FadeToMapMusic:: ; 3cbc
	push hl
	push de
	push bc
	push af

	call GetMapMusic
	ld a, [wMapMusic]
	cp e
	jr z, .done

	ld a, 8
	ld [MusicFade], a
	ld a, e
	ld [MusicFadeIDLo], a
	ld a, d
	ld [MusicFadeIDHi], a
	ld a, e
	ld [wMapMusic], a

.done
	pop af
	pop bc
	pop de
	pop hl
	ret
; 3cdf

PlayMapMusic:: ; 3cdf
	push hl
	push de
	push bc
	push af

	call GetMapMusic
	ld a, [wMapMusic]
	cp e
	jr z, .done

	push de
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	pop de
	ld a, e
	ld [wMapMusic], a
	call PlayMusic

.done
	pop af
	pop bc
	pop de
	pop hl
	ret
; 3d03

EnterMapMusic:: ; 3d03
	push hl
	push de
	push bc
	push af

	xor a
	ld [wDontPlayMapMusicOnReload], a
	call GetMapMusic
	ld a, [PlayerState]
	cp PLAYER_BIKE
	call z, GetBikeMusic
	push de
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	pop de

	ld a, e
	ld [wMapMusic], a
	call PlayMusic

	pop af
	pop bc
	pop de
	pop hl
	ret
; 3d2f

TryRestartMapMusic:: ; 3d2f
	ld a, [wDontPlayMapMusicOnReload]
	and a
	jp z, RestoreMusic
	xor a
	ld [wMapMusic], a
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	xor a
	ld [wDontPlayMapMusicOnReload], a
	ret
; 3d47

RestartMapMusic:: ; 3d47
	push hl
	push de
	push bc
	push af
	ld de, MUSIC_NONE
	call PlayMusic
	call DelayFrame
	ld a, [wMapMusic]
	ld e, a
	ld d, 0
	call PlayMusic
	pop af
	pop bc
	pop de
	pop hl
	ret
; 3d62

SpecialMapMusic:: ; 3d62
	ld a, [MapGroup]
	cp GROUP_ROUTE_23
	jr nz, .not_route_23
	ld a, [MapNumber]
	cp MAP_ROUTE_23
	jr z, .no

.not_route_23
	ld a, [MapGroup]
	cp GROUP_QUIET_CAVE_1F ; GROUP_QUIET_CAVE_B1F, GROUP_QUIET_CAVE_B2F, GROUP_QUIET_CAVE_B3F
	jr nz, .not_quiet_cave
	ld a, [MapNumber]
	cp MAP_QUIET_CAVE_1F
	jr z, .no
	cp MAP_QUIET_CAVE_B1F
	jr z, .no
	cp MAP_QUIET_CAVE_B2F
	jr z, .no
	cp MAP_QUIET_CAVE_B3F
	jr z, .no

.not_quiet_cave
	ld a, [MapGroup]
	cp GROUP_SCARY_CAVE_SHIPWRECK
	jr nz, .not_shipwreck
	ld a, [MapNumber]
	cp MAP_SCARY_CAVE_SHIPWRECK
	jr z, .no

.not_shipwreck
	ld a, [MapGroup]
	cp GROUP_WHIRL_ISLAND_LUGIA_CHAMBER
	jr nz, .not_lugia_chamber
	ld a, [MapNumber]
	cp MAP_WHIRL_ISLAND_LUGIA_CHAMBER
	jr z, .no

.not_lugia_chamber
	ld a, [MapGroup]
	cp GROUP_ROUTE_16_SOUTH ; GROUP_ROUTE_18_WEST
	jr nz, .not_cycling_road_bike
	ld a, [MapNumber]
	cp MAP_ROUTE_16_SOUTH
	jr z, .route_16
	cp MAP_ROUTE_18_WEST
	jr nz, .not_cycling_road_bike
.route_16
	ld a, [PlayerState]
	cp PLAYER_BIKE
	jr z, .cycling_road_bike

.not_cycling_road_bike
	ld a, [PlayerState]
	cp PLAYER_SURF
	jr z, .surf
	cp PLAYER_SURF_PIKA
	jr z, .surf_pikachu

	ld a, [StatusFlags2]
	bit 2, a ; ENGINE_BUG_CONTEST_TIMER
	jr nz, .contest

.no
	and a
	ret

.bike
	ld de, MUSIC_BICYCLE
	scf
	ret

.cycling_road_bike
	ld de, MUSIC_BICYCLE_XY
	scf
	ret

.surf
	ld de, MUSIC_SURF
	scf
	ret

.surf_pikachu
	ld de, MUSIC_SURFING_PIKACHU
	scf
	ret

.contest
	ld a, [MapGroup]
	cp GROUP_ROUTE_35_NATIONAL_PARK_GATE
	jr nz, .no
	ld a, [MapNumber]
	cp MAP_ROUTE_35_NATIONAL_PARK_GATE
	jr z, .ranking
	cp MAP_ROUTE_36_NATIONAL_PARK_GATE
	jr nz, .no

.ranking
	ld de, MUSIC_BUG_CATCHING_CONTEST_RANKING
	scf
	ret
; 3d97

GetMapMusic:: ; 3d97
	call SpecialMapMusic
	ret c
	jp GetMapHeaderMusic
; 3d9f

CheckSFX:: ; 3dde
; Return carry if any SFX channels are active.
	ld a, [Channel5Flags]
	bit 0, a
	jr nz, .playing
	ld a, [Channel6Flags]
	bit 0, a
	jr nz, .playing
	ld a, [Channel7Flags]
	bit 0, a
	jr nz, .playing
	ld a, [Channel8Flags]
	bit 0, a
	jr nz, .playing
	and a
	ret
.playing
	scf
	ret
; 3dfe

TerminateExpBarSound:: ; 3dfe
	xor a
	ld [Channel5Flags], a
	ld [SoundInput], a
	ld [rNR10], a
	ld [rNR11], a
	ld [rNR12], a
	ld [rNR13], a
	ld [rNR14], a
	ret
; 3e10


ChannelsOff:: ; 3e10
; Quickly turn off music channels
	xor a
	ld [Channel1Flags], a
	ld [Channel2Flags], a
	ld [Channel3Flags], a
	ld [Channel4Flags], a
	ld [SoundInput], a
	ret
; 3e21

SFXChannelsOff:: ; 3e21
; Quickly turn off sound effect channels
	xor a
	ld [Channel5Flags], a
	ld [Channel6Flags], a
	ld [Channel7Flags], a
	ld [Channel8Flags], a
	ld [SoundInput], a
	ret
; 3e32
