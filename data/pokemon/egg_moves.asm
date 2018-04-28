INCLUDE "constants.asm"


SECTION "Egg Moves", ROMX


INCLUDE "data/pokemon/egg_move_pointers.asm"


EggMoves::

BulbasaurEggMoves:
	db CHARM
	db PETAL_DANCE
	db LIGHT_SCREEN
	db SAFEGUARD
	db POWER_WHIP
	db -1 ; end

CharmanderEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db BITE
	db CRUNCH
	db DRAGON_DANCE
	db DRAGONBREATH
	db FLARE_BLITZ
	db OUTRAGE
	db -1 ; end

SquirtleEggMoves:
	db CONFUSION
	db FORESIGHT
	db HAZE
	db MIRROR_COAT
	db AQUA_JET
	db -1 ; end

PidgeyEggMoves:
	db PECK
	db FEINT_ATTACK
	db FORESIGHT
	db PURSUIT
	db AIR_SLASH
	db STEEL_WING
	db CHARM
	db EXTREMESPEED
	db BRAVE_BIRD
	db -1 ; end

RattataEggMoves:
	db FLAME_WHEEL
	db FURY_STRIKES
	db REVERSAL
	db SCREECH
	db BITE
	db COUNTER
	db -1 ; end

SpearowEggMoves:
	db FEINT_ATTACK
	db FALSE_SWIPE
	db SCARY_FACE
	db QUICK_ATTACK
	db TRI_ATTACK
	db ASTONISH
	db STEEL_WING
	db GUST
	db -1 ; end

EkansEggMoves:
	db CRUNCH
	db DISABLE
	db PURSUIT
	db SCARY_FACE
	db -1 ; end

PikachuEggMoves:
	db DISARM_VOICE
	db DOUBLE_SLAP
	db ENCORE
	db REVERSAL
	db NASTY_PLOT
	db SCARY_FACE
	db SING
	db PETAL_DANCE
	db -1 ; end

SandshrewEggMoves:
	db METAL_CLAW
	db RAPID_SPIN
	db SAFEGUARD
	db COUNTER
	db NIGHT_SLASH
	db -1 ; end

NidoranFEggMoves:
	db CHARM
	db DISABLE
	db FOCUS_ENERGY
	db PURSUIT
	db SUPERSONIC
	db TAKE_DOWN
	db -1 ; end

NidoranMEggMoves:
	db AMNESIA
	db CONFUSION
	db DISABLE
	db SUPERSONIC
	db TAKE_DOWN
	db CALM_MIND
	db COUNTER
	db -1 ; end

ClefairyEggMoves:
	db CALM_MIND
	db BELLY_DRUM
	db METRONOME
	db AMNESIA
	db SPLASH
	db SOFTBOILED
	db -1 ; end

VulpixEggMoves:
	db DISABLE
	db FLARE_BLITZ
	db HYPNOSIS
	db FEINT_ATTACK
	db EXTRASENSORY
	db CHARM
	db ENERGY_BALL
	db ROAR
	db -1 ; end

JigglypuffEggMoves:
	db FEINT_ATTACK
	db PERISH_SONG
	db MOONBLAST
	db -1 ; end

ZubatEggMoves:
	db FEINT_ATTACK
	db GUST
	db HYPNOSIS
	db NASTY_PLOT
	db PURSUIT
	db QUICK_ATTACK
	db ZEN_HEADBUTT
	db BRAVE_BIRD
	db -1 ; end

OddishEggMoves:
	db CHARM
	db RAZOR_LEAF
	db HEALINGLIGHT
	db SWORDS_DANCE
	db -1 ; end

ParasEggMoves:
	db AGILITY
	db LEECH_SEED
	db METAL_CLAW
	db PSYBEAM
	db PURSUIT
	db SCREECH
	db SHADOW_CLAW
	db -1 ; end

VenonatEggMoves:
	db AGILITY
	db HEALINGLIGHT
	db SCREECH
	db TOXIC_SPIKES
	db -1 ; end

DiglettEggMoves:
	db ANCIENTPOWER
	db FEINT_ATTACK
	db HEADBUTT
	db PURSUIT
	db REVERSAL
	db SCREECH
	db -1 ; end

