RTC:: ; 46f
; update time and time-sensitive palettes

; rtc enabled?
	ld a, [wSpriteUpdatesEnabled]
	and a
	ret z

	call UpdateTime

; obj update on?
	ld a, [wVramState]
	bit 0, a ; obj update
	ret z

TimeOfDayPals:: ; 47e
	farjp _TimeOfDayPals
; 485

UpdateTimePals:: ; 485
	farjp _UpdateTimePals
; 48c
