INCLUDE "constants.asm"


SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"

INCLUDE "data/trainers/encounter_music.asm"

INCLUDE "audio/music_pointers.asm"

INCLUDE "audio/music/nothing.asm"

INCLUDE "audio/cry_pointers.asm"

INCLUDE "audio/sfx_pointers.asm"


SECTION "RBY Music 1", ROMX

INCLUDE "audio/music/rby/introbattle.asm"
INCLUDE "audio/music/rby/titlescreen.asm"


SECTION "RBY Music 2", ROMX

INCLUDE "audio/music/rby/pallettown.asm"
INCLUDE "audio/music/rby/meetprofoak.asm"
INCLUDE "audio/music/rby/oakslab.asm"
INCLUDE "audio/music/rby/meetrival.asm"
INCLUDE "audio/music/rby/routes1.asm"
INCLUDE "audio/music/rby/wildbattle.asm"
INCLUDE "audio/music/rby/defeatedwildmon.asm"
INCLUDE "audio/music/rby/cities1.asm"
INCLUDE "audio/music/rby/pokecenter.asm"
INCLUDE "audio/music/rby/pkmnhealed.asm"


SECTION "RBY Music 3", ROMX

INCLUDE "audio/music/rby/dungeon2.asm"
INCLUDE "audio/music/rby/museumguy.asm"
INCLUDE "audio/music/rby/meetfemaletrainer.asm"
INCLUDE "audio/music/rby/trainerbattle.asm"
INCLUDE "audio/music/rby/defeatedtrainer.asm"
INCLUDE "audio/music/rby/dungeon3.asm"
INCLUDE "audio/music/rby/meetjessiejames.asm"
INCLUDE "audio/music/rby/routes3.asm"
INCLUDE "audio/music/rby/cities2.asm"
INCLUDE "audio/music/rby/gym.asm"


SECTION "RBY Music 4", ROMX

INCLUDE "audio/music/rby/routes2.asm"
INCLUDE "audio/music/rby/jigglypuffsong.asm"
INCLUDE "audio/music/rby/vermilion.asm"
INCLUDE "audio/music/rby/ssanne.asm"
INCLUDE "audio/music/rby/routes4.asm"
INCLUDE "audio/music/rby/meetmaletrainer.asm"
INCLUDE "audio/music/rby/gymleaderbattle.asm"
INCLUDE "audio/music/rby/defeatedgymleader.asm"
INCLUDE "audio/music/rby/bikeriding.asm"


SECTION "RBY Music 5", ROMX

INCLUDE "audio/music/rby/lavender.asm"
INCLUDE "audio/music/rby/pokemontower.asm"
INCLUDE "audio/music/rby/celadon.asm"
INCLUDE "audio/music/rby/gamecorner.asm"
INCLUDE "audio/music/rby/meeteviltrainer.asm"
INCLUDE "audio/music/rby/dungeon1.asm"
INCLUDE "audio/music/rby/silphco.asm"
INCLUDE "audio/music/rby/surfing.asm"


SECTION "RBY Music 6", ROMX

INCLUDE "audio/music/rby/cinnabar.asm"
INCLUDE "audio/music/rby/cinnabarmansion.asm"
INCLUDE "audio/music/rby/safarizone.asm"
INCLUDE "audio/music/rby/surfingpikachu.asm"
INCLUDE "audio/music/rby/indigoplateau.asm"
INCLUDE "audio/music/rby/finalbattle.asm"
INCLUDE "audio/music/rby/halloffame.asm"
INCLUDE "audio/music/rby/credits.asm"


SECTION "GSC Music 1", ROMX

INCLUDE "audio/music/gsc/successfulcapture.asm" ; shares with wildpokemonvictory.asm
INCLUDE "audio/music/gsc/wildpokemonvictory.asm" ; shares with successfulcapture.asm
INCLUDE "audio/music/gsc/mtmoonsquare.asm"
INCLUDE "audio/music/gsc/pokeflutechannel.asm"
INCLUDE "audio/music/gsc/rocketbattle.asm"
INCLUDE "audio/music/gsc/suicunebattle.asm"


SECTION "GSC Music 2", ROMX

INCLUDE "audio/music/gsc/battletowertheme.asm"
INCLUDE "audio/music/gsc/battletowerlobby.asm"
INCLUDE "audio/music/gsc/newbarktown.asm"
INCLUDE "audio/music/gsc/elmslab.asm"
INCLUDE "audio/music/gsc/route29.asm"
INCLUDE "audio/music/gsc/johtowildbattle.asm" ; shares with johtowildbattlenight.asm
INCLUDE "audio/music/gsc/johtowildbattlenight.asm" ; shares with johtowildbattle.asm


SECTION "GSC Music 3", ROMX