MeowthEggMoves:
	db CHARM
	db HYPNOSIS
	db AMNESIA
	db LEER
	db NIGHT_SLASH
	db -1 ; end

PsyduckEggMoves:
	db CONFUSE_RAY
	db CROSS_CHOP
	db ENCORE
	db FORESIGHT
	db FUTURE_SIGHT
	db HYPNOSIS
	db PSYBEAM
	db ICE_BEAM
	db LIGHT_SCREEN
	db PSYCHIC_M
	db -1 ; end

MankeyEggMoves:
	db ENCORE
	db FORESIGHT
	db BULK_UP
	db REVERSAL
	db ROCK_SLIDE
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db -1 ; end

GrowlitheEggMoves:
	db DOUBLE_KICK
	db FIRE_SPIN
	db HEALINGLIGHT
	db THRASH
	db CRUNCH
	db FLARE_BLITZ
	db BODY_SLAM
	db SAFEGUARD
	db CLOSE_COMBAT
	db -1 ; end

PoliwagEggMoves:
	db ENCORE
	db HAZE
	db SPLASH
	db BUBBLE_BEAM
	db WATER_PULSE
	db -1 ; end

AbraEggMoves:
	db BARRIER
	db ENCORE
	db LIGHT_SCREEN
	db -1 ; end

MachopEggMoves:
	db BULLET_PUNCH
	db ENCORE
	db BULK_UP
	db LIGHT_SCREEN
	db MACH_PUNCH
	db CLOSE_COMBAT
	db -1 ; end

BellsproutEggMoves:
	db ENCORE
	db LEECH_LIFE
	db SWORDS_DANCE
	db REFLECT
	db HEALINGLIGHT
	db POWER_WHIP
	db -1 ; end

TentacoolEggMoves:
	db AURORA_BEAM
	db CONFUSE_RAY
	db HAZE
	db MIRROR_COAT
	db RAPID_SPIN
	db SAFEGUARD
	db -1 ; end

GeodudeEggMoves:
	db ROCK_SLIDE
	db -1 ; end

PonytaEggMoves:
	db CHARM
	db DOUBLE_KICK
	db HYPNOSIS
	db HEALINGLIGHT
	db THRASH
	db QUICK_ATTACK
	db FLAME_WHEEL
	db EXTREMESPEED
	db PLAY_ROUGH
	db -1 ; end

SlowpokeEggMoves:
	db BELLY_DRUM
	db FUTURE_SIGHT
	db STOMP
	db SAFEGUARD
	db ZEN_HEADBUTT
	db -1 ; end

FarfetchDEggMoves:
	db FORESIGHT
	db GUST
	db QUICK_ATTACK
	db STEEL_WING
	db NIGHT_SLASH
	db ROOST
	db -1 ; end

DoduoEggMoves:
	db FEINT_ATTACK
	db HAZE
	db SUPERSONIC
	db QUICK_ATTACK
	db BRAVE_BIRD
	db -1 ; end

SeelEggMoves:
	db DISABLE
	db LICK
	db PECK
	db PERISH_SONG
	db ENCORE
	db WATER_PULSE
	db ICICLE_SPEAR
	db -1 ; end

GrimerEggMoves:
	db HAZE
	db LICK
	db MEAN_LOOK
	db SCARY_FACE
	db -1 ; end

ShellderEggMoves:
	db BARRIER
	db BUBBLE_BEAM
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db WATER_PULSE
	db ICICLE_SPEAR
	db ROCK_BLAST
	db -1 ; end

GastlyEggMoves:
	db ASTONISH
	db DISABLE
	db HAZE
	db PERISH_SONG
	db SCARY_FACE
	db NASTY_PLOT
	db FEINT_ATTACK
	db -1 ; end

OnixEggMoves:
	db DEFENSE_CURL
	db ROCK_SLIDE
	db EARTHQUAKE
	db ROCK_BLAST
	db -1 ; end

DrowzeeEggMoves:
	db BARRIER
	db LIGHT_SCREEN
	db BELLY_DRUM
	db -1 ; end

KrabbyEggMoves:
	db AGILITY
	db HAZE
	db AMNESIA
	db DIG
	db CALM_MIND
	db -1 ; end

ExeggcuteEggMoves:
	db MEGA_DRAIN
	db HEALINGLIGHT
	db HEALINGLIGHT
	db ANCIENTPOWER
	db REFLECT
	db -1 ; end

