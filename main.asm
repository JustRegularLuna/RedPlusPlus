INCLUDE "constants.asm"

NPC_SPRITES_1 EQU $4
NPC_SPRITES_2 EQU $5

GFX EQU $4

PICS_1 EQU $9
PICS_2 EQU $A
PICS_3 EQU $B
PICS_4 EQU $C
PICS_5 EQU $D

INCLUDE "home.asm"


SECTION "bank1",ROMX,BANK[$1]

INCLUDE "data/facing.asm"

INCLUDE "engine/black_out.asm"


INCLUDE "engine/battle/safari_zone.asm"

INCLUDE "engine/titlescreen.asm"
INCLUDE "engine/load_mon_data.asm"

INCLUDE "data/item_prices.asm"
INCLUDE "text/item_names.asm"
;INCLUDE "text/unused_names.asm"

INCLUDE "engine/overworld/oam.asm"
INCLUDE "engine/oam_dma.asm"

INCLUDE "engine/print_waiting_text.asm"

INCLUDE "engine/overworld/map_sprite_functions1.asm"

;INCLUDE "engine/test_battle.asm"

INCLUDE "engine/overworld/item.asm"
INCLUDE "engine/overworld/movement.asm"

INCLUDE "engine/cable_club.asm"

INCLUDE "engine/menu/main_menu.asm"

INCLUDE "engine/oak_speech.asm"

INCLUDE "engine/special_warps.asm"

INCLUDE "engine/debug1.asm"

INCLUDE "engine/menu/naming_screen.asm"

INCLUDE "engine/oak_speech2.asm"

INCLUDE "engine/subtract_paid_money.asm"

INCLUDE "engine/menu/swap_items.asm"

INCLUDE "engine/overworld/pokemart.asm"

INCLUDE "engine/learn_move.asm"

INCLUDE "engine/overworld/pokecenter.asm"

INCLUDE "engine/overworld/set_blackout_map.asm"

INCLUDE "engine/display_text_id_init.asm"
INCLUDE "engine/menu/draw_start_menu.asm"

INCLUDE "engine/overworld/cable_club_npc.asm"

INCLUDE "engine/menu/text_box.asm"

INCLUDE "engine/battle/moveEffects/drain_hp_effect.asm"

INCLUDE "engine/menu/players_pc.asm"

INCLUDE "engine/remove_pokemon.asm"

INCLUDE "engine/display_pokedex.asm"


; Hooks for color hack
INCLUDE "color/cable_club.asm"
INCLUDE "color/oak_intro.asm"
INCLUDE "color/load_hp_and_exp_bar.asm"


SECTION "bank3",ROMX,BANK[$3]

INCLUDE "engine/joypad.asm"

INCLUDE "data/map_header_banks.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "engine/overworld/clear_variables.asm"
INCLUDE "engine/overworld/player_state.asm"
INCLUDE "engine/overworld/poison.asm"
INCLUDE "engine/overworld/tileset_header.asm"
INCLUDE "engine/overworld/daycare_exp.asm"

INCLUDE "data/hide_show_data.asm"

INCLUDE "engine/overworld/field_move_messages.asm"

INCLUDE "engine/items/inventory.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "engine/overworld/wild_mons.asm"

INCLUDE "engine/items/items.asm"
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
INCLUDE "engine/menu/draw_badges.asm"

INCLUDE "engine/overworld/update_map.asm"
INCLUDE "engine/overworld/cut.asm"
INCLUDE "engine/overworld/missable_objects.asm"
INCLUDE "engine/overworld/push_boulder.asm"

INCLUDE "engine/add_mon.asm"
INCLUDE "engine/flag_action.asm"
INCLUDE "engine/heal_party.asm"
INCLUDE "engine/bcd.asm"
INCLUDE "engine/init_player_data.asm"
INCLUDE "engine/get_bag_item_quantity.asm"
INCLUDE "engine/pathfinding.asm"
INCLUDE "engine/hp_bar.asm"
INCLUDE "engine/hidden_object_functions3.asm"

INCLUDE "color/update_hp_bar.asm"

