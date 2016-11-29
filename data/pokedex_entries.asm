PokedexEntryPointers: ; 4047e (10:447e)
dw BulbasaurDexEntry
dw IvysaurDexEntry
dw VenusaurDexEntry
dw CharmanderDexEntry
dw CharmeleonDexEntry
dw CharizardDexEntry
dw SquirtleDexEntry
dw WartortleDexEntry
dw BlastoiseDexEntry
dw CaterpieDexEntry
dw MetapodDexEntry
dw ButterfreeDexEntry
dw WeedleDexEntry
dw KakunaDexEntry
dw BeedrillDexEntry
dw PidgeyDexEntry
dw PidgeottoDexEntry
dw PidgeotDexEntry
dw RattataDexEntry
dw RaticateDexEntry
dw SpearowDexEntry
dw FearowDexEntry
dw EkansDexEntry
dw ArbokDexEntry
dw PikachuDexEntry
dw RaichuDexEntry
dw SandshrewDexEntry
dw SandslashDexEntry
dw NidoranFDexEntry
dw NidorinaDexEntry
dw NidoqueenDexEntry
dw NidoranMDexEntry
dw NidorinoDexEntry
dw NidokingDexEntry
dw ClefairyDexEntry
dw ClefableDexEntry
dw VulpixDexEntry
dw NinetalesDexEntry
dw JigglypuffDexEntry
dw WigglytuffDexEntry
dw ZubatDexEntry
dw GolbatDexEntry
dw OddishDexEntry
dw GloomDexEntry
dw VileplumeDexEntry
dw ParasDexEntry
dw ParasectDexEntry
dw VenonatDexEntry
dw VenomothDexEntry
dw DiglettDexEntry
dw DugtrioDexEntry
dw MeowthDexEntry
dw PersianDexEntry
dw PsyduckDexEntry
dw GolduckDexEntry
dw MankeyDexEntry
dw PrimeapeDexEntry
dw GrowlitheDexEntry
dw ArcanineDexEntry
dw PoliwagDexEntry
dw PoliwhirlDexEntry
dw PoliwrathDexEntry
dw AbraDexEntry
dw KadabraDexEntry
dw AlakazamDexEntry
dw MachopDexEntry
dw MachokeDexEntry
dw MachampDexEntry
dw BellsproutDexEntry
dw WeepinbellDexEntry
dw VictreebelDexEntry
dw TentacoolDexEntry
dw TentacruelDexEntry
dw GeodudeDexEntry
dw GravelerDexEntry
dw GolemDexEntry
dw PonytaDexEntry
dw RapidashDexEntry
dw SlowpokeDexEntry
dw SlowbroDexEntry
dw MagnemiteDexEntry
dw MagnetonDexEntry
dw FarfetchdDexEntry
dw DoduoDexEntry
dw DodrioDexEntry
dw SeelDexEntry
dw DewgongDexEntry
dw GrimerDexEntry
dw MukDexEntry
dw ShellderDexEntry
dw CloysterDexEntry
dw GastlyDexEntry
dw HaunterDexEntry
dw GengarDexEntry
dw OnixDexEntry
dw DrowzeeDexEntry
dw HypnoDexEntry
dw KrabbyDexEntry
dw KinglerDexEntry
dw VoltorbDexEntry
dw ElectrodeDexEntry
dw ExeggcuteDexEntry
dw ExeggutorDexEntry
dw CuboneDexEntry
dw MarowakDexEntry
dw HitmonleeDexEntry
dw HitmonchanDexEntry
dw LickitungDexEntry
dw KoffingDexEntry
dw WeezingDexEntry
dw RhyhornDexEntry
dw RhydonDexEntry
dw ChanseyDexEntry
dw TangelaDexEntry
dw KangaskhanDexEntry
dw HorseaDexEntry
dw SeadraDexEntry
dw GoldeenDexEntry
dw SeakingDexEntry
dw StaryuDexEntry
dw StarmieDexEntry
dw MrMimeDexEntry
dw ScytherDexEntry
dw JynxDexEntry
dw ElectabuzzDexEntry
dw MagmarDexEntry
dw PinsirDexEntry
dw TaurosDexEntry
dw MagikarpDexEntry
dw GyaradosDexEntry
dw LaprasDexEntry
dw DittoDexEntry
dw EeveeDexEntry
dw VaporeonDexEntry
dw JolteonDexEntry
dw FlareonDexEntry
dw PorygonDexEntry
dw OmanyteDexEntry
dw OmastarDexEntry
dw KabutoDexEntry
dw KabutopsDexEntry
dw AerodactylDexEntry
dw SnorlaxDexEntry
dw ArticunoDexEntry
dw ZapdosDexEntry
dw MoltresDexEntry
dw DratiniDexEntry
dw DragonairDexEntry
dw DragoniteDexEntry
dw MewtwoDexEntry
dw MewDexEntry
dw LugiaDexEntry
dw HoundourDexEntry
dw HoundoomDexEntry
dw MurkrowDexEntry
dw HonchkrowDexEntry
dw HeracrossDexEntry
dw EspeonDexEntry
dw UmbreonDexEntry
dw GlaceonDexEntry
dw LeafeonDexEntry
dw SylveonDexEntry
dw ScizorDexEntry
dw SteelixDexEntry
dw CrobatDexEntry
dw PolitoedDexEntry
dw SlowkingDexEntry
dw BellossomDexEntry
dw KingdraDexEntry
dw BlisseyDexEntry
dw Porygon2DexEntry
dw PorygonZDexEntry
dw MagmortarDexEntry
dw ElectivireDexEntry
dw MagnezoneDexEntry
dw RhyperiorDexEntry
dw TangrowthDexEntry
dw LickilickyDexEntry
dw TogepiDexEntry
dw TogeticDexEntry
dw TogekissDexEntry
dw SneaselDexEntry
dw WeavileDexEntry
dw SkarmoryDexEntry
dw MisdreavusDexEntry
dw MismagiusDexEntry
dw MiltankDexEntry
dw ChinchouDexEntry
dw LanturnDexEntry
dw SlugmaDexEntry
dw MagcargoDexEntry
dw TorkoalDexEntry
dw LatiasDexEntry
dw LatiosDexEntry
dw HitmontopDexEntry
dw TyrogueDexEntry
dw PichuDexEntry
dw CleffaDexEntry
dw IgglybuffDexEntry
dw SmoochumDexEntry
dw ElekidDexEntry
dw MagbyDexEntry
dw MimeJrDexEntry
dw HappinyDexEntry
dw MunchlaxDexEntry