CuboneEggMoves:
	db ANCIENTPOWER
	db BELLY_DRUM
	db DOUBLE_KICK
	db PERISH_SONG
	db SCREECH
	db ROCK_SLIDE
	db SWORDS_DANCE
	db IRON_HEAD
	db -1 ; end

HitmonleeEggMoves:
HitmonchanEggMoves:
HitmontopEggMoves:
	db BULLET_PUNCH
	db HI_JUMP_KICK
	db MACH_PUNCH
	db PURSUIT
	db RAPID_SPIN
	db -1 ; end

LickitungEggMoves:
	db BELLY_DRUM
	db MAGNITUDE
	db BODY_SLAM
	db AMNESIA
	db THRASH
	db ZEN_HEADBUTT
	db -1 ; end

KoffingEggMoves:
	db PSYBEAM
	db SCREECH
	db DESTINY_BOND
	db PAIN_SPLIT
	db -1 ; end

RhyhornEggMoves:
	db CRUNCH
	db MAGNITUDE
	db PURSUIT
	db REVERSAL
	db THRASH
	db ROCK_SLIDE
	db COUNTER
	db -1 ; end

ChanseyEggMoves:
	db METRONOME
	db HEAL_BELL
	db -1 ; end

TangelaEggMoves:
	db CONFUSION
	db AMNESIA
	db LEECH_SEED
	db -1 ; end

KangaskhanEggMoves:
	db DISABLE
	db FOCUS_ENERGY
	db FORESIGHT
	db STOMP
	db SAFEGUARD
	db -1 ; end

HorseaEggMoves:
	db AURORA_BEAM
	db DISABLE
	db DRAGON_RAGE
	db DRAGONBREATH
	db SPLASH
	db HAZE
	db WATER_PULSE
	db -1 ; end

GoldeenEggMoves:
	db PSYBEAM
	db HAZE
	db HYDRO_PUMP
	db AQUA_TAIL
	db BODY_SLAM
	db SPLASH
	db -1 ; end

MrMimeEggMoves:
	db CONFUSE_RAY
	db FUTURE_SIGHT
	db HYPNOSIS
	db NASTY_PLOT
	db -1 ; end

ScytherEggMoves:
	db BUG_BUZZ
	db REVERSAL
	db COUNTER
	db SAFEGUARD
	db LIGHT_SCREEN
	db NIGHT_SLASH
	db -1 ; end

JynxEggMoves:
	db BULK_UP
	db NASTY_PLOT
	db -1 ; end

ElectabuzzEggMoves:
	db BARRIER
	db CROSS_CHOP
	db KARATE_CHOP
	db BULK_UP
	db -1 ; end

MagmarEggMoves:
	db BARRIER
	db BELLY_DRUM
	db CROSS_CHOP
	db FLARE_BLITZ
	db FOCUS_ENERGY
	db KARATE_CHOP
	db MACH_PUNCH
	db SCREECH
	db -1 ; end

PinsirEggMoves:
	db FEINT_ATTACK
	db FURY_STRIKES
	db QUICK_ATTACK
	db CLOSE_COMBAT
	db -1 ; end

LaprasEggMoves:
	db AURORA_BEAM
	db DRAGON_DANCE
	db FORESIGHT
	db FUTURE_SIGHT
	db HEAL_BELL
	db -1 ; end

EeveeEggMoves:
	db CHARM
	db -1 ; end

OmanyteEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db HAZE
	db SPIKES
	db TOXIC_SPIKES
	db SUPERSONIC
	db WATER_PULSE
	db -1 ; end

KabutoEggMoves:
	db AURORA_BEAM
	db BUBBLE_BEAM
	db CONFUSE_RAY
	db FORESIGHT
	db RAPID_SPIN
	db SCREECH
	db TAKE_DOWN
	db DIG
	db -1 ; end

AerodactylEggMoves:
	db FORESIGHT
	db PURSUIT
	db STEEL_WING
	db ROOST
	db -1 ; end

SnorlaxEggMoves:
	db CHARM
	db COUNTER
	db CURSE
	db DOUBLE_EDGE
	db LICK
	db GUNK_SHOT
	db SWEET_KISS
	db METRONOME
	db SCREECH
	db -1 ; end

