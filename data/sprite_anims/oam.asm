SpriteAnimOAMData: ; 8d94d
	; vtile offset, pointer
	dbw $00, .OAMData_85 ; SPRITE_ANIM_FRAME_IDX_00
	dbw $04, .OAMData_85 ; SPRITE_ANIM_FRAME_IDX_01
	dbw $00, .OAMData_20 ; SPRITE_ANIM_FRAME_IDX_20
	dbw $00, .OAMData_21 ; SPRITE_ANIM_FRAME_IDX_21
	dbw $00, .OAMData_27 ; SPRITE_ANIM_FRAME_IDX_27
	dbw $08, .OAMData_27 ; SPRITE_ANIM_FRAME_IDX_28
	dbw $10, .OAMData_29 ; SPRITE_ANIM_FRAME_IDX_29
	dbw $10, .OAMData_2a ; SPRITE_ANIM_FRAME_IDX_2A
	dbw $10, .OAMData_2b ; SPRITE_ANIM_FRAME_IDX_2B
	dbw $10, .OAMData_2c ; SPRITE_ANIM_FRAME_IDX_2C
	dbw $10, .OAMData_2d ; SPRITE_ANIM_FRAME_IDX_2D
	dbw $3a, .OAMData_02 ; SPRITE_ANIM_FRAME_IDX_2E
	dbw $00, .OAMData_87 ; SPRITE_ANIM_FRAME_IDX_2F
	dbw $00, .OAMData_30 ; SPRITE_ANIM_FRAME_IDX_30
	dbw $02, .OAMData_31 ; SPRITE_ANIM_FRAME_IDX_31
	dbw $06, .OAMData_19 ; SPRITE_ANIM_FRAME_IDX_32
	dbw $0a, .OAMData_19 ; SPRITE_ANIM_FRAME_IDX_33
	dbw $0e, .OAMData_19 ; SPRITE_ANIM_FRAME_IDX_34
	dbw $12, .OAMData_35 ; SPRITE_ANIM_FRAME_IDX_35
	dbw $13, .OAMData_35 ; SPRITE_ANIM_FRAME_IDX_36
	dbw $00, .OAMData_00 ; SPRITE_ANIM_FRAME_IDX_37
	dbw $04, .OAMData_00 ; SPRITE_ANIM_FRAME_IDX_38
	dbw $10, .OAMData_19 ; SPRITE_ANIM_FRAME_IDX_39
	dbw $00, .OAMData_31 ; SPRITE_ANIM_FRAME_IDX_3A
	dbw $04, .OAMData_02 ; SPRITE_ANIM_FRAME_IDX_3B
	dbw $00, .OAMData_3c ; SPRITE_ANIM_FRAME_IDX_3C
	dbw $00, .OAMData_3d ; SPRITE_ANIM_FRAME_IDX_3D
	dbw $00, .OAMData_3e ; SPRITE_ANIM_FRAME_IDX_3E
	dbw $00, .OAMData_3f ; SPRITE_ANIM_FRAME_IDX_3F
	dbw $00, .OAMData_40 ; SPRITE_ANIM_FRAME_IDX_40
	dbw $00, .OAMData_31 ; SPRITE_ANIM_FRAME_IDX_41
	dbw $04, .OAMData_31 ; SPRITE_ANIM_FRAME_IDX_42
	dbw $00, .OAMData_4f ; SPRITE_ANIM_FRAME_IDX_4F
	dbw $00, .OAMData_50 ; SPRITE_ANIM_FRAME_IDX_50
	dbw $00, .OAMData_51 ; SPRITE_ANIM_FRAME_IDX_51
	dbw $00, .OAMData_52 ; SPRITE_ANIM_FRAME_IDX_52
	dbw $00, .OAMData_53 ; SPRITE_ANIM_FRAME_IDX_53
	dbw $00, .OAMData_02 ; SPRITE_ANIM_FRAME_IDX_54
	dbw $01, .OAMData_02 ; SPRITE_ANIM_FRAME_IDX_55
	dbw $04, .OAMData_50 ; SPRITE_ANIM_FRAME_IDX_5B
	dbw $00, .OAMData_63 ; SPRITE_ANIM_FRAME_IDX_63
	dbw $04, .OAMData_63 ; SPRITE_ANIM_FRAME_IDX_64
	dbw $00, .OAMData_65 ; SPRITE_ANIM_FRAME_IDX_65
	dbw $04, .OAMData_65 ; SPRITE_ANIM_FRAME_IDX_66
	dbw $00, .OAMData_7f ; SPRITE_ANIM_FRAME_IDX_7F
	dbw $04, .OAMData_7f ; SPRITE_ANIM_FRAME_IDX_80
	dbw $d0, .OAMData_81 ; SPRITE_ANIM_FRAME_IDX_81
	dbw $d3, .OAMData_81 ; SPRITE_ANIM_FRAME_IDX_82
	dbw $d6, .OAMData_81 ; SPRITE_ANIM_FRAME_IDX_83
	dbw $6c, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_84
	dbw $68, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_85
	dbw $64, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_86
	dbw $60, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_87
	dbw $0c, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_88
	dbw $08, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_89
	dbw $04, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_8A
	dbw $00, .OAMData_84 ; SPRITE_ANIM_FRAME_IDX_8B
	dbw $00, .OAMData_86 ; SPRITE_ANIM_FRAME_IDX_8C
	dbw $04, .OAMData_86 ; SPRITE_ANIM_FRAME_IDX_8D