; string: species name
; height in feet, inches
; weight in pounds
; text entry

RhydonDexEntry: ; 405fa (10:45fa)
	db "Drill@"
	db 6,3
	dw 2650
	TX_FAR _RhydonDexEntry
	db "@"

KangaskhanDexEntry: ; 40609 (10:4609)
	db "Parent@"
	db 7,3
	dw 1760
	TX_FAR _KangaskhanDexEntry
	db "@"

NidoranMDexEntry: ; 40619 (10:4619)
	db "Poison Pin@"
	db 1,8
	dw 200
	TX_FAR _NidoranMDexEntry
	db "@"

ClefairyDexEntry: ; 4062d (10:462d)
	db "Fairy@"
	db 2,0
	dw 170
	TX_FAR _ClefairyDexEntry
	db "@"

SpearowDexEntry: ; 4063c (10:463c)
	db "Tiny Bird@"
	db 1,0
	dw 40
	TX_FAR _SpearowDexEntry
	db "@"

VoltorbDexEntry: ; 4064f (10:464f)
	db "Ball@"
	db 1,8
	dw 230
	TX_FAR _VoltorbDexEntry
	db "@"

NidokingDexEntry: ; 4065d (10:465d)
	db "Drill@"
	db 4,7
	dw 1370
	TX_FAR _NidokingDexEntry
	db "@"

SlowbroDexEntry: ; 4066c (10:466c)
	db "HermitCrab@"
	db 5,3
	dw 1730
	TX_FAR _SlowbroDexEntry
	db "@"

IvysaurDexEntry: ; 40680 (10:4680)
	db "Seed@"
	db 3,3
	dw 290
	TX_FAR _IvysaurDexEntry
	db "@"

ExeggutorDexEntry: ; 4068e (10:468e)
	db "Coconut@"
	db 6,7
	dw 2650
	TX_FAR _ExeggutorDexEntry
	db "@"

LickitungDexEntry: ; 4069f (10:469f)
	db "Licking@"
	db 3,11
	dw 1440
	TX_FAR _LickitungDexEntry
	db "@"

ExeggcuteDexEntry: ; 406b0 (10:46b0)
	db "Egg@"
	db 1,4
	dw 60
	TX_FAR _ExeggcuteDexEntry
	db "@"

GrimerDexEntry: ; 406bd (10:46bd)
	db "Sludge@"
	db 2,11
	dw 660
	TX_FAR _GrimerDexEntry
	db "@"

GengarDexEntry: ; 406cd (10:46cd)
	db "Shadow@"
	db 4,11
	dw 890
	TX_FAR _GengarDexEntry
	db "@"

NidoranFDexEntry: ; 406dd (10:46dd)
	db "Poison Pin@"
	db 1,4
	dw 150
	TX_FAR _NidoranFDexEntry
	db "@"

NidoqueenDexEntry: ; 406f1 (10:46f1)
	db "Drill@"
	db 4,3
	dw 1320
	TX_FAR _NidoqueenDexEntry
	db "@"

CuboneDexEntry: ; 40700 (10:4700)
	db "Lonely@"
	db 1,4
	dw 140
	TX_FAR _CuboneDexEntry
	db "@"

RhyhornDexEntry: ; 40710 (10:4710)
	db "Spikes@"
	db 3,3
	dw 2540
	TX_FAR _RhyhornDexEntry
	db "@"

LaprasDexEntry: ; 40720 (10:4720)
	db "Transport@"
	db 8,2
	dw 4850
	TX_FAR _LaprasDexEntry
	db "@"

ArcanineDexEntry: ; 40733 (10:4733)
	db "Legendary@"
	db 6,3
	dw 3420
	TX_FAR _ArcanineDexEntry
	db "@"

MewDexEntry: ; 40746 (10:4746)
	db "New Specie@"
	db 1,4
	dw 90
	TX_FAR _MewDexEntry
	db "@"

GyaradosDexEntry: ; 4075a (10:475a)
	db "Atrocious@"
	db 21,4
	dw 5180
	TX_FAR _GyaradosDexEntry
	db "@"

