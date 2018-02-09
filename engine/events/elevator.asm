Elevator:: ; 1342d
	call .LoadPointer
	call .FindCurrentFloor
	jr c, .quit
	ld [wElevatorOriginFloor], a
	call Elevator_AskWhichFloor
	jr c, .quit
	ld hl, wElevatorOriginFloor
	cp [hl]
	jr z, .quit
	call Elevator_GoToFloor
	and a
	ret

.quit
	scf
	ret
; 1344a

.LoadPointer: ; 1344a
	ld a, b
	ld [wElevatorPointerBank], a
	ld a, e
	ld [wElevatorPointerLo], a
	ld a, d
	ld [wElevatorPointerHi], a
	ld de, CurElevator
	ld bc, 4
	ld hl, wElevatorPointerLo
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wElevatorPointerBank]
	call GetFarByte
	inc hl
	ld [de], a
	inc de
.loop
	ld a, [wElevatorPointerBank]
	call GetFarByte
	ld [de], a
	inc de
	add hl, bc
	cp -1
	jr nz, .loop
	ret
; 1347d

.FindCurrentFloor: ; 1347d
	ld hl, wElevatorPointerLo
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld a, [wElevatorPointerBank]
	call GetFarByte
	ld c, a
	inc hl
	ld a, [BackupMapGroup]
	ld d, a
	ld a, [BackupMapNumber]
	ld e, a
	ld b, 0
.loop2
	ld a, [wElevatorPointerBank]
	call GetFarByte
	cp -1
	jr z, .fail
	inc hl
	inc hl
	ld a, [wElevatorPointerBank]
	call GetFarByte
	inc hl
	cp d
	jr nz, .next1
	ld a, [wElevatorPointerBank]
	call GetFarByte
	inc hl
	cp e
	jr nz, .next2
	jr .done

.next1
	inc hl
.next2
	inc b
	jr .loop2

.done
	xor a
	ld a, b
	ret

.fail
	scf
	ret
; 134c0

Elevator_GoToFloor: ; 134c0
	push af
	ld hl, wElevatorPointerLo
	ld a, [hli]
	ld h, [hl]
	ld l, a
	inc hl
	pop af
	ld bc, 4
	call AddNTimes
	inc hl
	ld de, BackupWarpNumber
	ld a, [wElevatorPointerBank]
	ld bc, 3
	jp FarCopyBytes
; 134dd

Elevator_AskWhichFloor: ; 134dd
	call LoadStandardMenuDataHeader
	ld hl, Elevator_WhichFloorText
	call PrintText
	call Elevator_GetCurrentFloorText
	ld hl, Elevator_MenuDataHeader
	call CopyMenuDataHeader
	call InitScrollingMenu
	call UpdateSprites
	xor a
	ld [wMenuScrollPosition], a
	call ScrollingMenu
	call CloseWindow
	ld a, [wMenuJoypad]
	cp B_BUTTON
	jr z, .cancel
	xor a
	ld a, [wScrollingMenuCursorPosition]
	ret

.cancel
	scf
	ret
; 1350d

Elevator_WhichFloorText: ; 0x1350d
	; Which floor?
	text_jump UnknownText_0x1bd2bc
	db "@"
; 0x13512


Elevator_GetCurrentFloorText: ; 13512
	ld hl, Options1
	ld a, [hl]
	push af
	set NO_TEXT_SCROLL, [hl]
	hlcoord 0, 0
	lb bc, 4, 8
	call TextBox
	hlcoord 1, 2
	ld de, Elevator_CurrentFloorText
	call PlaceString
	hlcoord 4, 4
	call Elevator_GetCurrentFloorString
	pop af
	ld [Options1], a
	ret
; 13537

Elevator_CurrentFloorText: ; 13537
	db "Now on:@"
; 1353f


Elevator_GetCurrentFloorString: ; 1353f
	push hl
	ld a, [wElevatorOriginFloor]
	ld e, a
	ld d, 0
	ld hl, CurElevatorFloors
	add hl, de
	ld a, [hl]
	pop de
	jp GetFloorString
; 13550

Elevator_MenuDataHeader: ; 0x13550
	db $40 ; flags
	db 01, 12 ; start coords
	db 09, 18 ; end coords
	dw Elevator_MenuData2
	db 1 ; default option
; 0x13558

Elevator_MenuData2: ; 0x13558
	db $10 ; flags
	db 4, 0 ; rows, columns
	db 1 ; horizontal spacing
	dbw 0, CurElevator
	dba GetElevatorFlorStrings
	dba NULL
	dba NULL
; 13568

GetElevatorFlorStrings: ; 13568
	ld a, [MenuSelection]
GetFloorString: ; 1356b
	push de
	call FloorToString
	ld d, h
	ld e, l
	pop hl
	jp PlaceString
; 13575

FloorToString: ; 13575
	push de
	ld e, a
	ld d, 0
	ld hl, ElevatorFloorNames
	add hl, de
	add hl, de
	ld a, [hli]
	ld h, [hl]
	ld l, a
	pop de
	ret
; 13583

INCLUDE "data/events/elevator_floors.asm"