.OAMData_02:
	db 1
	dsprite -1,  4, -1,  4, $00, $0

.OAMData_30:
	db 4
	dsprite -1,  0, -1,  0, $00, $0 | BEHIND_BG
	dsprite -1,  0,  0,  0, $00, $0 | X_FLIP | BEHIND_BG
	dsprite  0,  0, -1,  0, $01, $0 | BEHIND_BG
	dsprite  0,  0,  0,  0, $01, $0 | X_FLIP | BEHIND_BG

.OAMData_35:
	db 4
	dsprite -1,  0, -1,  0, $00, $7
	dsprite -1,  0,  0,  0, $00, $7 | X_FLIP
	dsprite  0,  0, -1,  0, $00, $7 | Y_FLIP
	dsprite  0,  0,  0,  0, $00, $7 | X_FLIP | Y_FLIP
; 8db4b

; 8db4b
	db 4
	dsprite -1,  0, -1,  0, $00, $0 | BEHIND_BG
	dsprite -1,  0,  0,  0, $00, $0 | X_FLIP | BEHIND_BG
	dsprite  0,  0, -1,  0, $00, $0 | Y_FLIP | BEHIND_BG
	dsprite  0,  0,  0,  0, $00, $0 | X_FLIP | Y_FLIP | BEHIND_BG

.OAMData_19:
	db 16
	dsprite -2,  0, -2,  0, $00, $0
	dsprite -2,  0, -1,  0, $01, $0
	dsprite -1,  0, -2,  0, $02, $0
	dsprite -1,  0, -1,  0, $03, $0
	dsprite -2,  0,  0,  0, $01, $0 | X_FLIP
	dsprite -2,  0,  1,  0, $00, $0 | X_FLIP
	dsprite -1,  0,  0,  0, $03, $0 | X_FLIP
	dsprite -1,  0,  1,  0, $02, $0 | X_FLIP
	dsprite  0,  0, -2,  0, $02, $0 | Y_FLIP
	dsprite  0,  0, -1,  0, $03, $0 | Y_FLIP
	dsprite  1,  0, -2,  0, $00, $0 | Y_FLIP
	dsprite  1,  0, -1,  0, $01, $0 | Y_FLIP
	dsprite  0,  0,  0,  0, $03, $0 | X_FLIP | Y_FLIP
	dsprite  0,  0,  1,  0, $02, $0 | X_FLIP | Y_FLIP
	dsprite  1,  0,  0,  0, $01, $0 | X_FLIP | Y_FLIP
	dsprite  1,  0,  1,  0, $00, $0 | X_FLIP | Y_FLIP

.OAMData_00:
; former party menu icons
	db 4
	dsprite -1,  0, -1,  0, $00, $0
	dsprite -1,  0,  0,  0, $01, $0
	dsprite  0,  0, -1,  0, $02, $0
	dsprite  0,  0,  0,  0, $03, $0

.OAMData_85:
; new party menu icons
	db 4
	dsprite -1,  0, -1,  0, $00, -1
	dsprite -1,  0,  0,  0, $01, -1
	dsprite  0,  0, -1,  0, $02, -1
	dsprite  0,  0,  0,  0, $03, -1

.OAMData_31:
	db 4
	dsprite -1,  0, -1,  0, $00, $0 | BEHIND_BG
	dsprite -1,  0,  0,  0, $01, $0 | BEHIND_BG
	dsprite  0,  0, -1,  0, $02, $0 | BEHIND_BG
	dsprite  0,  0,  0,  0, $03, $0 | BEHIND_BG

.OAMData_3d:
; party menu icon with mail, frame 1
	db 4
	dsprite -1,  0, -1,  0, $00, -1
	dsprite -1,  0,  0,  0, $01, -1
	dsprite  0,  0, -1,  0, $08, $2
	dsprite  0,  0,  0,  0, $03, -1