SECTION "NPC Sprites 1", ROMX, BANK[NPC_SPRITES_1]
INCLUDE "gfx/sprites_1.asm"
; Other sprites were moved to another bank



SECTION "Graphics", ROMX, BANK[GFX]

INCLUDE "gfx/graphics_1.asm"


SECTION "Battle (bank 4)", ROMX, BANK[$4]

INCLUDE "engine/overworld/is_player_just_outside_map.asm"
INCLUDE "engine/menu/status_screen.asm"
INCLUDE "engine/menu/party_menu.asm"

RedPicFront::  INCBIN "pic/trainer/red.pic"
LeafPicFront:: INCBIN "pic/trainer/leaf.pic"
ShrinkPic1::   INCBIN "pic/trainer/shrink1.pic"
ShrinkPic2::   INCBIN "pic/trainer/shrink2.pic"

INCLUDE "engine/turn_sprite.asm"
INCLUDE "engine/menu/start_sub_menus.asm"
INCLUDE "engine/items/tms.asm"
INCLUDE "engine/battle/end_of_battle.asm"
INCLUDE "engine/battle/wild_encounters.asm"
INCLUDE "engine/battle/moveEffects/recoil_effect.asm"
INCLUDE "engine/battle/moveEffects/conversion_effect.asm"
INCLUDE "engine/battle/moveEffects/haze_effect.asm"
INCLUDE "engine/battle/get_trainer_name.asm"
INCLUDE "engine/random.asm"

EXPBarGraphics: INCBIN "gfx/exp_bar.2bpp"
ShinySparkleGraphics: INCBIN "gfx/shiny_sparkle.2bpp"
EXPBarShinySparkleGraphicsEnd:


SECTION "NPC Sprites 2", ROMX, BANK[NPC_SPRITES_2]

INCLUDE "gfx/sprites_2.asm"


SECTION "Battle (bank 5)", ROMX, BANK[$5]

INCLUDE "engine/load_pokedex_tiles.asm"
INCLUDE "engine/overworld/map_sprites.asm"
INCLUDE "engine/overworld/emotion_bubbles.asm"
INCLUDE "engine/evolve_trade.asm"
INCLUDE "engine/battle/moveEffects/substitute_effect.asm"
INCLUDE "engine/menu/pc.asm"

INCLUDE "data/map_songs.asm" ; moved from bank 3


SECTION "bank6",ROMX,BANK[$6]

INCLUDE "engine/play_time.asm"

INCLUDE "data/maps_1.asm"

INCLUDE "engine/overworld/npc_movement.asm"
INCLUDE "engine/overworld/doors.asm"
INCLUDE "engine/overworld/ledges.asm"


SECTION "bank7",ROMX,BANK[$7]

INCLUDE "text/monster_names.asm"

INCLUDE "engine/clear_save.asm"

INCLUDE "engine/predefs7.asm"

INCLUDE "data/maps_2.asm"

INCLUDE "engine/menu/oaks_pc.asm"

INCLUDE "engine/hidden_object_functions7.asm"


SECTION "Pics 1", ROMX, BANK[PICS_1]

INCLUDE "pic/pics_1.asm"



SECTION "Battle (bank 9)", ROMX[$7d6b], BANK[$9]
INCLUDE "engine/battle/print_type.asm"
INCLUDE "engine/battle/moveEffects/focus_energy_effect.asm"


SECTION "Pics 2", ROMX, BANK[PICS_2]

INCLUDE "pic/pics_2.asm"



SECTION "Battle (bank A)", ROMX[$7ea9], BANK[$A]
INCLUDE "engine/battle/moveEffects/leech_seed_effect.asm"


SECTION "Pics 3", ROMX, BANK[PICS_3]

INCLUDE "pic/pics_3.asm"



SECTION "Battle (bank B)", ROMX, BANK[$B]

INCLUDE "engine/battle/display_effectiveness.asm"

TrainerInfoTextBoxTileGraphics:  INCBIN "gfx/trainer_info.2bpp"
TrainerInfoTextBoxTileGraphicsEnd:
BlankLeaderNames:                INCBIN "gfx/blank_leader_names.2bpp"
CircleTile:                      INCBIN "gfx/circle_tile.2bpp"
BadgeNumbersTileGraphics:        INCBIN "gfx/badge_numbers.2bpp"

INCLUDE "engine/items/tmhm.asm"
INCLUDE "engine/battle/scale_sprites.asm"
INCLUDE "engine/battle/moveEffects/pay_day_effect.asm"
INCLUDE "engine/game_corner_slots2.asm"


SECTION "Pics 4", ROMX, BANK[PICS_4]

INCLUDE "pic/pics_4.asm"



SECTION "Battle (bank C)", ROMX[$7f2b], BANK[$C]
INCLUDE "engine/battle/moveEffects/mist_effect.asm"
INCLUDE "engine/battle/moveEffects/one_hit_ko_effect.asm"


SECTION "Pics 5", ROMX, BANK[PICS_5]

INCLUDE "pic/pics_5.asm"


SECTION "Battle (bank D)", ROMX, BANK[$D]

INCLUDE "engine/titlescreen2.asm"
INCLUDE "engine/battle/link_battle_versus_text.asm"
INCLUDE "engine/slot_machine.asm"
INCLUDE "engine/overworld/pewter_guys.asm"
INCLUDE "engine/multiply_divide.asm"
INCLUDE "engine/game_corner_slots.asm"


SECTION "bankE",ROMX,BANK[$E]

INCLUDE "engine/battle/unused_stats_functions.asm"
INCLUDE "engine/battle/scroll_draw_trainer_pic.asm"
INCLUDE "engine/battle/trainer_ai.asm"
INCLUDE "engine/battle/trainer_money_pointers.asm"
INCLUDE "text/trainer_names.asm"
INCLUDE "engine/battle/bank_e_misc.asm"
INCLUDE "engine/battle/draw_hud_pokeball_gfx.asm"
INCLUDE "engine/battle/moveEffects/rage_effect.asm"
INCLUDE "engine/battle/moveEffects/heal_effect.asm"
INCLUDE "engine/battle/moveEffects/transform_effect.asm"
INCLUDE "engine/battle/moveEffects/reflect_light_screen_effect.asm"
INCLUDE "color/draw_hud_pokeball_gfx.asm"

INCLUDE "engine/evos_moves.asm"


SECTION "bankF",ROMX,BANK[$F]

INCLUDE "engine/battle/core.asm"

	
SECTION "bank10",ROMX,BANK[$10]

INCLUDE "engine/menu/pokedex.asm"
INCLUDE "engine/trade.asm"
INCLUDE "engine/intro.asm"
INCLUDE "engine/trade2.asm"
INCLUDE "engine/battle/ai_read_move.asm"
INCLUDE "data/moves.asm"
INCLUDE "data/cries.asm"
INCLUDE "engine/overworld/berrytree.asm"

; Hooks for color hack
INCLUDE "color/trade.asm"

SECTION "bank11",ROMX,BANK[$11]

INCLUDE "engine/pokedex_rating.asm"

INCLUDE "data/maps_3.asm"

INCLUDE "engine/overworld/hidden_objects.asm"


SECTION "bank12",ROMX,BANK[$12]

INCLUDE "engine/predefs12.asm"

INCLUDE "data/maps_4.asm"



SECTION "bank13",ROMX,BANK[$13]

TrainerPics::
INCLUDE "pic/pics_6.asm"

INCLUDE "data/maps_5.asm"

INCLUDE "engine/give_pokemon.asm"

INCLUDE "engine/predefs.asm"


SECTION "bank14",ROMX,BANK[$14]

INCLUDE "data/maps_6.asm"

INCLUDE "engine/battle/init_battle_variables.asm"
INCLUDE "engine/battle/moveEffects/paralyze_effect.asm"

INCLUDE "engine/overworld/card_key.asm"

INCLUDE "engine/menu/prize_menu.asm"

INCLUDE "engine/hidden_object_functions14.asm"


SECTION "bank15",ROMX,BANK[$15]

INCLUDE "engine/battle/experience.asm"

INCLUDE "data/maps_7.asm"

INCLUDE "engine/menu/diploma.asm"

INCLUDE "engine/overworld/trainers.asm"

IsMonShiny:
; Input: de = address in RAM for DVs
; Reset zero flag if mon is shiny
; 1 in 1024 wild Pokémon is shiny.

	ld h, d
	ld l, e

; Attack must be odd (1, 3, 5, 7, 9, 11, 13, or 15) (1 in 2)
	ld a, [hl]
	and 1 << 4
	jr z, .NotShiny

; Defense must be 2, 3, 7, or 11 (1 in 4)
	ld a, [hli]
	and $f
	cp 2
	jr z, .MaybeShiny1
	cp 3
	jr z, .MaybeShiny1
	cp 7
	jr z, .MaybeShiny1
	cp 11
	jr nz, .NotShiny

; Speed must be 5 or 13 (1 in 8)
.MaybeShiny1
	ld a, [hl]
	and $f << 4
	cp 5 << 4
	jr z, .MaybeShiny2
	cp 13 << 4
	jr nz, .NotShiny

; Special must be 15 (1 in 16)
.MaybeShiny2
	ld a, [hl]
	and $f
	cp 15
	jr nz, .NotShiny

.Shiny
	; set zero flag
	and a ; a cannot be 0, so zero flag is set with thing command
	ret
.NotShiny
	; reset zero flag
	xor a
	ret

EvolutionSetWholeScreenPalette_:
	; check if evolving mon is shiny
	ld hl, wShinyMonFlag
	res 0, [hl]
	ld b, Bank(IsMonShiny)
	ld hl, IsMonShiny
	push de
	ld de, wLoadedMonDVs
	call Bankswitch
	pop de
	jr z, .setPAL
	ld hl, wShinyMonFlag
	set 0, [hl]
.setPAL
	ld c, d
	ld b, SET_PAL_POKEMON_WHOLE_SCREEN
	jp RunPaletteCommand

PlayShinySparkleAnimation:
	; flash the screen
	ld a, [rBGP]
	push af
	ld a,%00011011 ; 0, 1, 2, 3 (inverted colors)
	ld [rBGP],a
	ld c,4
	call DelayFrames
	pop af
	ld [rBGP],a ; restore initial palette
	; play animation
	ld b, $b + 1
.loop
	dec b
	jr z,.animationFinished
	ld c, ((ShinySparkleCoordsEnd - ShinySparkleCoords) / 3) + 1
	ld a, [wShinyMonFlag]
	bit 1, a
	ld de,ShinySparkleCoords
	jr z, .ok
	ld de,EnemyShinySparkleCoords
.ok
	ld hl,wOAMBuffer
.innerLoop
	dec c
	jr z,.delayFrames
	ld a, [de]
	cp b
	jr c, .sparkleInactive
	sub b
	cp 4
	jr nc, .sparkleInactive
	push bc
	ld b, a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, [de]
	ld [hli], a
	inc de
	ld a, $C9 ; first sparkle tile
	add 3
	sub b
	ld [hli], a
	xor a
	ld [hli], a
	pop bc
	jr .innerLoop
.sparkleInactive
	inc de
	inc de
	inc de
	xor a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	ld [hli], a
	jr .innerLoop
.delayFrames
	push bc
	ld c,2
	call DelayFrames
	ld a, SFX_SILPH_SCOPE
	call PlaySound
	pop bc
	jr .loop
.animationFinished
	xor a
	ld hl, wOAMBuffer
	ld bc, 4 * ((ShinySparkleCoordsEnd - ShinySparkleCoords) / 3)
	jp FillMemory

ShinySparkleCoords:
; First byte is the frame where the animation starts (higher = sooner)
; Second and third bytes are y/x coordinates
	db $0B, 70, 48
	db $0A, 75, 60
	db $09, 86, 64
	db $08, 99, 60
	db $07, 103, 48
	db $06, 99, 36
	db $05, 86, 30
	db $04, 75, 36
ShinySparkleCoordsEnd:

EnemyShinySparkleCoords:
; First byte is the frame where the animation starts (higher = sooner)
; Second and third bytes are y/x coordinates
	db $0B, 70 - 48, 48 + 80
	db $0A, 75 - 48, 60 + 80
	db $09, 86 - 48, 64 + 80
	db $08, 99 - 48, 60 + 80
	db $07, 103 - 48, 48 + 80
	db $06, 99 - 48, 36 + 80
	db $05, 86 - 48, 30 + 80
	db $04, 75 - 48, 36 + 80
EnemyShinySparkleCoordsEnd:

INCLUDE "engine/menu/item_descriptions.asm"

INCLUDE "color/exp_bar.asm"


SECTION "bank16",ROMX,BANK[$16]

INCLUDE "engine/battle/common_text.asm"

INCLUDE "engine/experience.asm"

INCLUDE "engine/overworld/oaks_aide.asm"

INCLUDE "engine/overworld/saffron_guards.asm"

INCLUDE "data/maps_8.asm"


SECTION "bank17",ROMX,BANK[$17]

INCLUDE "engine/predefs17.asm"

INCLUDE "data/maps_9.asm"

INCLUDE "engine/hidden_object_functions17.asm"


SECTION "bank18",ROMX,BANK[$18]

INCLUDE "engine/overworld/cinnabar_lab.asm"

INCLUDE "data/maps_10.asm"

INCLUDE "engine/hidden_object_functions18.asm"


SECTION "bank19",ROMX,BANK[$19]

INCLUDE "gfx/tilesets_1.asm"

INCLUDE "engine/battle/get_trainer_pic_pointers.asm"


SECTION "bank1A",ROMX,BANK[$1A]

INCLUDE "engine/battle/decrement_pp.asm"

Version_GFX:       INCBIN "gfx/red/redgreenversion.1bpp" ; 10 tiles
Version_GFXEnd:

INCLUDE "gfx/tilesets_2.asm"


SECTION "bank1B",ROMX,BANK[$1B]

INCLUDE "gfx/tilesets_3.asm"


SECTION "bank1C",ROMX,BANK[$1C]

INCLUDE "engine/gamefreak.asm"
INCLUDE "engine/hall_of_fame.asm"
INCLUDE "engine/overworld/healing_machine.asm"
INCLUDE "engine/overworld/player_animations.asm"
INCLUDE "engine/battle/ghost_marowak_anim.asm"
INCLUDE "engine/battle/battle_transitions.asm"
INCLUDE "engine/town_map.asm"
INCLUDE "engine/mon_party_sprites.asm"
INCLUDE "engine/in_game_trades.asm"
INCLUDE "engine/palettes.asm"

INCLUDE "engine/save.asm"
 
BlackTile:
	REPT 16
	db $ff
	ENDR
BlackTileEnd:

INCLUDE "color/ghost_marowak_anim.asm"
INCLUDE "color/color.asm"


SECTION "bank1D",ROMX,BANK[$1D]

INCLUDE "engine/HoF_room_pc.asm"

INCLUDE "engine/status_ailments.asm"

INCLUDE "engine/items/itemfinder.asm"

INCLUDE "data/maps_11.asm"

INCLUDE "engine/menu/vending_machine.asm"

INCLUDE "engine/menu/league_pc.asm"

INCLUDE "engine/overworld/hidden_items.asm"

RedFishingTilesFront: INCBIN "gfx/red_fishing_tile_front.2bpp"
RedFishingTilesBack:  INCBIN "gfx/red_fishing_tile_back.2bpp"
RedFishingTilesSide:  INCBIN "gfx/red_fishing_tile_side.2bpp"
RedFishingRodTiles:   INCBIN "gfx/red_fishingrod_tiles.2bpp"


SECTION "bank1E",ROMX,BANK[$1E]

INCLUDE "engine/battle/animations.asm"

INCLUDE "engine/overworld/cut2.asm"

INCLUDE "engine/overworld/ssanne.asm"

INCLUDE "data/animations.asm"

INCLUDE "engine/evolution.asm"

INCLUDE "engine/overworld/elevator.asm"

INCLUDE "engine/items/tm_prices.asm"

INCLUDE "color/animations.asm"


SECTION "bank2D",ROMX,BANK[$2D]

INCLUDE "pic/pics_7.asm"



SECTION "bank2E",ROMX,BANK[$2E]

INCLUDE "pic/pics_8.asm"



SECTION "bank2F",ROMX,BANK[$2F]

TradingAnimationGraphics:
	INCBIN "gfx/game_boy.norepeat.2bpp"
	INCBIN "gfx/link_cable.2bpp"
TradingAnimationGraphicsEnd:

TradingAnimationGraphics2:
; Pokeball traveling through the link cable.
	INCBIN "gfx/trade2.2bpp"
TradingAnimationGraphics2End:

MissingnoPic::          INCBIN "pic/other/missingno.pic"

RedPicBack::            INCBIN "pic/trainer/redb.pic"
LeafPicBack::           INCBIN "pic/trainer/leafb.pic"
OldManPic::             INCBIN "pic/trainer/oldman.pic"

LeafFishingTilesFront:: INCBIN "gfx/leaf_fishing_tile_front.2bpp"
LeafFishingTilesBack::  INCBIN "gfx/leaf_fishing_tile_back.2bpp"
LeafFishingTilesSide::  INCBIN "gfx/leaf_fishing_tile_side.2bpp"

INCLUDE "gfx/sprites_3.asm"



SECTION "bank30",ROMX,BANK[$30]

BaseStats: INCLUDE "data/base_stats.asm"


SECTION "bank31",ROMX,BANK[$31]

INCLUDE "pic/pics_9.asm"


;============================
; BANK $32 holds Pokedex text
;============================



SECTION "bank33",ROMX,BANK[$33]

INCLUDE "pic/pics_10.asm"

WorldMapTileGraphics:
	INCBIN "gfx/town_map.2bpp"
WorldMapTileGraphicsEnd:

INCLUDE "gfx/tilesets_4.asm"


SECTION "bank34",ROMX,BANK[$34]

INCLUDE "data/maps_12.asm"


SECTION "pokecenters", ROMX,BANK[$35]

INCLUDE "data/maps_13.asm"


SECTION "bank36",ROMX,BANK[$36]

INCLUDE "gfx/tilesets_5.asm"


SECTION "bank37",ROMX,BANK[$37]

INCLUDE "gfx/tilesets_6.asm"

INCLUDE "data/maps_14.asm"


SECTION "field moves", ROMX,BANK[$38]

INCLUDE "engine/overworld/field_moves.asm"
INCLUDE "engine/wonder_trade.asm"
INCLUDE "engine/overworld/automatic_repel.asm"
INCLUDE "scripts/DayCareManScript.asm"
INCLUDE "engine/overworld/ferry_script.asm"
INCLUDE "engine/battle/physical_special_split.asm"
INCLUDE "scripts/move_deleter.asm"
INCLUDE "scripts/move_relearner.asm"
INCLUDE "scripts/move_tutor.asm"

SECTION "trainer pics 2", ROMX,BANK[$39]

INCLUDE "pic/pics_11.asm"


SECTION "random stuff", ROMX,BANK[$3A]
WindowsGraphics1:
	INCBIN "gfx/windows1.2bpp"
WindowsGraphics1End:
INCLUDE "engine/splashscreens/splashscreen_main.asm"
INCLUDE "engine/splashscreens/programmer.asm"
INCLUDE "engine/splashscreens/tetris.asm"
INCLUDE "engine/splashscreens/gamescript.asm"
INCLUDE "engine/splashscreens/mateo_presents.asm"
INCLUDE "engine/splashscreens/version_screen.asm"
INCLUDE "engine/splashscreens/players_in_intro.asm"

INCLUDE "engine/overworld/headbutt.asm"

SECTION "Trainer Parties", ROMX,BANK[$3B]
INCLUDE "engine/battle/read_trainer.asm"
INCLUDE "engine/overworld/advance_player_sprite.asm"
INCLUDE "engine/mon_gender.asm"
