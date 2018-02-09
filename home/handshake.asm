AskSerial:: ; 2063
; send out a handshake while serial int is off
	ld a, [wPrinterConnectionOpen]
	bit 0, a
	ret z

; if we're still interpreting data, don't try to receive
	ld a, [wPrinterOpcode]
	and a
	ret nz

; once every 6 frames
	ld hl, wHandshakeFrameDelay
	inc [hl]
	ld a, [hl]
	cp 6
	ret c

	xor a
	ld [hl], a

	ld a, $c
	ld [wPrinterOpcode], a

; handshake
	ld a, $88
	ld [rSB], a

; switch to internal clock
	ld a, $1
	ld [rSC], a

; start transfer
	ld a, START_TRANSFER_INTERNAL_CLOCK
	ld [rSC], a

	ret
; 208a