ShellderDexEntry: ; 4076d (10:476d)
	db "Bivalve@"
	db 1,0
	dw 90
	TX_FAR _ShellderDexEntry
	db "@"

TentacoolDexEntry: ; 4077e (10:477e)
	db "Jellyfish@"
	db 2,11
	dw 1000
	TX_FAR _TentacoolDexEntry
	db "@"

GastlyDexEntry: ; 40791 (10:4791)
	db "Gas@"
	db 4,3
	dw 2
	TX_FAR _GastlyDexEntry
	db "@"

ScytherDexEntry: ; 4079e (10:479e)
	db "Mantis@"
	db 4,11
	dw 1230
	TX_FAR _ScytherDexEntry
	db "@"

StaryuDexEntry: ; 407ae (10:47ae)
	db "StarShape@"
	db 2,7
	dw 760
	TX_FAR _StaryuDexEntry
	db "@"

BlastoiseDexEntry: ; 407c1 (10:47c1)
	db "Shellfish@"
	db 5,3
	dw 1890
	TX_FAR _BlastoiseDexEntry
	db "@"

PinsirDexEntry: ; 407d4 (10:47d4)
	db "StagBeetle@"
	db 4,11
	dw 1210
	TX_FAR _PinsirDexEntry
	db "@"

TangelaDexEntry: ; 407e8 (10:47e8)
	db "Vine@"
	db 3,3
	dw 770
	TX_FAR _TangelaDexEntry
	db "@"

GrowlitheDexEntry: ; 407f6 (10:47f6)
	db "Puppy@"
	db 2,4
	dw 420
	TX_FAR _GrowlitheDexEntry
	db "@"

OnixDexEntry: ; 40805 (10:4805)
	db "Rock Snake@"
	db 28,10
	dw 4630
	TX_FAR _OnixDexEntry
	db "@"

FearowDexEntry: ; 40819 (10:4819)
	db "Beak@"
	db 3,11
	dw 840
	TX_FAR _FearowDexEntry
	db "@"

PidgeyDexEntry: ; 40827 (10:4827)
	db "Tiny Bird@"
	db 1,0
	dw 40
	TX_FAR _PidgeyDexEntry
	db "@"

SlowpokeDexEntry: ; 4083a (10:483a)
	db "Dopey@"
	db 3,11
	dw 790
	TX_FAR _SlowpokeDexEntry
	db "@"

KadabraDexEntry: ; 40849 (10:4849)
	db "PSI@"
	db 4,3
	dw 1250
	TX_FAR _KadabraDexEntry
	db "@"

GravelerDexEntry: ; 40856 (10:4856)
	db "Rock@"
	db 3,3
	dw 2320
	TX_FAR _GravelerDexEntry
	db "@"

ChanseyDexEntry: ; 40864 (10:4864)
	db "Egg@"
	db 3,7
	dw 760
	TX_FAR _ChanseyDexEntry
	db "@"

MachokeDexEntry: ; 40871 (10:4871)
	db "Superpower@"
	db 4,11
	dw 1550
	TX_FAR _MachokeDexEntry
	db "@"

MrMimeDexEntry: ; 40885 (10:4885)
	db "Barrier@"
	db 4,3
	dw 1200
	TX_FAR _MrMimeDexEntry
	db "@"

HitmonleeDexEntry: ; 40896 (10:4896)
	db "Kicking@"
	db 4,11
	dw 1100
	TX_FAR _HitmonleeDexEntry
	db "@"

HitmonchanDexEntry: ; 408a7 (10:48a7)
	db "Punching@"
	db 4,7
	dw 1110
	TX_FAR _HitmonchanDexEntry
	db "@"

ArbokDexEntry: ; 408b9 (10:48b9)
	db "Cobra@"
	db 11,6
	dw 1430
	TX_FAR _ArbokDexEntry
	db "@"

ParasectDexEntry: ; 408c8 (10:48c8)
	db "Mushroom@"
	db 3,3
	dw 650
	TX_FAR _ParasectDexEntry
	db "@"

PsyduckDexEntry: ; 408da (10:48da)
	db "Duck@"
	db 2,7
	dw 430
	TX_FAR _PsyduckDexEntry
	db "@"

DrowzeeDexEntry: ; 408e8 (10:48e8)
	db "Hypnosis@"
	db 3,3
	dw 710
	TX_FAR _DrowzeeDexEntry
	db "@"

GolemDexEntry: ; 408fa (10:48fa)
	db "Megaton@"
	db 4,7
	dw 6620
	TX_FAR _GolemDexEntry
	db "@"

MagmarDexEntry: ; 4090b (10:490b)
	db "Spitfire@"
	db 4,3
	dw 980
	TX_FAR _MagmarDexEntry
	db "@"

ElectabuzzDexEntry: ; 4091d (10:491d)
	db "Electric@"
	db 3,7
	dw 660
	TX_FAR _ElectabuzzDexEntry
	db "@"

MagnetonDexEntry: ; 4092f (10:492f)
	db "Magnet@"
	db 3,3
	dw 1320
	TX_FAR _MagnetonDexEntry
	db "@"

KoffingDexEntry: ; 4093f (10:493f)
	db "Poison Gas@"
	db 2,0
	dw 20
	TX_FAR _KoffingDexEntry
	db "@"

MankeyDexEntry: ; 40953 (10:4953)
	db "Pig Monkey@"
	db 1,8
	dw 620
	TX_FAR _MankeyDexEntry
	db "@"

