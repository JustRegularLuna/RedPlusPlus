PikachuFramesPointers:
	dw PikachuPlainFrames
	dw PikachuFlyFrames
	dw PikachuSurfFrames
	dw PikachuPikaFrames
	dw PikachuChuchuFrames

ArbokFramesPointers:
	dw ArbokJohtoFrames
	dw ArbokKantoFrames
	dw ArbokKogaFrames
	dw ArbokAgathaFrames
	dw ArbokArianaFrames

MagikarpFramesPointers:
	dw MagikarpPlainFrames
	dw MagikarpSkellyFrames
	dw MagikarpCalico1Frames
	dw MagikarpCalico2Frames
	dw MagikarpCalico3Frames
	dw MagikarpTwoToneFrames
	dw MagikarpOrcaFrames
	dw MagikarpDapplesFrames
	dw MagikarpTigerFrames
	dw MagikarpZebraFrames
	dw MagikarpStripeFrames
	dw MagikarpBubblesFrames
	dw MagikarpForeheadFrames
	dw MagikarpMaskFrames

GyaradosFramesPointers:
rept NUM_MAGIKARP
	dw GyaradosPlainFrames
endr
	dw GyaradosRedFrames

MewtwoFramesPointers:
	dw MewtwoPlainFrames
	dw MewtwoArmoredFrames