.OAMData_3e:
; party menu icon with mail, frame 2
	db 4
	dsprite -1,  0, -1,  0, $04, -1
	dsprite -1,  0,  0,  0, $05, -1
	dsprite  0,  0, -1,  0, $08, $2
	dsprite  0,  0,  0,  0, $07, -1

.OAMData_3f:
; party menu icon with item, frame 1
	db 4
	dsprite -1,  0, -1,  0, $00, -1
	dsprite -1,  0,  0,  0, $01, -1
	dsprite  0,  0, -1,  0, $09, $2
	dsprite  0,  0,  0,  0, $03, -1

.OAMData_40:
; party menu icon with item, frame 2
	db 4
	dsprite -1,  0, -1,  0, $04, -1
	dsprite -1,  0,  0,  0, $05, -1
	dsprite  0,  0, -1,  0, $09, $2
	dsprite  0,  0,  0,  0, $07, -1

.OAMData_4f:
	db 1
	dsprite -1,  4, -1,  4, $00, $6

.OAMData_50:
	db 4
	dsprite -1,  0, -1,  0, $00, $6
	dsprite -1,  0,  0,  0, $01, $6
	dsprite  0,  0, -1,  0, $02, $6
	dsprite  0,  0,  0,  0, $03, $6

.OAMData_20:
	db 4
	dsprite -1,  7, -1,  7, $00, $0
	dsprite -1,  7,  0,  0, $00, $0 | X_FLIP
	dsprite  0,  0, -1,  7, $00, $0 | Y_FLIP
	dsprite  0,  0,  0,  0, $00, $0 | X_FLIP | Y_FLIP

.OAMData_21:
	db 10
	dsprite -1,  7,  0,  0, $00, $0
	dsprite -1,  7,  1,  0, $01, $0
	dsprite -1,  7,  2,  0, $01, $0
	dsprite -1,  7,  3,  0, $01, $0
	dsprite -1,  7,  4,  0, $00, $0 | X_FLIP
	dsprite  0,  0,  0,  0, $00, $0 | Y_FLIP
	dsprite  0,  0,  1,  0, $01, $0 | Y_FLIP
	dsprite  0,  0,  2,  0, $01, $0 | Y_FLIP
	dsprite  0,  0,  3,  0, $01, $0 | Y_FLIP
	dsprite  0,  0,  4,  0, $00, $0 | X_FLIP | Y_FLIP

.OAMData_27:
	db 6
	dsprite -2,  4, -2,  4, $00, $5
	dsprite -2,  4, -1,  4, $02, $5
	dsprite -2,  4,  0,  4, $00, $5 | X_FLIP
	dsprite  0,  4, -2,  4, $04, $5
	dsprite  0,  4, -1,  4, $06, $5
	dsprite  0,  4,  0,  4, $04, $5 | X_FLIP

.OAMData_29:
	db 6
	dsprite -2,  4, -2,  4, $00, $6
	dsprite -2,  4, -1,  4, $02, $6
	dsprite -2,  4,  0,  4, $04, $6
	dsprite  0,  4, -2,  4, $06, $6
	dsprite  0,  4, -1,  4, $08, $6
	dsprite  0,  4,  0,  4, $0a, $6

.OAMData_2a:
	db 6
	dsprite -2,  4, -2,  4, $00, $6
	dsprite -2,  4, -1,  4, $02, $6
	dsprite -2,  4,  0,  4, $04, $6
	dsprite  0,  4, -2,  4, $0c, $6
	dsprite  0,  4, -1,  4, $0e, $6
	dsprite  0,  4,  0,  4, $10, $6

.OAMData_2b:
	db 6
	dsprite -2,  4, -2,  4, $00, $6
	dsprite -2,  4, -1,  4, $02, $6
	dsprite -2,  4,  0,  4, $04, $6
	dsprite  0,  4, -2,  4, $12, $6
	dsprite  0,  4, -1,  4, $14, $6
	dsprite  0,  4,  0,  4, $16, $6

.OAMData_2c:
	db 6
	dsprite -2,  4, -2,  4, $00, $6
	dsprite -2,  4, -1,  4, $02, $6
	dsprite -2,  4,  0,  4, $04, $6
	dsprite  0,  4, -2,  4, $18, $6
	dsprite  0,  4, -1,  4, $1a, $6
	dsprite  0,  4,  0,  4, $1c, $6

.OAMData_2d:
	db 6
	dsprite -2,  4, -2,  4, $1e, $6
	dsprite -2,  4, -1,  4, $20, $6
	dsprite -2,  4,  0,  4, $22, $6
	dsprite  0,  4, -2,  4, $24, $6
	dsprite  0,  4, -1,  4, $26, $6
	dsprite  0,  4,  0,  4, $28, $6