SeelDexEntry: ; 40967 (10:4967)
	db "Sea Lion@"
	db 3,7
	dw 1980
	TX_FAR _SeelDexEntry
	db "@"

DiglettDexEntry: ; 40979 (10:4979)
	db "Mole@"
	db 0,8
	dw 20
	TX_FAR _DiglettDexEntry
	db "@"

TaurosDexEntry: ; 40987 (10:4987)
	db "Wild Bull@"
	db 4,7
	dw 1950
	TX_FAR _TaurosDexEntry
	db "@"

FarfetchdDexEntry: ; 4099a (10:499a)
	db "Wild Duck@"
	db 2,7
	dw 330
	TX_FAR _FarfetchdDexEntry
	db "@"

VenonatDexEntry: ; 409ad (10:49ad)
	db "Insect@"
	db 3,3
	dw 660
	TX_FAR _VenonatDexEntry
	db "@"

DragoniteDexEntry: ; 409bd (10:49bd)
	db "Dragon@"
	db 7,3
	dw 4630
	TX_FAR _DragoniteDexEntry
	db "@"

DoduoDexEntry: ; 409cd (10:49cd)
	db "Twin Bird@"
	db 4,7
	dw 860
	TX_FAR _DoduoDexEntry
	db "@"

PoliwagDexEntry: ; 409e0 (10:49e0)
	db "Tadpole@"
	db 2,0
	dw 270
	TX_FAR _PoliwagDexEntry
	db "@"

JynxDexEntry: ; 409f1 (10:49f1)
	db "HumanShape@"
	db 4,7
	dw 900
	TX_FAR _JynxDexEntry
	db "@"

MoltresDexEntry: ; 40a05 (10:4a05)
	db "Flame@"
	db 6,7
	dw 1320
	TX_FAR _MoltresDexEntry
	db "@"

ArticunoDexEntry: ; 40a14 (10:4a14)
	db "Freeze@"
	db 5,7
	dw 1220
	TX_FAR _ArticunoDexEntry
	db "@"

ZapdosDexEntry: ; 40a24 (10:4a24)
	db "Electric@"
	db 5,3
	dw 1160
	TX_FAR _ZapdosDexEntry
	db "@"

DittoDexEntry: ; 40a36 (10:4a36)
	db "Transform@"
	db 1,0
	dw 90
	TX_FAR _DittoDexEntry
	db "@"

MeowthDexEntry: ; 40a49 (10:4a49)
	db "ScratchCat@"
	db 1,4
	dw 90
	TX_FAR _MeowthDexEntry
	db "@"

KrabbyDexEntry: ; 40a5d (10:4a5d)
	db "River Crab@"
	db 1,4
	dw 140
	TX_FAR _KrabbyDexEntry
	db "@"

VulpixDexEntry: ; 40a71 (10:4a71)
	db "Fox@"
	db 2,0
	dw 220
	TX_FAR _VulpixDexEntry
	db "@"

NinetalesDexEntry: ; 40a7e (10:4a7e)
	db "Fox@"
	db 3,7
	dw 440
	TX_FAR _NinetalesDexEntry
	db "@"

PikachuDexEntry: ; 40a8b (10:4a8b)
	db "Mouse@"
	db 1,4
	dw 130
	TX_FAR _PikachuDexEntry
	db "@"

RaichuDexEntry: ; 40a9a (10:4a9a)
	db "Mouse@"
	db 2,7
	dw 660
	TX_FAR _RaichuDexEntry
	db "@"

DratiniDexEntry: ; 40aa9 (10:4aa9)
	db "Dragon@"
	db 5,11
	dw 70
	TX_FAR _DratiniDexEntry
	db "@"

DragonairDexEntry: ; 40ab9 (10:4ab9)
	db "Dragon@"
	db 13,1
	dw 360
	TX_FAR _DragonairDexEntry
	db "@"

KabutoDexEntry: ; 40ac9 (10:4ac9)
	db "Shellfish@"
	db 1,8
	dw 250
	TX_FAR _KabutoDexEntry
	db "@"

KabutopsDexEntry: ; 40adc (10:4adc)
	db "Shellfish@"
	db 4,3
	dw 890
	TX_FAR _KabutopsDexEntry
	db "@"

HorseaDexEntry: ; 40aef (10:4aef)
	db "Dragon@"
	db 1,4
	dw 180
	TX_FAR _HorseaDexEntry
	db "@"

SeadraDexEntry: ; 40aff (10:4aff)
	db "Dragon@"
	db 3,11
	dw 550
	TX_FAR _SeadraDexEntry
	db "@"

SandshrewDexEntry: ; 40b0f (10:4b0f)
	db "Mouse@"
	db 2,0
	dw 260
	TX_FAR _SandshrewDexEntry
	db "@"

SandslashDexEntry: ; 40b1e (10:4b1e)
	db "Mouse@"
	db 3,3
	dw 650
	TX_FAR _SandslashDexEntry
	db "@"

OmanyteDexEntry: ; 40b2d (10:4b2d)
	db "Spiral@"
	db 1,4
	dw 170
	TX_FAR _OmanyteDexEntry
	db "@"

OmastarDexEntry: ; 40b3d (10:4b3d)
	db "Spiral@"
	db 3,3
	dw 770
	TX_FAR _OmastarDexEntry
	db "@"

