	dw .frame1
	dw .frame2
	dw .frame3
	dw .frame4
	dw .frame5
.frame1
	db $00 ; bitmask
	db $19, $1a, $1b
.frame2
	db $01 ; bitmask
	db $1c, $1d, $1e, $1f
.frame3
	db $02 ; bitmask
	db $00, $20, $21, $1d, $22, $23
.frame4
	db $03 ; bitmask
	db $24, $25, $26, $27
.frame5
	db $04 ; bitmask
	db $28, $29, $2a, $2b