DratiniEggMoves:
	db EXTREMESPEED ; requires Dragon Shrine Dratini
	db HAZE
	db SUPERSONIC
	db WATER_PULSE
	db AQUA_JET
	db -1 ; end

ChikoritaEggMoves:
	db LEECH_SEED
	db VINE_WHIP
	db ANCIENTPOWER
	db COUNTER
	db SWORDS_DANCE
	db CHARM
	db HEAL_BELL
	db -1 ; end

CyndaquilEggMoves:
	db DOUBLE_KICK
	db EXTRASENSORY
	db FLARE_BLITZ
	db FORESIGHT
	db FURY_STRIKES
	db REVERSAL
	db CLOSE_COMBAT
	db THRASH
	db QUICK_ATTACK
	db -1 ; end

TotodileEggMoves:
	db DRAGON_DANCE
	db METAL_CLAW
	db CRUNCH
	db THRASH
	db HYDRO_PUMP
	db ANCIENTPOWER
	db ROCK_SLIDE
	db WATER_PULSE
	db AQUA_JET
	db -1 ; end

ZigzagoonEggMoves:
	db CHARM
	db EXTREMESPEED
	db PURSUIT
	db -1 ; end

HoothootEggMoves:
	db AGILITY
	db FEINT_ATTACK
	db NIGHT_SHADE
	db SUPERSONIC
	db WING_ATTACK
	db BRAVE_BIRD
	db -1 ; end

LedybaEggMoves:
	db DIZZY_PUNCH
	db ENCORE ; requires Shuckle
	db PSYBEAM
	db SCREECH
	db LIGHT_SCREEN
	db DRAIN_PUNCH
	db -1 ; end

SpinarakEggMoves:
	db DISABLE
	db MEGAHORN
	db PSYBEAM
	db PURSUIT
	db SONIC_BOOM
	db POISON_JAB
	db NIGHT_SLASH
	db TOXIC_SPIKES
	db -1 ; end

ChinchouEggMoves:
	db AGILITY
	db HAZE
	db PSYBEAM
	db SCREECH
	db SUPERSONIC
	db WATER_PULSE
	db -1 ; end

TorkoalEggMoves:
	db ENDURE
	db -1 ; end

TogepiEggMoves:
	db EXTRASENSORY
	db FORESIGHT
	db FUTURE_SIGHT
	db HEALINGLIGHT
	db NASTY_PLOT
	db PECK
	db -1 ; end

NatuEggMoves:
	db DRILL_PECK
	db FEINT_ATTACK
	db HAZE
	db QUICK_ATTACK
	db STEEL_WING
	db ZEN_HEADBUTT
	db ROOST
	db -1 ; end

MareepEggMoves:
	db AGILITY
	db REFLECT
	db MUD_SLAP
	db SCREECH
	db THUNDERBOLT
	db TAKE_DOWN
	db BODY_SLAM
	db SAFEGUARD
	db -1 ; end

MarillEggMoves:
	db BELLY_DRUM
	db FORESIGHT
	db FUTURE_SIGHT
	db PERISH_SONG
	db SUPERSONIC
	db LIGHT_SCREEN
	db AMNESIA
	db CALM_MIND
	db AQUA_JET
	db -1 ; end

HoppipEggMoves:
	db CONFUSION
	db GROWL
	db ENCORE
	db DOUBLE_EDGE
	db REFLECT
	db AMNESIA
	db PAY_DAY
	db SEED_BOMB
	db -1 ; end

SunkernEggMoves:
	db -1 ; end

YanmaEggMoves:
	db FEINT_ATTACK
	db LEECH_LIFE
	db REVERSAL
	db -1 ; end

WooperEggMoves:
	db COUNTER
	db DOUBLE_KICK
	db ENCORE
	db RECOVER
	db BODY_SLAM
	db ANCIENTPOWER
	db SAFEGUARD
	db -1 ; end

MurkrowEggMoves:
	db CONFUSE_RAY
	db DRILL_PECK
	db PERISH_SONG
	db QUICK_ATTACK
	db SCREECH
	db WING_ATTACK
	db BRAVE_BIRD
	db ROOST
	db -1 ; end

