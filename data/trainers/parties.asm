; All trainers follow a basic structure:
	; Name
		; String in format "TEXT@"
	; Type
		; TRAINERTYPE_NORMAL:      level, species (2 bytes)
		; TRAINERTYPE_ITEM:        item (1 byte)
		; TRAINERTYPE_EVS:         EVs (1 byte, marks the setting of all EVs)
		; TRAINERTYPE_DVS:         DVs (3 bytes)
		; TRAINERTYPE_PERSONALITY: personality (2 bytes)
		; TRAINERTYPE_NICKNAME:    nickname (max 10 bytes)
		; TRAINERTYPE_MOVES:       moves (4 bytes)
	; Party
		; Up to six monsters following the data type
	; -1 ; end

; Do not use the byte $ff in trainer data, since it's the end marker.
; That means:
; * DVs cannot be $ff -- use $00 instead (ReadTrainerParty converts it to $ff)
; * "9" cannot be used in nicknames

; TODO: swap ABILITY_1 and ABILITY_2 in base data as need so that ABILITY_1 is the better one for default NPCs (e.g. NPCs should have Sturdy when possible)


SECTION "Enemy Trainer Parties 1", ROMX

CarrieGroup:

CalGroup:

FalknerGroup:

BugsyGroup:

WhitneyGroup:

MortyGroup:

ChuckGroup:

JasmineGroup:

PryceGroup:

ClairGroup:

WillGroup:

KogaGroup:

BrunoGroup:

KarenGroup:

ChampionGroup:

BrockGroup:

MistyGroup:

LtSurgeGroup:

ErikaGroup:

JanineGroup:

SabrinaGroup:

BlaineGroup:

BlueGroup:

RedGroup:

LeafGroup:

Rival0Group:

Rival1Group:

Rival2Group:

Lyra1Group:

Lyra2Group:

YoungsterGroup:

BugCatcherGroup:

CamperGroup:

PicnickerGroup:

TwinsGroup:

FisherGroup:

BirdKeeperGroup:

HikerGroup:

GruntMGroup:

GruntFGroup:

PokefanMGroup:

PokefanFGroup:

OfficerMGroup:

OfficerFGroup:

NurseGroup:

PokemaniacGroup:

CosplayerGroup:

SuperNerdGroup:

LassGroup:

BeautyGroup:

BugManiacGroup:

RuinManiacGroup:

FirebreatherGroup:

JugglerGroup:

SchoolboyGroup:

SchoolgirlGroup:

PsychicGroup:

HexManiacGroup:

SageGroup:

MediumGroup:

KimonoGirlGroup:

ElderGroup:

SrAndJrGroup:

CoupleGroup:

GentlemanGroup:

RichBoyGroup:

LadyGroup:

BreederGroup:

BakerGroup:

CowgirlGroup:

SailorGroup:

SwimmerMGroup:

SwimmerFGroup:

BurglarGroup:

PIGroup:

ScientistGroup:

RocketScientistGroup:

BoarderGroup:

SkierGroup:

BlackbeltGroup:

BattleGirlGroup:

DragonTamerGroup:

EngineerGroup:

TeacherGroup:

GuitaristMGroup:

GuitaristFGroup:

BikerGroup:

RoughneckGroup:

TamerGroup:

ArtistGroup:

AromaLadyGroup:

WaitressGroup:

SightseerMGroup:

SightseerFGroup:

SightseersGroup:

CooltrainerMGroup:


SECTION "Enemy Trainer Parties 2", ROMX

CooltrainerFGroup:

AceDuoGroup:

VeteranMGroup:

VeteranFGroup:

ProtonGroup:

PetrelGroup:

ArcherGroup:

ArianaGroup:

GiovanniGroup:

ProfOakGroup:

ProfElmGroup:

ProfIvyGroup:

MysticalmanGroup:

KarateKingGroup:

TowerTycoonGroup:

JessieJamesGroup:

LoreleiGroup:

AgathaGroup:

StevenGroup:

CynthiaGroup:

InverGroup:

CherylGroup:

RileyGroup:

BuckGroup:

MarleyGroup:

MiraGroup:

AnabelGroup:

DarachGroup:

CaitlinGroup:

CandelaGroup:

BlancheGroup:

SparkGroup:

FlanneryGroup:

MayleneGroup:

SkylaGroup:

ValerieGroup:

KukuiGroup:

VictorGroup:

BillGroup:

YellowGroup:

WalkerGroup:

ImakuniGroup:

LawrenceGroup:

ReiGroup:
