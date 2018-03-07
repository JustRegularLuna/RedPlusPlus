INCLUDE "constants.asm"


SECTION "Audio", ROMX

INCLUDE "audio/engine.asm"

INCLUDE "data/trainers/encounter_music.asm"

INCLUDE "audio/music_pointers.asm"

INCLUDE "audio/music/nothing.asm"

INCLUDE "audio/cry_pointers.asm"

INCLUDE "audio/sfx_pointers.asm"


SECTION "Music 1", ROMX

INCLUDE "audio/music/gsc/crystalopening.asm"
INCLUDE "audio/music/gsc/titlescreen.asm"


SECTION "Music 2", ROMX

INCLUDE "audio/music/gsc/mainmenu.asm"
INCLUDE "audio/music/gsc/newbarktown.asm"
INCLUDE "audio/music/gsc/mom.asm"
INCLUDE "audio/music/gsc/elmslab.asm"
INCLUDE "audio/music/gsc/johtowildbattle.asm" ; shares with johtowildbattlenight.asm
INCLUDE "audio/music/gsc/johtowildbattlenight.asm" ; shares with johtowildbattle.asm
INCLUDE "audio/music/gsc/wildpokemonvictory.asm" ; shares with successfulcapture.asm
INCLUDE "audio/music/gsc/successfulcapture.asm" ; shares with wildpokemonvictory.asm


SECTION "Music 3", ROMX

INCLUDE "audio/music/gsc/route29.asm"
INCLUDE "audio/music/gsc/cherrygrovecity.asm"
INCLUDE "audio/music/gsc/showmearound.asm"
INCLUDE "audio/music/gsc/pokemoncenter.asm"
INCLUDE "audio/music/gsc/healpokemon.asm"
INCLUDE "audio/music/gsc/lookyoungster.asm"
INCLUDE "audio/music/gsc/johtotrainerbattle.asm"
INCLUDE "audio/music/gsc/trainervictory.asm"


SECTION "Music 4", ROMX

INCLUDE "audio/music/gsc/route30.asm"
INCLUDE "audio/music/gsc/violetcity.asm"
INCLUDE "audio/music/gsc/sprouttower.asm"
INCLUDE "audio/music/gsc/looksage.asm"
INCLUDE "audio/music/gsc/unioncave.asm"
INCLUDE "audio/music/gsc/ruinsofalphinterior.asm"
INCLUDE "audio/music/gsc/ruinsofalphradio.asm"
INCLUDE "audio/music/gsc/azaleatown.asm"


SECTION "Music 5", ROMX

INCLUDE "audio/music/gsc/lookrocket.asm" ; shares with rockettheme.asm
INCLUDE "audio/music/gsc/rockettheme.asm" ; shares with lookrocket.asm
INCLUDE "audio/music/gsc/rocketbattle.asm"
INCLUDE "audio/music/gsc/route36.asm"
INCLUDE "audio/music/gsc/lookrival.asm" ; shares with aftertherivalfight.asm
INCLUDE "audio/music/gsc/rivalbattle.asm"
INCLUDE "audio/music/gsc/aftertherivalfight.asm" ; shares with lookrival.asm
INCLUDE "audio/music/gsc/evolution.asm"


SECTION "Music 6", ROMX

INCLUDE "audio/music/gsc/goldenrodcity.asm"
INCLUDE "audio/music/gsc/pokecomcenter.asm"
INCLUDE "audio/music/gsc/gym.asm"
INCLUDE "audio/music/gsc/johtogymbattle.asm"
INCLUDE "audio/music/gsc/gymleadervictory.asm"
INCLUDE "audio/music/gsc/pokemonchannel.asm"
INCLUDE "audio/music/gsc/buenaspassword.asm"
INCLUDE "audio/music/gsc/gamecorner.asm"


SECTION "Music 7", ROMX

INCLUDE "audio/music/gsc/bicycle.asm"
INCLUDE "audio/music/gsc/looklass.asm"
INCLUDE "audio/music/gsc/nationalpark.asm"
INCLUDE "audio/music/gsc/bugcatchingcontest.asm"
INCLUDE "audio/music/gsc/contestresults.asm"
INCLUDE "audio/music/gsc/ecruteakcity.asm"
INCLUDE "audio/music/gsc/dancinghall.asm"
INCLUDE "audio/music/gsc/lookkimonogirl.asm"


SECTION "Music 8", ROMX

INCLUDE "audio/music/gsc/burnedtower.asm"
INCLUDE "audio/music/gsc/lookmysticalman.asm"
INCLUDE "audio/music/gsc/profoakspokemontalk.asm"
INCLUDE "audio/music/gsc/route37.asm"
INCLUDE "audio/music/gsc/pokemonmarch.asm"
INCLUDE "audio/music/gsc/lighthouse.asm"
INCLUDE "audio/music/gsc/surf.asm"
INCLUDE "audio/music/gsc/lakeofrage.asm"


