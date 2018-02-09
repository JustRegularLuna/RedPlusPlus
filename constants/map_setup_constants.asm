; see engine/map_setup.asm:MapSetupScripts
	const_def $f1
	const MAPSETUP_WARP
	const MAPSETUP_CONTINUE
	const MAPSETUP_RELOADMAP
	const MAPSETUP_TELEPORT
	const MAPSETUP_DOOR
	const MAPSETUP_FALL
	const MAPSETUP_CONNECTION
	const MAPSETUP_LINKRETURN
	const MAPSETUP_TRAIN
	const MAPSETUP_SUBMENU
	const MAPSETUP_BADWARP
	const MAPSETUP_FLY

	const_def 1
	const MAPCALLBACK_TILES
	const MAPCALLBACK_OBJECTS
	const MAPCALLBACK_CMDQUEUE
	const MAPCALLBACK_SPRITES
	const MAPCALLBACK_NEWMAP

; Command descriptions from Condensation water's scripting compendium.
; see engine/map_setup.asm:MapSetupCommands
	const_def
	const map_lcd_on              ; 00
	const map_lcd_off             ; 01
	const map_sound_off           ; 02
	const map_music               ; 03
	const map_start_music         ; 04
	const map_fade_music          ; 05
	const map_fade                ; 06
	const map_bike_music          ; 07
	const map_music_force         ; 08
	const map_max_volume          ; 09
	const map_load_blocks         ; 0a
	const map_connection_blocks   ; 0b
	const map_save_screen         ; 0c
	const map_buffer_screen       ; 0d
	const map_load_graphics       ; 0e
	const map_load_tileset_header ; 0f
	const map_time_of_day         ; 10
	const map_palettes            ; 11
	const map_wildmons            ; 12
	const map_sprites             ; 13
	const map_change_callback     ; 14
	const map_start_callback      ; 15
	const map_load_objects        ; 16
	const map_load_spawn          ; 17
	const map_load_connection     ; 18
	const map_load_warp           ; 19
	const map_load_attributes     ; 1a
	const map_load_attributes_2   ; 1b
	const map_clear_bg_palettes   ; 1c
	const map_fade_out_palettes   ; 1d
	const map_fade_in_palettes    ; 1e
	const map_anchor_screen       ; 1f
	const map_warp_face           ; 20
	const map_face_down           ; 21
	const map_spawn_coord         ; 22
	const map_player_coord        ; 23
	const map_prolong_sprites     ; 24
	const map_delay_sprites       ; 25
	const map_update_roam         ; 26
	const map_keep_roam           ; 27
	const map_fade_out_music      ; 28
	const map_animations_on       ; 29
	const map_animations_off      ; 2a
	const map_keep_palettes       ; 2b
	const map_text_scroll_off     ; 2c
	const map_stop_script         ; 2d
map_end EQU -1
