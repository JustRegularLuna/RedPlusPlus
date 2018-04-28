ItemPocketNames:
	dw .Item
	dw .Medicine
	dw .Ball
	dw .TM ; impossible
	dw .Berry
	dw .Key

.Item:
	db "Item Pocket@"
.Medicine:
	db "Medicine Box@"
.Ball:
	db "Ball Pocket@"
.TM:
	db "TM Case@"
.Berry:
	db "Berry Pouch@"
.Key:
	db "Key Pocket@"