INCLUDE "audio/music/gsc/cherrygrovecity.asm"
INCLUDE "audio/music/gsc/route30.asm"
INCLUDE "audio/music/gsc/violetcity.asm"
INCLUDE "audio/music/gsc/sprouttower.asm"
INCLUDE "audio/music/gsc/looksage.asm"
INCLUDE "audio/music/gsc/johtotrainerbattle.asm"
INCLUDE "audio/music/gsc/unioncave.asm"
INCLUDE "audio/music/gsc/ruinsofalphinterior.asm"
INCLUDE "audio/music/gsc/lookhiker.asm"


SECTION "GSC Music 4", ROMX

INCLUDE "audio/music/gsc/azaleatown.asm"
INCLUDE "audio/music/gsc/route36.asm"
INCLUDE "audio/music/gsc/goldenrodcity.asm"
INCLUDE "audio/music/gsc/pokecomcenter.asm"
INCLUDE "audio/music/gsc/lookbeauty.asm"
INCLUDE "audio/music/gsc/johtogymbattle.asm"
INCLUDE "audio/music/gsc/lookofficer.asm"
INCLUDE "audio/music/gsc/nationalpark.asm"
INCLUDE "audio/music/gsc/bugcatchingcontest.asm"
INCLUDE "audio/music/gsc/contestresults.asm"


SECTION "GSC Music 5", ROMX

INCLUDE "audio/music/gsc/ecruteakcity.asm"
INCLUDE "audio/music/gsc/dancinghall.asm"
INCLUDE "audio/music/gsc/lookkimonogirl.asm"
INCLUDE "audio/music/gsc/burnedtower.asm"
INCLUDE "audio/music/gsc/route37.asm"
INCLUDE "audio/music/gsc/lighthouse.asm"
INCLUDE "audio/music/gsc/lakeofrage.asm"


SECTION "GSC Music 6", ROMX

INCLUDE "audio/music/gsc/lookpokemaniac.asm"
INCLUDE "audio/music/gsc/darkcave.asm"
INCLUDE "audio/music/gsc/dragonsden.asm"
INCLUDE "audio/music/gsc/tintower.asm"
INCLUDE "audio/music/gsc/route26.asm"


SECTION "RSE Music 1", ROMX

INCLUDE "audio/music/rse/trickhouse.asm"
INCLUDE "audio/music/rse/frontierbrainbattle.asm"
INCLUDE "audio/music/rse/mountchimney.asm"
INCLUDE "audio/music/rse/mountpyre.asm"


SECTION "RSE Music 2", ROMX

INCLUDE "audio/music/rse/route101.asm"
INCLUDE "audio/music/rse/evergrandecity.asm"
INCLUDE "audio/music/rse/abandonedship.asm"
INCLUDE "audio/music/rse/gymleaderbattle.asm"


SECTION "DPPt Music 1", ROMX

INCLUDE "audio/music/dppt/canalavecity.asm"
INCLUDE "audio/music/dppt/eternaforest.asm"
INCLUDE "audio/music/dppt/route205.asm"
INCLUDE "audio/music/dppt/sunyshorecity.asm"
INCLUDE "audio/music/dppt/route203.asm"
INCLUDE "audio/music/dppt/oreburghgate.asm"


SECTION "HGSS Music 1", ROMX

INCLUDE "audio/music/hgss/cianwoodcity.asm"
INCLUDE "audio/music/hgss/route47.asm"
INCLUDE "audio/music/hgss/safarizonegate.asm"
INCLUDE "audio/music/hgss/lugiabattle.asm"
INCLUDE "audio/music/hgss/summoningdance.asm"
INCLUDE "audio/music/hgss/hoohbattle.asm"


SECTION "BW Music 1", ROMX

INCLUDE "audio/music/bw/trainerbattle.asm"
INCLUDE "audio/music/bw/finalpokemon.asm"
INCLUDE "audio/music/bw/route12.asm"


SECTION "B2W2 Music 1", ROMX

INCLUDE "audio/music/b2w2/whitetreehollow.asm"
INCLUDE "audio/music/b2w2/roadtoreversalmountain.asm"


SECTION "XY Music 1", ROMX

INCLUDE "audio/music/xy/scaryhouse.asm"
INCLUDE "audio/music/xy/powerplant.asm"
INCLUDE "audio/music/xy/laverrecity.asm"


SECTION "XY Music 2", ROMX

INCLUDE "audio/music/xy/kantolegendbattle.asm"


SECTION "SM Music 1", ROMX

INCLUDE "audio/music/sm/wildbattle.asm"
INCLUDE "audio/music/sm/trainerbattle.asm"


SECTION "Stadium Music", ROMX

INCLUDE "audio/music/stadium/mewtwobattle.asm"


SECTION "Go Music", ROMX

INCLUDE "audio/music/go/wildbattle.asm"


SECTION "Movie 2000 Music", ROMX

INCLUDE "audio/music/m02/lugiassong.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Crystal Sound Effects", ROMX

INCLUDE "audio/sfx_crystal.asm"


SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

INCLUDE "audio/cries.asm"