SECTION "Music 9", ROMX

INCLUDE "audio/music/gsc/lakeofragerocketradio.asm"
INCLUDE "audio/music/gsc/rockethideout.asm"
INCLUDE "audio/music/gsc/lookpokemaniac.asm"
INCLUDE "audio/music/gsc/darkcave.asm"
INCLUDE "audio/music/gsc/dragonsden.asm"
INCLUDE "audio/music/gsc/clair.asm"
INCLUDE "audio/music/gsc/tintower.asm"
INCLUDE "audio/music/gsc/suicunebattle.asm"


SECTION "Music 10", ROMX

INCLUDE "audio/music/gsc/route26.asm"
INCLUDE "audio/music/gsc/victoryroad.asm"
INCLUDE "audio/music/gsc/indigoplateau.asm"
INCLUDE "audio/music/gsc/championbattle.asm"
INCLUDE "audio/music/gsc/halloffame.asm"
INCLUDE "audio/music/gsc/ssaqua.asm"
INCLUDE "audio/music/gsc/vermilioncity.asm"
INCLUDE "audio/music/gsc/kantogymbattle.asm"


SECTION "Music 11", ROMX

INCLUDE "audio/music/gsc/lavendertown.asm"
INCLUDE "audio/music/gsc/kantowildbattle.asm"
INCLUDE "audio/music/gsc/magnettrain.asm"
INCLUDE "audio/music/gsc/pokemonlullaby.asm"
INCLUDE "audio/music/gsc/celadoncity.asm"
INCLUDE "audio/music/gsc/route12.asm"
INCLUDE "audio/music/gsc/pokeflutechannel.asm"
INCLUDE "audio/music/gsc/viridianforest.asm"


SECTION "Music 12", ROMX

INCLUDE "audio/music/gsc/lookhiker.asm"
INCLUDE "audio/music/gsc/viridiancity.asm"
INCLUDE "audio/music/gsc/route3.asm"
INCLUDE "audio/music/gsc/lookofficer.asm"
INCLUDE "audio/music/gsc/mtmoon.asm"
INCLUDE "audio/music/gsc/mtmoonsquare.asm"
INCLUDE "audio/music/gsc/route1.asm"
INCLUDE "audio/music/gsc/pallettown.asm"


SECTION "Music 13", ROMX

INCLUDE "audio/music/gsc/profoak.asm"
INCLUDE "audio/music/gsc/lookbeauty.asm"
INCLUDE "audio/music/gsc/kantotrainerbattle.asm"
INCLUDE "audio/music/gsc/battletowertheme.asm"
INCLUDE "audio/music/gsc/battletowerlobby.asm"


SECTION "Music 14", ROMX

INCLUDE "audio/music/gsc/credits.asm"
INCLUDE "audio/music/gsc/postcredits.asm"


SECTION "RBY Music 1", ROMX

INCLUDE "audio/music/rby/ceruleancave.asm"
INCLUDE "audio/music/rby/cinnabarmansion.asm"
INCLUDE "audio/music/rby/diglettscave.asm"
INCLUDE "audio/music/rby/indigoplateau.asm"


SECTION "RBY Music 2", ROMX

INCLUDE "audio/music/rby/lavendertown.asm"
INCLUDE "audio/music/rby/lookjessiejames.asm"
INCLUDE "audio/music/rby/pokemontower.asm"
INCLUDE "audio/music/rby/surfingpikachu.asm"


SECTION "RSE Music 1", ROMX

INCLUDE "audio/music/rse/abandonedship.asm"
INCLUDE "audio/music/rse/championbattle.asm"
INCLUDE "audio/music/rse/evergrandecity.asm"
INCLUDE "audio/music/rse/dewfordtown.asm"
INCLUDE "audio/music/rse/frontierbrainbattle.asm"


SECTION "RSE Music 2", ROMX

INCLUDE "audio/music/rse/gymleaderbattle.asm"
INCLUDE "audio/music/rse/meteorfalls.asm"
INCLUDE "audio/music/rse/mountchimney.asm"
INCLUDE "audio/music/rse/mountpyre.asm"
INCLUDE "audio/music/rse/route101.asm"


SECTION "DPPt Music 1", ROMX

INCLUDE "audio/music/dppt/canalavecity.asm"
INCLUDE "audio/music/dppt/championbattle.asm"
INCLUDE "audio/music/dppt/eternaforest.asm"
INCLUDE "audio/music/dppt/gamecorner.asm"
INCLUDE "audio/music/dppt/gymleaderbattle.asm"
INCLUDE "audio/music/dppt/mountcoronet.asm"
INCLUDE "audio/music/dppt/oreburghgate.asm"


SECTION "DPPt Music 2", ROMX

INCLUDE "audio/music/dppt/route203.asm"
INCLUDE "audio/music/dppt/route205.asm"
INCLUDE "audio/music/dppt/route209.asm"
INCLUDE "audio/music/dppt/route210.asm"
INCLUDE "audio/music/dppt/route225.asm"
INCLUDE "audio/music/dppt/starkmountain.asm"
INCLUDE "audio/music/dppt/sunyshorecity.asm"
INCLUDE "audio/music/dppt/trainerbattle.asm"


SECTION "HGSS Music 1", ROMX

INCLUDE "audio/music/hgss/ceruleancity.asm"
INCLUDE "audio/music/hgss/cianwoodcity.asm"
INCLUDE "audio/music/hgss/cinnabarisland.asm"
INCLUDE "audio/music/hgss/hoohbattle.asm"
INCLUDE "audio/music/hgss/lugiabattle.asm"
INCLUDE "audio/music/hgss/lyraencounter.asm" ; shares with lyradeparture.asm
INCLUDE "audio/music/hgss/lyradeparture.asm" ; shares with lyraencounter.asm


SECTION "HGSS Music 2", ROMX

INCLUDE "audio/music/hgss/mart.asm"
INCLUDE "audio/music/hgss/nuggetbridge.asm"
INCLUDE "audio/music/hgss/route47.asm"
INCLUDE "audio/music/hgss/safarizonegate.asm"
INCLUDE "audio/music/hgss/spikyearedpichu.asm"
INCLUDE "audio/music/hgss/summoningdance.asm"


SECTION "BW Music 1", ROMX

INCLUDE "audio/music/bw/blackcity.asm"
INCLUDE "audio/music/bw/celestialtower.asm"
INCLUDE "audio/music/bw/elitefourbattle.asm"
INCLUDE "audio/music/bw/finalpokemon.asm"


SECTION "BW Music 2", ROMX

INCLUDE "audio/music/bw/gymleaderbattle.asm"
INCLUDE "audio/music/bw/route12.asm"
INCLUDE "audio/music/bw/route4.asm"
INCLUDE "audio/music/bw/trainerbattle.asm"
INCLUDE "audio/music/bw/wcsbattle.asm"


SECTION "B2W2 Music 1", ROMX

INCLUDE "audio/music/b2w2/championbattle.asm"


SECTION "B2W2 Music 2", ROMX

INCLUDE "audio/music/b2w2/reversalmountainwhite.asm"
INCLUDE "audio/music/b2w2/roadtoreversalmountain.asm"
INCLUDE "audio/music/b2w2/whitetreehollow.asm"
INCLUDE "audio/music/b2w2/marinetube.asm"


SECTION "XY Music 1", ROMX

INCLUDE "audio/music/xy/bicycle.asm"
INCLUDE "audio/music/xy/frostcavern.asm"
INCLUDE "audio/music/xy/gymleaderbattle.asm"
INCLUDE "audio/music/xy/kantolegendbattle.asm"


SECTION "XY Music 2", ROMX

INCLUDE "audio/music/xy/laverrecity.asm"
INCLUDE "audio/music/xy/powerplant.asm"
INCLUDE "audio/music/xy/rivalbattle.asm"
INCLUDE "audio/music/xy/titlescreen.asm"


SECTION "XY Music 3", ROMX

INCLUDE "audio/music/xy/scaryhouse.asm"
INCLUDE "audio/music/xy/legendarybattle.asm"


SECTION "ORAS Music 1", ROMX

INCLUDE "audio/music/oras/wallybattle.asm"
INCLUDE "audio/music/oras/wallyencounter.asm"


SECTION "ORAS Music 2", ROMX

INCLUDE "audio/music/oras/zinniabattle.asm"
INCLUDE "audio/music/oras/zinniaencounter.asm"


SECTION "SM Music 1", ROMX

INCLUDE "audio/music/sm/elitefourbattle.asm"
INCLUDE "audio/music/sm/motherbeastbattle.asm"


SECTION "SM Music 2", ROMX

INCLUDE "audio/music/sm/trainerbattle.asm"
INCLUDE "audio/music/sm/wildbattle.asm"


SECTION "Prism Music", ROMX

INCLUDE "audio/music/prism/wildbattle.asm"
INCLUDE "audio/music/prism/trainerbattle.asm"
INCLUDE "audio/music/prism/gymleaderbattle.asm"
INCLUDE "audio/music/prism/palettebattle.asm"


SECTION "Go Music", ROMX

INCLUDE "audio/music/go/wildbattle.asm"
INCLUDE "audio/music/go/gymbattle.asm"


SECTION "Stadium Music", ROMX

INCLUDE "audio/music/stadium/mewtwobattle.asm"


SECTION "Movie 2000 Music", ROMX

INCLUDE "audio/music/m02/lugiassong.asm"


SECTION "Sound Effects", ROMX

INCLUDE "audio/sfx.asm"


SECTION "Crystal Sound Effects", ROMX

INCLUDE "audio/sfx_crystal.asm"


SECTION "Cries", ROMX

INCLUDE "data/pokemon/cries.asm"

INCLUDE "audio/cries.asm"
