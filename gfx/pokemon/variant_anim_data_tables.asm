VariantSpeciesTable:
	db PIKACHU
	db ARBOK
	db MAGIKARP
	db GYARADOS
	db MEWTWO
	db -1

VariantAnimPointerTable:
	dbbww PIKACHU, BANK(PikachuAnimations), PikachuAnimationPointers, PikachuAnimationExtraPointers
	dbbww ARBOK, BANK(ArbokAnimations), ArbokAnimationPointers, ArbokAnimationExtraPointers
	dbbww MAGIKARP, BANK(MagikarpAnimations), MagikarpAnimationPointers, MagikarpAnimationExtraPointers
	dbbww GYARADOS, BANK(GyaradosAnimations), GyaradosAnimationPointers, GyaradosAnimationExtraPointers
	dbbww MEWTWO, BANK(MewtwoAnimations), MewtwoAnimationPointers, MewtwoAnimationExtraPointers
	dbbww -1, BANK(PicAnimations), AnimationPointers, AnimationExtraPointers

VariantFramesPointerTable:
	dbbba PIKACHU, BANK(PikachusFrames), PikachuFramesPointers
	dbbba ARBOK, BANK(ArboksFrames), ArbokFramesPointers
	dbbba MAGIKARP, BANK(MagikarpsFrames), MagikarpFramesPointers
	dbbba GYARADOS, BANK(GyaradossFrames), GyaradosFramesPointers
	dbbba MEWTWO, BANK(MewtwosFrames), MewtwoFramesPointers
	dbbba -1, BANK(KantoFrames), FramesPointers

VariantBitmasksPointerTable:
	dbba PIKACHU, PikachuBitmasksPointers
	dbba ARBOK, ArbokBitmasksPointers
	dbba MAGIKARP, MagikarpBitmasksPointers
	dbba GYARADOS, GyaradosBitmasksPointers
	dbba MEWTWO, MewtwoBitmasksPointers
	dbba -1, BitmasksPointers