JigglypuffDexEntry: ; 40b4d (10:4b4d)
	db "Balloon@"
	db 1,8
	dw 120
	TX_FAR _JigglypuffDexEntry
	db "@"

WigglytuffDexEntry: ; 40b5e (10:4b5e)
	db "Balloon@"
	db 3,3
	dw 260
	TX_FAR _WigglytuffDexEntry
	db "@"

EeveeDexEntry: ; 40b6f (10:4b6f)
	db "Evolution@"
	db 1,0
	dw 140
	TX_FAR _EeveeDexEntry
	db "@"

FlareonDexEntry: ; 40b82 (10:4b82)
	db "Flame@"
	db 2,11
	dw 550
	TX_FAR _FlareonDexEntry
	db "@"

JolteonDexEntry: ; 40b91 (10:4b91)
	db "Lightning@"
	db 2,7
	dw 540
	TX_FAR _JolteonDexEntry
	db "@"

VaporeonDexEntry: ; 40ba4 (10:4ba4)
	db "Bubble Jet@"
	db 3,3
	dw 640
	TX_FAR _VaporeonDexEntry
	db "@"

MachopDexEntry: ; 40bb8 (10:4bb8)
	db "Superpower@"
	db 2,7
	dw 430
	TX_FAR _MachopDexEntry
	db "@"

ZubatDexEntry: ; 40bcc (10:4bcc)
	db "Bat@"
	db 2,7
	dw 170
	TX_FAR _ZubatDexEntry
	db "@"

EkansDexEntry: ; 40bd9 (10:4bd9)
	db "Snake@"
	db 6,7
	dw 150
	TX_FAR _EkansDexEntry
	db "@"

ParasDexEntry: ; 40be8 (10:4be8)
	db "Mushroom@"
	db 1,0
	dw 120
	TX_FAR _ParasDexEntry
	db "@"

PoliwhirlDexEntry: ; 40bfa (10:4bfa)
	db "Tadpole@"
	db 3,3
	dw 440
	TX_FAR _PoliwhirlDexEntry
	db "@"

PoliwrathDexEntry: ; 40c0b (10:4c0b)
	db "Tadpole@"
	db 4,3
	dw 1190
	TX_FAR _PoliwrathDexEntry
	db "@"

WeedleDexEntry: ; 40c1c (10:4c1c)
	db "Hairy Bug@"
	db 1,0
	dw 70
	TX_FAR _WeedleDexEntry
	db "@"

KakunaDexEntry: ; 40c2f (10:4c2f)
	db "Cocoon@"
	db 2,0
	dw 220
	TX_FAR _KakunaDexEntry
	db "@"

BeedrillDexEntry: ; 40c3f (10:4c3f)
	db "Poison Bee@"
	db 3,3
	dw 650
	TX_FAR _BeedrillDexEntry
	db "@"

DodrioDexEntry: ; 40c53 (10:4c53)
	db "TripleBird@"
	db 5,11
	dw 1880
	TX_FAR _DodrioDexEntry
	db "@"

PrimeapeDexEntry: ; 40c67 (10:4c67)
	db "Pig Monkey@"
	db 3,3
	dw 710
	TX_FAR _PrimeapeDexEntry
	db "@"

DugtrioDexEntry: ; 40c7b (10:4c7b)
	db "Mole@"
	db 2,4
	dw 730
	TX_FAR _DugtrioDexEntry
	db "@"

VenomothDexEntry: ; 40c89 (10:4c89)
	db "PoisonMoth@"
	db 4,11
	dw 280
	TX_FAR _VenomothDexEntry
	db "@"

DewgongDexEntry: ; 40c9d (10:4c9d)
	db "Sea Lion@"
	db 5,7
	dw 2650
	TX_FAR _DewgongDexEntry
	db "@"

CaterpieDexEntry: ; 40caf (10:4caf)
	db "Worm@"
	db 1,0
	dw 60
	TX_FAR _CaterpieDexEntry
	db "@"

MetapodDexEntry: ; 40cbd (10:4cbd)
	db "Cocoon@"
	db 2,4
	dw 220
	TX_FAR _MetapodDexEntry
	db "@"

ButterfreeDexEntry: ; 40ccd (10:4ccd)
	db "Butterfly@"
	db 3,7
	dw 710
	TX_FAR _ButterfreeDexEntry
	db "@"

MachampDexEntry: ; 40ce0 (10:4ce0)
	db "Superpower@"
	db 5,3
	dw 2870
	TX_FAR _MachampDexEntry
	db "@"

GolduckDexEntry: ; 40cf4 (10:4cf4)
	db "Duck@"
	db 5,7
	dw 1690
	TX_FAR _GolduckDexEntry
	db "@"

HypnoDexEntry: ; 40d02 (10:4d02)
	db "Hypnosis@"
	db 5,3
	dw 1670
	TX_FAR _HypnoDexEntry
	db "@"

GolbatDexEntry: ; 40d14 (10:4d14)
	db "Bat@"
	db 5,3
	dw 1210
	TX_FAR _GolbatDexEntry
	db "@"

MewtwoDexEntry: ; 40d21 (10:4d21)
	db "Genetic@"
	db 6,7
	dw 2690
	TX_FAR _MewtwoDexEntry
	db "@"

SnorlaxDexEntry: ; 40d32 (10:4d32)
	db "Sleeping@"
	db 6,11
	dw 10140
	TX_FAR _SnorlaxDexEntry
	db "@"