MisdreavusEggMoves:
	db DESTINY_BOND
	db NASTY_PLOT
	db SCREECH
	db -1 ; end

WobbuffetEggMoves:
	db CHARM
	db ENCORE
	db -1 ; end

GirafarigEggMoves:
	db DOUBLE_KICK
	db FORESIGHT
	db FUTURE_SIGHT
	db MEAN_LOOK
	db MIRROR_COAT
	db TAKE_DOWN
	db AMNESIA
	db CALM_MIND
	db -1 ; end

PinecoEggMoves:
	db PIN_MISSILE
	db SWIFT
	db REFLECT
	db TOXIC_SPIKES
	db -1 ; end

GligarEggMoves:
	db AGILITY
	db METAL_CLAW
	db WING_ATTACK
	db COUNTER
	db NIGHT_SLASH
	db -1 ; end

SnubbullEggMoves:
	db FEINT_ATTACK
	db LEER
	db METRONOME
	db REFLECT
	db CRUNCH
	db HEAL_BELL
	db LICK
	db CLOSE_COMBAT
	db -1 ; end

HeracrossEggMoves:
	db DEFENSE_CURL
	db PURSUIT
	db -1 ; end

SneaselEggMoves:
	db BITE
	db FORESIGHT
	db PURSUIT
	db COUNTER
	db REFLECT
	db ICICLE_CRASH
	db ICE_SHARD
	db -1 ; end

TeddiursaEggMoves:
	db BELLY_DRUM
	db CROSS_CHOP
	db CRUNCH
	db FOCUS_ENERGY
	db METAL_CLAW
	db PLAY_ROUGH
	db TAKE_DOWN
	db SEISMIC_TOSS
	db COUNTER
	db GUNK_SHOT
	db NIGHT_SLASH
	db CLOSE_COMBAT
	db -1 ; end

SlugmaEggMoves:
	db SMOKESCREEN
	db CURSE
	db -1 ; end

SwinubEggMoves:
	db BITE
	db TAKE_DOWN
	db BODY_SLAM
	db ROCK_SLIDE
	db ANCIENTPOWER
	db ICICLE_CRASH
	db ICICLE_SPEAR
	db -1 ; end

CorsolaEggMoves:
	db BARRIER
	db CONFUSE_RAY
	db HAZE
	db AMNESIA
	db SCREECH
	db ROCK_SLIDE
	db SAFEGUARD
	db CALM_MIND
	db WATER_PULSE
	db ICICLE_SPEAR
	db -1 ; end

RemoraidEggMoves:
	db SPLASH
	db HAZE
	db ROCK_BLAST
	db SCREECH
	db SUPERSONIC
	db AURORA_BEAM
	db GUNK_SHOT
	db WATER_PULSE
	db -1 ; end

MantineEggMoves:
	db HAZE
	db MIRROR_COAT
	db SPLASH
	db HYDRO_PUMP
	db GUNK_SHOT
	db -1 ; end

SkarmoryEggMoves:
	db DRILL_PECK
	db PURSUIT
	db BRAVE_BIRD
	db -1 ; end

HoundourEggMoves:
	db DESTINY_BOND
	db FIRE_SPIN
	db PURSUIT
	db RAGE
	db REVERSAL
	db COUNTER
	db WILL_O_WISP
	db -1 ; end

PhanpyEggMoves:
	db FOCUS_ENERGY
	db PLAY_ROUGH
	db WATER_GUN
	db BODY_SLAM
	db ANCIENTPOWER
	db GUNK_SHOT
	db ICE_SHARD
	db -1 ; end

StantlerEggMoves:
	db REFLECT
	db DISABLE
	db LIGHT_SCREEN
	db BITE
	db DOUBLE_KICK
	db EXTRASENSORY
	db MEGAHORN
	db RAGE
	db THRASH
	db ZEN_HEADBUTT
	db -1 ; end

MiltankEggMoves:
	db DIZZY_PUNCH
	db REVERSAL
	db SEISMIC_TOSS
	db -1 ; end

LarvitarEggMoves:
	db DRAGON_DANCE
	db FOCUS_ENERGY
	db PURSUIT
	db STOMP
	db OUTRAGE
	db ANCIENTPOWER
	db IRON_HEAD
	db -1 ; end

NoEggMoves:
	db -1 ; end
