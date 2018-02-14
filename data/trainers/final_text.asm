GetFinalPkmnTextPointer::
; TODO: Add these later
; no final text
	xor a
	and a
	ret

; if there is final text, scf and ret the text in hl