MagikarpDexEntry: ; 40d44 (10:4d44)
	db "Fish@"
	db 2,11
	dw 220
	TX_FAR _MagikarpDexEntry
	db "@"

MukDexEntry: ; 40d52 (10:4d52)
	db "Sludge@"
	db 3,11
	dw 660
	TX_FAR _MukDexEntry
	db "@"

KinglerDexEntry: ; 40d62 (10:4d62)
	db "Pincer@"
	db 4,3
	dw 1320
	TX_FAR _KinglerDexEntry
	db "@"

CloysterDexEntry: ; 40d72 (10:4d72)
	db "Bivalve@"
	db 4,11
	dw 2920
	TX_FAR _CloysterDexEntry
	db "@"

ElectrodeDexEntry: ; 40d83 (10:4d83)
	db "Ball@"
	db 3,11
	dw 1470
	TX_FAR _ElectrodeDexEntry
	db "@"

ClefableDexEntry: ; 40d91 (10:4d91)
	db "Fairy@"
	db 4,3
	dw 880
	TX_FAR _ClefableDexEntry
	db "@"

WeezingDexEntry: ; 40da0 (10:4da0)
	db "Poison Gas@"
	db 3,11
	dw 210
	TX_FAR _WeezingDexEntry
	db "@"

PersianDexEntry: ; 40db4 (10:4db4)
	db "Classy Cat@"
	db 3,3
	dw 710
	TX_FAR _PersianDexEntry
	db "@"

MarowakDexEntry: ; 40dc8 (10:4dc8)
	db "BoneKeeper@"
	db 3,3
	dw 990
	TX_FAR _MarowakDexEntry
	db "@"

HaunterDexEntry: ; 40ddc (10:4ddc)
	db "Gas@"
	db 5,3
	dw 2
	TX_FAR _HaunterDexEntry
	db "@"

AbraDexEntry: ; 40de9 (10:4de9)
	db "PSI@"
	db 2,11
	dw 430
	TX_FAR _AbraDexEntry
	db "@"

AlakazamDexEntry: ; 40df6 (10:4df6)
	db "PSI@"
	db 4,11
	dw 1060
	TX_FAR _AlakazamDexEntry
	db "@"

PidgeottoDexEntry: ; 40e03 (10:4e03)
	db "Bird@"
	db 3,7
	dw 660
	TX_FAR _PidgeottoDexEntry
	db "@"

PidgeotDexEntry: ; 40e11 (10:4e11)
	db "Bird@"
	db 4,11
	dw 870
	TX_FAR _PidgeotDexEntry
	db "@"

StarmieDexEntry: ; 40e1f (10:4e1f)
	db "Mysterious@"
	db 3,7
	dw 1760
	TX_FAR _StarmieDexEntry
	db "@"

BulbasaurDexEntry: ; 40e33 (10:4e33)
	db "Seed@"
	db 2,4
	dw 150
	TX_FAR _BulbasaurDexEntry
	db "@"

VenusaurDexEntry: ; 40e41 (10:4e41)
	db "Seed@"
	db 6,7
	dw 2210
	TX_FAR _VenusaurDexEntry
	db "@"

TentacruelDexEntry: ; 40e4f (10:4e4f)
	db "Jellyfish@"
	db 5,3
	dw 1210
	TX_FAR _TentacruelDexEntry
	db "@"

GoldeenDexEntry: ; 40e62 (10:4e62)
	db "Goldfish@"
	db 2,0
	dw 330
	TX_FAR _GoldeenDexEntry
	db "@"

SeakingDexEntry: ; 40e74 (10:4e74)
	db "Goldfish@"
	db 4,3
	dw 860
	TX_FAR _SeakingDexEntry
	db "@"

PonytaDexEntry: ; 40e86 (10:4e86)
	db "Fire Horse@"
	db 3,3
	dw 660
	TX_FAR _PonytaDexEntry
	db "@"

RapidashDexEntry: ; 40e9a (10:4e9a)
	db "Fire Horse@"
	db 5,7
	dw 2090
	TX_FAR _RapidashDexEntry
	db "@"

RattataDexEntry: ; 40eae (10:4eae)
	db "Rat@"
	db 1,0
	dw 80
	TX_FAR _RattataDexEntry
	db "@"

RaticateDexEntry: ; 40ebb (10:4ebb)
	db "Rat@"
	db 2,4
	dw 410
	TX_FAR _RaticateDexEntry
	db "@"

NidorinoDexEntry: ; 40ec8 (10:4ec8)
	db "Poison Pin@"
	db 2,11
	dw 430
	TX_FAR _NidorinoDexEntry
	db "@"

NidorinaDexEntry: ; 40edc (10:4edc)
	db "Poison Pin@"
	db 2,7
	dw 440
	TX_FAR _NidorinaDexEntry
	db "@"

GeodudeDexEntry: ; 40ef0 (10:4ef0)
	db "Rock@"
	db 1,4
	dw 440
	TX_FAR _GeodudeDexEntry
	db "@"

PorygonDexEntry: ; 40efe (10:4efe)
	db "Virtual@"
	db 2,7
	dw 800
	TX_FAR _PorygonDexEntry
	db "@"

AerodactylDexEntry: ; 40f0f (10:4f0f)
	db "Fossil@"
	db 5,11
	dw 1300
	TX_FAR _AerodactylDexEntry
	db "@"