.OAMData_3c:
	db 3
	dsprite -2,  4, -1,  4, $00, $0
	dsprite -1,  4, -1,  4, $00, $0
	dsprite  0,  4, -1,  4, $00, $0

.OAMData_51:
	db 4
	dsprite -1,  0, -2,  6, $00, $6
	dsprite -1,  0,  0,  2, $01, $6
	dsprite  0,  0, -2,  6, $02, $6
	dsprite  0,  0,  0,  2, $03, $6

.OAMData_52:
	db 4
	dsprite -1,  0, -2,  4, $00, $6
	dsprite -1,  0,  0,  4, $01, $6
	dsprite  0,  0, -2,  4, $02, $6
	dsprite  0,  0,  0,  4, $03, $6

.OAMData_53:
	db 4
	dsprite -1,  0, -2,  0, $00, $6
	dsprite -1,  0,  1,  0, $01, $6
	dsprite  0,  0, -2,  0, $02, $6
	dsprite  0,  0,  1,  0, $03, $6

.OAMData_63:
	db 4
	dsprite -1,  0, -1,  0, $00, PAL_OW_GREEN
	dsprite -1,  0,  0,  0, $01, PAL_OW_GREEN
	dsprite  0,  0, -1,  0, $02, PAL_OW_GREEN
	dsprite  0,  0,  0,  0, $03,PAL_OW_GREEN

.OAMData_65:
	db 4
	dsprite -1,  0, -1,  0, $00, PAL_OW_GREEN | BEHIND_BG
	dsprite -1,  0,  0,  0, $01, PAL_OW_GREEN | BEHIND_BG
	dsprite  0,  0, -1,  0, $02, PAL_OW_GREEN | BEHIND_BG
	dsprite  0,  0,  0,  0, $03, PAL_OW_GREEN | BEHIND_BG

.OAMData_7f:
	db 4
	dsprite -1,  0, -1,  0, $00, $2
	dsprite -1,  0,  0,  0, $01, $2
	dsprite  0,  0, -1,  0, $02, $2
	dsprite  0,  0,  0,  0, $03, $2

.OAMData_81:
	db 9
	dsprite -2,  0, -2,  4, $00, $1
	dsprite -2,  0, -1,  4, $01, $1
	dsprite -2,  0,  0,  4, $02, $1
	dsprite -1,  0, -2,  4, $10, $1
	dsprite -1,  0, -1,  4, $11, $1
	dsprite -1,  0,  0,  4, $12, $1
	dsprite  0,  0, -2,  4, $20, $1
	dsprite  0,  0, -1,  4, $21, $1
	dsprite  0,  0,  0,  4, $22, $1

.OAMData_84:
	db 24
	dsprite -5,  0, -2,  4, $00, $1
	dsprite -5,  0, -1,  4, $01, $1
	dsprite -5,  0,  0,  4, $02, $1
	dsprite -5,  0,  1,  4, $03, $1
	dsprite -4,  0, -2,  4, $10, $1
	dsprite -4,  0, -1,  4, $11, $1
	dsprite -4,  0,  0,  4, $12, $1
	dsprite -4,  0,  1,  4, $13, $1
	dsprite -3,  0, -2,  4, $20, $1
	dsprite -3,  0, -1,  4, $21, $1
	dsprite -3,  0,  0,  4, $22, $1
	dsprite -3,  0,  1,  4, $23, $1
	dsprite -2,  0, -2,  4, $30, $1
	dsprite -2,  0, -1,  4, $31, $1
	dsprite -2,  0,  0,  4, $32, $1
	dsprite -2,  0,  1,  4, $33, $1
	dsprite -1,  0, -2,  4, $40, $1
	dsprite -1,  0, -1,  4, $41, $1
	dsprite -1,  0,  0,  4, $42, $1
	dsprite -1,  0,  1,  4, $43, $1
	dsprite  0,  0, -2,  4, $50, $1
	dsprite  0,  0, -1,  4, $51, $1
	dsprite  0,  0,  0,  4, $52, $1
	dsprite  0,  0,  1,  4, $53, $1

.OAMData_86:
	db 4
	dsprite -1,  0, -1,  0, $00, PAL_OW_BLUE
	dsprite -1,  0,  0,  0, $01, PAL_OW_BLUE
	dsprite  0,  0, -1,  0, $02, PAL_OW_BLUE
	dsprite  0,  0,  0,  0, $03,PAL_OW_BLUE
; 8e706

.OAMData_87:
	db 4
	dsprite -1,  0, -1,  0, $00, $5
	dsprite -1,  0,  0,  0, $01, $5
	dsprite  0,  0, -1,  0, $02, $5
	dsprite  0,  0,  0,  0, $03, $5