MagnemiteDexEntry: ; 40f1f (10:4f1f)
	db "Magnet@"
	db 1,0
	dw 130
	TX_FAR _MagnemiteDexEntry
	db "@"

CharmanderDexEntry: ; 40f2f (10:4f2f)
	db "Lizard@"
	db 2,0
	dw 190
	TX_FAR _CharmanderDexEntry
	db "@"

SquirtleDexEntry: ; 40f3f (10:4f3f)
	db "TinyTurtle@"
	db 1,8
	dw 200
	TX_FAR _SquirtleDexEntry
	db "@"

CharmeleonDexEntry: ; 40f53 (10:4f53)
	db "Flame@"
	db 3,7
	dw 420
	TX_FAR _CharmeleonDexEntry
	db "@"

WartortleDexEntry: ; 40f62 (10:4f62)
	db "Turtle@"
	db 3,3
	dw 500
	TX_FAR _WartortleDexEntry
	db "@"

CharizardDexEntry: ; 40f72 (10:4f72)
	db "Flame@"
	db 5,7
	dw 2000
	TX_FAR _CharizardDexEntry
	db "@"

OddishDexEntry: ; 40f81 (10:4f81)
	db "Weed@"
	db 1,8
	dw 120
	TX_FAR _OddishDexEntry
	db "@"

GloomDexEntry: ; 40f8f (10:4f8f)
	db "Weed@"
	db 2,7
	dw 190
	TX_FAR _GloomDexEntry
	db "@"

VileplumeDexEntry: ; 40f9d (10:4f9d)
	db "Flower@"
	db 3,11
	dw 410
	TX_FAR _VileplumeDexEntry
	db "@"

BellsproutDexEntry: ; 40fad (10:4fad)
	db "Flower@"
	db 2,4
	dw 90
	TX_FAR _BellsproutDexEntry
	db "@"

WeepinbellDexEntry: ; 40fbd (10:4fbd)
	db "Flycatcher@"
	db 3,3
	dw 140
	TX_FAR _WeepinbellDexEntry
	db "@"

VictreebelDexEntry: ; 40fd1 (10:4fd1)
	db "Flycatcher@"
	db 5,7
	dw 340
	TX_FAR _VictreebelDexEntry
	db "@"

LugiaDexEntry: ; 40fe5 (10:4fe5)
	db "Diving@"
	db 17,1
	dw 4762
	TX_FAR _LugiaDexEntry
	db "@"
	
HoundourDexEntry:
	db "Dark@"
	db 2,0
	dw 0238
	TX_FAR _HoundourDexEntry
	db "@"
	
HoundoomDexEntry:
	db "Dark@"
	db 6,3
	dw 1091
	TX_FAR _HoundoomDexEntry
	db "@"
	
MurkrowDexEntry:
	db "Darkness@"
	db 1,8
	dw 46
	TX_FAR _MurkrowDexEntry
	db "@"
	
HonchkrowDexEntry:
	db "Big Boss@"
	db 2,11
	dw 602
	TX_FAR _HonchkrowDexEntry
	db "@"
	
HeracrossDexEntry:
	db "SingleHorn@"
	db 4,11
	dw 507
	TX_FAR _HeracrossDexEntry
	db "@"
	
EspeonDexEntry:
	db "Sun@"
	db 2,11
	dw 584
	TX_FAR _EspeonDexEntry
	db "@"
	
UmbreonDexEntry:
	db "Moonlight@"
	db 3,3
	dw 595
	TX_FAR _UmbreonDexEntry
	db "@"
	
GlaceonDexEntry:
	db "Fresh Snow@"
	db 2,7
	dw 571
	TX_FAR _GlaceonDexEntry
	db "@"
	
LeafeonDexEntry:
	db "Verdant@"
	db 3,3
	dw 562
	TX_FAR _LeafeonDexEntry
	db "@"
	
SylveonDexEntry:
	db "Affection@"
	db 3,3
	dw 518
	TX_FAR _SylveonDexEntry
	db "@"
	
ScizorDexEntry:
	db "Pincer@"
	db 5,11
	dw 2601
	TX_FAR _ScizorDexEntry
	db "@"
	
SteelixDexEntry:
	db "Iron Snake@"
	db 30,2
	dw 8818
	TX_FAR _SteelixDexEntry
	db "@"
	
CrobatDexEntry:
	db "Bat@"
	db 5,11
	dw 1653
	TX_FAR _CrobatDexEntry
	db "@"
	
PolitoedDexEntry:
	db "Frog@"
	db 3,7
	dw 747
	TX_FAR _PolitoedDexEntry
	db "@"
	
SlowkingDexEntry:
	db "Royal@"
	db 6,7
	dw 1753
	TX_FAR _SlowkingDexEntry
	db "@"
	
BellossomDexEntry:
	db "Flower@"
	db 1,4
	dw 128
	TX_FAR _BellossomDexEntry
	db "@"
	
KingdraDexEntry:
	db "Dragon@"
	db 5,11
	dw 3351
	TX_FAR _KingdraDexEntry
	db "@"
	
BlisseyDexEntry:
	db "Happiness@"
	db 4,11
	dw 1032
	TX_FAR _BlisseyDexEntry
	db "@"
	
Porygon2DexEntry:
	db "Virtual@"
	db 2,0
	dw 716
	TX_FAR _Porygon2DexEntry
	db "@"
	
PorygonZDexEntry:
	db "Virtual@"
	db 2,11
	dw 750
	TX_FAR _PorygonZDexEntry
	db "@"
	
MagmortarDexEntry:
	db "Blast@"
	db 5,3
	dw 1499
	TX_FAR _MagmortarDexEntry
	db "@"
	
ElectivireDexEntry:
	db "Bolt@"
	db 5,11
	dw 3056
	TX_FAR _ElectivireDexEntry
	db "@"
	
MagnezoneDexEntry:
	db "MagnetArea@"
	db 3,11
	dw 3968
	TX_FAR _MagnezoneDexEntry
	db "@"
	
RhyperiorDexEntry:
	db "Drill@"
	db 7,10
	dw 6235
	TX_FAR _RhyperiorDexEntry
	db "@"
	
TangrowthDexEntry:
	db "Vine@"
	db 6,7
	dw 2835
	TX_FAR _TangrowthDexEntry
	db "@"
	
LickilickyDexEntry:
	db "Licking@"
	db 5,7
	dw 3086
	TX_FAR _LickilickyDexEntry
	db "@"
	
TogepiDexEntry:
	db "Spike Ball@"
	db 1,0
	dw 33
	TX_FAR _TogepiDexEntry
	db "@"
	
TogeticDexEntry:
	db "Happiness@"
	db 2,0
	dw 71
	TX_FAR _TogeticDexEntry
	db "@"
	
TogekissDexEntry:
	db "Jubilee@"
	db 4,11
	dw 838
	TX_FAR _TogekissDexEntry
	db "@"
	
SneaselDexEntry:
	db "Sharp Claw@"
	db 2,11
	dw 617
	TX_FAR _SneaselDexEntry
	db "@"
	
WeavileDexEntry:
	db "Sharp Claw@"
	db 3,7
	dw 750
	TX_FAR _WeavileDexEntry
	db "@"
	
SkarmoryDexEntry:
	db "Armor Bird@"
	db 5,7
	dw 1113
	TX_FAR _SkarmoryDexEntry
	db "@"
	
MisdreavusDexEntry:
	db "Screech@"
	db 2,4
	dw 22
	TX_FAR _MisdreavusDexEntry
	db "@"
	
MismagiusDexEntry:
	db "Magical@"
	db 2,11
	dw 97
	TX_FAR _MismagiusDexEntry
	db "@"
	
MiltankDexEntry:
	db "Milk Cow@"
	db 3,11
	dw 1664
	TX_FAR _MiltankDexEntry
	db "@"
	
ChinchouDexEntry:
	db "Angler@"
	db 1,8
	dw 265
	TX_FAR _ChinchouDexEntry
	db "@"
	
LanturnDexEntry:
	db "Light@"
	db 3,11
	dw 496
	TX_FAR _LanturnDexEntry
	db "@"
	
SlugmaDexEntry:
    db "Lava@"
    db 2,4
    dw 772
    TX_FAR _SlugmaDexEntry
    db "@"
    
MagcargoDexEntry:
    db "Lava@"
    db 2,7
    dw 1213
    TX_FAR _MagcargoDexEntry
    db "@"
    
TorkoalDexEntry:
    db "Coal@"
    db 1,8
    dw 1772
    TX_FAR _TorkoalDexEntry
    db "@"
    
LatiasDexEntry:
    db "Eon@"
    db 4,7
    dw 882
    TX_FAR _LatiasDexEntry
    db "@"
    
LatiosDexEntry:
    db "Eon@"
    db 6,7
    dw 1323
    TX_FAR _LatiosDexEntry
    db "@"
    
HitmontopDexEntry:
    db "Handstand@"
    db 4,7
    dw 1058
    TX_FAR _HitmontopDexEntry
    db "@"
    
TyrogueDexEntry:
    db "Scuffle@"
    db 2,4
    dw 463
    TX_FAR _TyrogueDexEntry
    db "@"
    
PichuDexEntry:
    db "Tiny Mouse@"
    db 1,0
    dw 44
    TX_FAR _PichuDexEntry
    db "@"
    
CleffaDexEntry:
    db "StarShape@"
    db 1,0
    dw 66
    TX_FAR _CleffaDexEntry
    db "@"
    
IgglybuffDexEntry:
    db "Balloon@"
    db 1,0
    dw 22
    TX_FAR _IgglybuffDexEntry
    db "@"
    
SmoochumDexEntry:
    db "Kiss@"
    db 1,4
    dw 132
    TX_FAR _SmoochumDexEntry
    db "@"
    
ElekidDexEntry:
    db "Electric@"
    db 2,0
    dw 518
    TX_FAR _ElekidDexEntry
    db "@"
    
MagbyDexEntry:
    db "Live Coal@"
    db 2,4
    dw 472
    TX_FAR _MagbyDexEntry
    db "@"
    
MimeJrDexEntry:
    db "Mime@"
    db 2,0
    dw 287
    TX_FAR _MimeJrDexEntry
    db "@"
    
HappinyDexEntry:
    db "Playhouse@"
    db 2,0
    dw 538
    TX_FAR _HappinyDexEntry
    db "@"
    
MunchlaxDexEntry:
    db "Big Eater@"
    db 2,0
    dw 2315
    TX_FAR _MunchlaxDexEntry
    db "@"
    
