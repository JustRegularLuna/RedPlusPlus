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
; TODO: Restore custom movesets for special trainers once moves are all in place


SECTION "Enemy Trainer Parties", ROMX

FossilMeteorGroup:

RedGroup:

LeafGroup:

ProfOakGroup:

TraceyGroup:

BrockGroup:
	db "Brock@", TRAINERTYPE_MOVES
	db 12, GEODUDE
		db TACKLE, DEFENSE_CURL, MUD_SLAP, RAPID_SPIN
	db 14, ONIX
		db TACKLE, WRAP, SANDSTORM, ROCK_THROW
	db -1 ; end

MistyGroup:
	db "Misty@", TRAINERTYPE_NORMAL
	db 18, STARYU
	db 21, STARMIE
	db -1 ; end

LtSurgeGroup:
	db "Lt.Surge@", TRAINERTYPE_NORMAL
	db 21, VOLTORB
	db 18, PIKACHU
	db 24, RAICHU
	db -1 ; end

ErikaGroup:
	db "Erika@", TRAINERTYPE_NORMAL
	db 29, VICTREEBEL
	db 24, TANGELA
	db 29, BELLOSSOM
	db -1 ; end

KogaGroup:
	db "Koga@", TRAINERTYPE_NORMAL
	db 37, VENOMOTH
	db 39, MUK
	db 37, CROBAT
	db 43, WEEZING
	db -1 ; end

SabrinaGroup:
	db "Sabrina@", TRAINERTYPE_NORMAL
	db 38, KADABRA
	db 37, MR__MIME
	db 38, ESPEON
	db 43, ALAKAZAM
	db -1 ; end

BlaineGroup:
	db "Blaine@", TRAINERTYPE_NORMAL
	db 42, GROWLITHE
	db 40, PONYTA
	db 42, RAPIDASH
	db 45, ARCANINE
	db 47, MAGMAR
	db -1 ; end

GiovanniGymGroup:
	db "Giovanni@", TRAINERTYPE_NORMAL
	db 45, RHYDON
	db 42, STEELIX
	db 44, NIDOQUEEN
	db 45, NIDOKING
	db 50, RHYPERIOR
	db -1 ; end

GiovanniGroup:
	; Hideout
	db "Giovanni@", TRAINERTYPE_NORMAL
	db 25, ONIX
	db 24, RHYHORN
	db 29, KANGASKHAN
	db -1 ; end

	; Silph Co
	db "Giovanni@", TRAINERTYPE_NORMAL
	db 35, ONIX
	db 37, RHYHORN
	db 37, NIDORINO
	db 41, NIDOQUEEN
	db -1 ; end

LoreleiGroup:
	db "Lorelei@", TRAINERTYPE_NORMAL
	db 54, DEWGONG
	db 53, CLOYSTER
	db 54, SLOWKING
	db 56, JYNX
	db 56, LAPRAS
	db -1 ; end

BrunoGroup:
	db "Bruno@", TRAINERTYPE_NORMAL
	db 53, ONIX
	db 55, HITMONCHAN
	db 55, HITMONLEE
	db 56, STEELIX
	db 58, MACHAMP
	db -1 ; end

AgathaGroup:
	db "Agatha@", TRAINERTYPE_NORMAL
	db 56, MISDREAVUS
	db 56, HONCHKROW
	db 55, HOUNDOOM
	db 58, MISMAGIUS
	db 60, GENGAR
	db -1 ; end

LanceGroup:
	db "Lance@", TRAINERTYPE_NORMAL
	db 58, GYARADOS
	db 56, CHARIZARD
	db 56, KINGDRA
	db 60, AERODACTYL
	db 62, DRAGONITE
	db -1 ; end

Green1Group:
	; Oak's Lab

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, SQUIRTLE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, BULBASAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 5, CHARMANDER
	db -1 ; end

	; Beside Viridian

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 9, PIDGEY
	db 8, SQUIRTLE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 9, PIDGEY
	db 8, BULBASAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 9, PIDGEY
	db 8, CHARMANDER
	db -1 ; end

	; Cerulean

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 18, PIDGEOTTO, 40
	db 15, ABRA, 40
	db 15, RATTATA, 40
	db 17, SQUIRTLE, 40
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 18, PIDGEOTTO, 40
	db 15, ABRA, 40
	db 15, RATTATA, 40
	db 17, BULBASAUR, 40
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 18, PIDGEOTTO, 40
	db 15, ABRA, 40
	db 15, RATTATA, 40
	db 17, CHARMANDER, 40
	db -1 ; end

Green2Group:
	; SS Anne

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 19, PIDGEOTTO
	db 16, RATICATE
	db 18, KADABRA
	db 20, WARTORTLE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 19, PIDGEOTTO
	db 16, RATICATE
	db 18, KADABRA
	db 20, IVYSAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 19, PIDGEOTTO
	db 16, RATICATE
	db 18, KADABRA
	db 20, CHARMELEON
	db -1 ; end

	; Pokemon Tower

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 25, PIDGEOTTO
	db 23, GROWLITHE
	db 22, EXEGGCUTE
	db 20, KADABRA
	db 25, WARTORTLE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 25, PIDGEOTTO
	db 23, GYARADOS
	db 22, GROWLITHE
	db 20, KADABRA
	db 25, IVYSAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 25, PIDGEOTTO
	db 23, EXEGGCUTE
	db 22, GYARADOS
	db 20, KADABRA
	db 25, CHARMELEON
	db -1 ; end

	; Silph Co

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 37, PIDGEOT
	db 38, GROWLITHE
	db 35, EXEGGCUTE
	db 35, ALAKAZAM
	db 40, BLASTOISE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 37, PIDGEOT
	db 38, GYARADOS
	db 38, GROWLITHE
	db 35, ALAKAZAM
	db 40, VENUSAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 37, PIDGEOT
	db 35, EXEGGCUTE
	db 38, GYARADOS
	db 35, ALAKAZAM
	db 40, CHARIZARD
	db -1 ; end

	; Before Pokemon Leage

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 47, PIDGEOT, 252
	db 45, RHYHORN, 252
	db 45, GROWLITHE, 252
	db 47, EXEGGCUTE, 252
	db 50, ALAKAZAM, 252
	db 53, BLASTOISE, 252
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 47, PIDGEOT, 252
	db 45, RHYHORN, 252
	db 45, GYARADOS, 252
	db 47, GROWLITHE, 252
	db 50, ALAKAZAM, 252
	db 53, VENUSAUR, 252
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_EVS | TRAINERTYPE_NORMAL
	db 47, PIDGEOT, 252
	db 45, RHYHORN, 252
	db 45, EXEGGCUTE, 252
	db 47, GYARADOS, 252
	db 50, ALAKAZAM, 252
	db 53, CHARIZARD, 252
	db -1 ; end

Green3Group:
	; Champion

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 61, PIDGEOT
	db 59, ALAKAZAM
	db 61, RHYDON
	db 61, ARCANINE
	db 63, EXEGGUTOR
	db 65, BLASTOISE
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 61, PIDGEOT
	db 59, ALAKAZAM
	db 61, RHYDON
	db 61, GYARADOS
	db 63, ARCANINE
	db 65, VENUSAUR
	db -1 ; end

	db "<RIVAL>@", TRAINERTYPE_NORMAL
	db 61, PIDGEOT
	db 59, ALAKAZAM
	db 61, RHYDON
	db 63, EXEGGUTOR
	db 61, GYARADOS
	db 65, CHARIZARD
	db -1 ; end

FlanneryGroup:
	db "Flannery@", TRAINERTYPE_NORMAL
	db 33, SLUGMA
	db 33, SLUGMA
	db 36, TORKOAL
	db -1 ; end

JanineGroup:
	db "Janine@", TRAINERTYPE_NORMAL
	db 44, CROBAT
	db 44, WEEZING
	db 45, VENOMOTH
	db -1 ; end

YoungsterGroup:
; Route 3
	db "Ben@", TRAINERTYPE_NORMAL
	db 11, ZIGZAGOON
	db 11, RATTATA
	db -1 ; end

	db "Calvin@", TRAINERTYPE_NORMAL
	db 14, SPEAROW
	db -1 ; end

; Mt. Moon 1F
	db "Josh@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db 10, RATTATA
	db 10, ZUBAT
	db -1 ; end

; Route 24
	db "Timmy@", TRAINERTYPE_NORMAL
	db 14, RATTATA
	db 14, EKANS
	db 14, ZUBAT
	db -1 ; end

; Route 25
	db "Joel@", TRAINERTYPE_NORMAL
	db 15, RATTATA
	db 15, SPEAROW
	db -1 ; end

	db "Dan@", TRAINERTYPE_NORMAL
	db 17, SLOWPOKE
	db -1 ; end

	db "Ian@", TRAINERTYPE_NORMAL
	db 14, EKANS
	db 14, SANDSHREW
	db -1 ; end

; SS Anne 1F Rooms
	db "Tyler@", TRAINERTYPE_NORMAL
	db 21, NIDORAN_M
	db -1 ; end

; Route 11
	db "Eddie@", TRAINERTYPE_NORMAL
	db 21, EKANS
	db -1 ; end

	db "Dillon@", TRAINERTYPE_NORMAL
	db 19, SANDSHREW
	db 19, ZUBAT
	db -1 ; end

	db "Yasu@", TRAINERTYPE_NORMAL
	db 17, RATTATA
	db 17, RATTATA
	db 17, RATICATE
	db -1 ; end

	db "Dave@", TRAINERTYPE_NORMAL
	db 18, NIDORAN_M
	db 18, NIDORINO
	db -1 ; end

BugCatcherGroup:
; Viridian Forest
	db "Rick@", TRAINERTYPE_NORMAL
	db 6, WEEDLE
	db 6, CATERPIE
	db -1 ; end

	db "Doug@", TRAINERTYPE_NORMAL
	db 7, WEEDLE
	db 7, KAKUNA
	db 7, WEEDLE
	db -1 ; end

	db "Tajiri@", TRAINERTYPE_NORMAL
	db 6, METAPOD
	db 6, CATERPIE
	db 6, METAPOD
	db -1 ; end

	db "Sammy@", TRAINERTYPE_NORMAL
	db 9, WEEDLE
	db -1 ; end

; Route 3
	db "Colton@", TRAINERTYPE_NORMAL
	db 10, CATERPIE
	db 10, WEEDLE
	db 10, CATERPIE
	db -1 ; end

	db "Greg@", TRAINERTYPE_NORMAL
	db 9, WEEDLE
	db 9, KAKUNA
	db 9, CATERPIE
	db 9, METAPOD
	db -1 ; end

	db "James@", TRAINERTYPE_NORMAL
	db 11, CATERPIE
	db 11, METAPOD
	db -1 ; end

; Mt. Moon 1F
	db "Kent@", TRAINERTYPE_NORMAL
	db 11, WEEDLE
	db 11, KAKUNA
	db -1 ; end

	db "Robby@", TRAINERTYPE_NORMAL
	db 10, CATERPIE
	db 10, METAPOD
	db 10, CATERPIE
	db -1 ; end

; Route 24
	db "Cale@", TRAINERTYPE_NORMAL
	db 14, CATERPIE
	db 14, WEEDLE
	db -1 ; end

; Route 6
	db "Keigo@", TRAINERTYPE_NORMAL
	db 16, WEEDLE
	db 16, CATERPIE
	db 16, WEEDLE
	db -1 ; end

	db "Elijah@", TRAINERTYPE_NORMAL
	db 20, BUTTERFREE
	db -1 ; end

; Route 9
	db "Brent@", TRAINERTYPE_NORMAL
	db 19, BEEDRILL
	db 19, BEEDRILL
	db -1 ; end

	db "Conner@", TRAINERTYPE_NORMAL
	db 20, CATERPIE
	db 20, WEEDLE
	db 20, VENONAT
	db -1 ; end

LassGroup:
; Viridian Forest
	db "Sarah@", TRAINERTYPE_NORMAL
	db 6, NIDORAN_F
	db 6, NIDORAN_M
	db -1 ; end

; Route 3
	db "Janice@", TRAINERTYPE_NORMAL
	db 9, PIDGEY
	db 9, PIDGEY
	db -1 ; end

	db "Sally@", TRAINERTYPE_NORMAL
	db 10, RATTATA
	db 10, NIDORAN_M
	db -1 ; end

	db "Robin@", TRAINERTYPE_NORMAL
	db 14, JIGGLYPUFF
	db -1 ; end

; Route 4
	db "Crissy@", TRAINERTYPE_NORMAL
	db 31, PARAS
	db 31, PARAS
	db 31, PARASECT
	db -1 ; end

; Mt. Moon 1F
	db "Miriam@", TRAINERTYPE_NORMAL
	db 11, ODDISH
	db 11, BELLSPROUT
	db -1 ; end

	db "Iris@", TRAINERTYPE_NORMAL
	db 14, CLEFAIRY
	db -1 ; end

; Route 24
	db "Reli@", TRAINERTYPE_NORMAL
	db 16, PIDGEY
	db 16, NIDORAN_F
	db -1 ; end

	db "Ali@", TRAINERTYPE_NORMAL
	db 12, PIDGEY
	db 12, ODDISH
	db 12, BELLSPROUT
	db -1 ; end

; Route 25
	db "Kelsey@", TRAINERTYPE_NORMAL
	db 15, NIDORAN_M
	db 15, NIDORAN_F
	db -1 ; end

	db "Haley@", TRAINERTYPE_NORMAL
	db 13, ODDISH
	db 13, PIDGEY
	db 13, ODDISH
	db -1 ; end

; SS Anne 1F Rooms
	db "Ann@", TRAINERTYPE_NORMAL
	db 18, TOGETIC
	db 18, ESPEON
	db -1 ; end

; SS Anne 2F Rooms
	db "Dawn@", TRAINERTYPE_NORMAL
	db 18, RATTATA
	db 18, PIKACHU
	db -1 ; end

; Route 8
	db "Paige@", TRAINERTYPE_NORMAL
	db 23, NIDORAN_F
	db 23, NIDORINA
	db -1 ; end

	db "Andrea@", TRAINERTYPE_NORMAL
	db 24, MEOWTH
	db 24, MEOWTH
	db 24, MEOWTH
	db -1 ; end

	db "Megan@", TRAINERTYPE_NORMAL
	db 19, PIDGEY
	db 19, RATTATA
	db 19, NIDORAN_M
	db 19, MEOWTH
	db 19, PIKACHU
	db -1 ; end

	db "Julia@", TRAINERTYPE_NORMAL
	db 22, CLEFAIRY
	db 22, CLEFAIRY
	db -1 ; end

; Celadon Gym
	db "Kay@", TRAINERTYPE_NORMAL
	db 23, BELLSPROUT
	db 23, WEEPINBELL
	db -1 ; end

	db "Lisa@", TRAINERTYPE_NORMAL
	db 23, ODDISH
	db 23, GLOOM
	db -1 ; end

SailorGroup:
; SS Anne Deck
	db "Edmond@", TRAINERTYPE_NORMAL
	db 18, MACHOP
	db 18, SHELLDER
	db -1 ; end

	db "Trevor@", TRAINERTYPE_NORMAL
	db 17, MACHOP
	db 17, TENTACOOL
	db -1 ; end

; SS Anne B1F Rooms
	db "Leonard@", TRAINERTYPE_NORMAL
	db 21, SHELLDER
	db -1 ; end

	db "Duncan@", TRAINERTYPE_NORMAL
	db 17, HORSEA
	db 17, SHELLDER
	db 17, TENTACOOL
	db -1 ; end

	db "Huey@", TRAINERTYPE_NORMAL
	db 18, TENTACOOL
	db 18, STARYU
	db -1 ; end

	db "Dylan@", TRAINERTYPE_NORMAL
	db 17, HORSEA
	db 17, HORSEA
	db 17, HORSEA
	db -1 ; end

	db "Phillip@", TRAINERTYPE_NORMAL
	db 20, MACHOP
	db -1 ; end

; Vermilion Gym
	db "Dwayne@", TRAINERTYPE_NORMAL
	db 21, PIKACHU
	db 21, PIKACHU
	db -1 ; end

CamperGroup:
; Pewter Gym
	db "Liam@", TRAINERTYPE_NORMAL
	db 9, DIGLETT
	db 9, SANDSHREW
	db -1 ; end

; Route 24
	db "Shane@", TRAINERTYPE_NORMAL
	db 14, RATTATA
	db 14, EKANS
	db -1 ; end

	db "Ethan@", TRAINERTYPE_NORMAL
	db 18, MANKEY
	db -1 ; end

; Route 25
	db "Flint@", TRAINERTYPE_NORMAL
	db 14, RATTATA
	db 14, EKANS
	db -1 ; end

; Route 6
	db "Ricky@", TRAINERTYPE_NORMAL
	db 20, SQUIRTLE
	db -1 ; end

	db "Jeff@", TRAINERTYPE_NORMAL
	db 16, SPEAROW
	db 16, RATICATE
	db -1 ; end

; Route 9
	db "Chris@", TRAINERTYPE_NORMAL
	db 21, GROWLITHE
	db 21, HOUNDOUR
	db -1 ; end

	db "Drew@", TRAINERTYPE_NORMAL
	db 19, RATTATA
	db 19, DIGLETT
	db 19, EKANS
	db 19, SANDSHREW
	db -1 ; end

; Route 12
	db "Justin@", TRAINERTYPE_NORMAL
	db 29, NIDORAN_M
	db 29, NIDORINO
	db -1 ; end

PicnickerGroup:
; Route 6
	db "Nancy@", TRAINERTYPE_NORMAL
	db 16, RATTATA
	db 16, PIKACHU
	db -1 ; end

	db "Isabelle@", TRAINERTYPE_NORMAL
	db 16, PIDGEY
	db 16, PIDGEY
	db 16, PIDGEY
	db -1 ; end

; Route 9
	db "Alicia@", TRAINERTYPE_NORMAL
	db 18, ODDISH
	db 18, BELLSPROUT
	db 18, ODDISH
	db 18, BELLSPROUT
	db -1 ; end

	db "Caitlin@", TRAINERTYPE_NORMAL
	db 23, MEOWTH
	db -1 ; end

; Route 10
	db "Heidi@", TRAINERTYPE_NORMAL
	db 20, PIKACHU
	db 20, CLEFAIRY
	db -1 ; end

	db "Carol@", TRAINERTYPE_NORMAL
	db 21, PIDGEY
	db 21, PIDGEOTTO
	db -1 ; end

; Celadon Gym
	db "Tina@", TRAINERTYPE_NORMAL
	db 24, BULBASAUR
	db 24, IVYSAUR
	db -1 ; end

; Route 13
	db "Susie@", TRAINERTYPE_NORMAL
	db 24, PIDGEY
	db 24, MEOWTH
	db 24, RATTATA
	db 24, PIKACHU
	db 24, MEOWTH
	db -1 ; end

	db "Valerie@", TRAINERTYPE_NORMAL
	db 30, POLIWAG
	db 30, POLIWAG
	db -1 ; end

	db "Gwen@", TRAINERTYPE_NORMAL
	db 27, PIDGEY
	db 27, MEOWTH
	db 27, PIDGEY
	db 27, PIDGEOTTO
	db -1 ; end

	db "Alma@", TRAINERTYPE_NORMAL
	db 28, GOLDEEN
	db 28, POLIWAG
	db 28, HORSEA
	db -1 ; end

; Route 20
	db "Missy@", TRAINERTYPE_NORMAL
	db 31, GOLDEEN
	db 31, SEAKING
	db -1 ; end

	db "Irene@", TRAINERTYPE_NORMAL
	db 30, TENTACOOL
	db 30, HORSEA
	db 30, SEEL
	db -1 ; end

; Rock Tunnel 1F
	db "Leah@", TRAINERTYPE_NORMAL
	db 22, BELLSPROUT
	db 22, CLEFAIRY
	db -1 ; end

	db "Dana@", TRAINERTYPE_NORMAL
	db 20, MEOWTH
	db 20, ODDISH
	db 20, PIDGEY
	db -1 ; end

	db "Ariana@", TRAINERTYPE_NORMAL
	db 19, PIDGEY
	db 19, RATTATA
	db 19, RATTATA
	db 19, BELLSPROUT
	db -1 ; end

; Rock Tunnel B1F
	db "Sofia@", TRAINERTYPE_NORMAL
	db 21, JIGGLYPUFF
	db 21, PIDGEY
	db 21, MEOWTH
	db -1 ; end

	db "Martha@", TRAINERTYPE_NORMAL
	db 22, ODDISH
	db 22, BULBASAUR
	db -1 ; end

; Route 15
	db "Kindra@", TRAINERTYPE_NORMAL
	db 28, GLOOM
	db 28, ODDISH
	db 28, ODDISH
	db -1 ; end

	db "Becky@", TRAINERTYPE_NORMAL
	db 29, PIKACHU
	db 29, RAICHU
	db -1 ; end

	db "Celia@", TRAINERTYPE_NORMAL
	db 33, CLEFAIRY
	db -1 ; end

	db "Yazmin@", TRAINERTYPE_NORMAL
	db 29, BELLSPROUT
	db 29, ODDISH
	db 29, TANGELA
	db -1 ; end

CosplayGirlGroup:
; Rock Tunnel B1F
	db "Jessica@", TRAINERTYPE_NORMAL
	db 22, PIKACHU
	db 22, CUBONE
	db -1 ; end

PokemaniacGroup:
; Route 10
	db "Mark@", TRAINERTYPE_NORMAL
	db 30, RHYHORN
	db 30, LICKITUNG
	db -1 ; end

	db "Herman@", TRAINERTYPE_NORMAL
	db 20, CUBONE
	db 20, SLOWPOKE
	db -1 ; end

; Rock Tunnel 1F
	db "Ashton@", TRAINERTYPE_NORMAL
	db 23, CUBONE
	db 23, SLOWPOKE
	db -1 ; end

; Rock Tunnel B1F
	db "Scott@", TRAINERTYPE_NORMAL
	db 20, SLOWPOKE
	db 20, SLOWPOKE
	db 20, SLOWPOKE
	db -1 ; end

	db "Winston@", TRAINERTYPE_NORMAL
	db 25, SLOWPOKE
	db -1 ; end

; Victory Road 2F
	db "Dawson@", TRAINERTYPE_NORMAL
	db 40, CHARMELEON
	db 40, LAPRAS
	db 40, LICKITUNG
	db -1 ; end

SuperNerdGroup:
; Mt. Moon 1F
	db "Jovan@", TRAINERTYPE_NORMAL
	db 11, MAGNEMITE
	db 11, VOLTORB
	db -1 ; end

; Mt. Moon B2F
	db "Miguel@", TRAINERTYPE_NORMAL
	db 16, PIKACHU
	db 16, UMBREON
	db -1 ; end

; Route 8
	db "Aidan@", TRAINERTYPE_NORMAL
	db 20, VOLTORB
	db 20, VOLTORB
	db 20, MAGNEMITE
	db 20, KOFFING
	db -1 ; end

	db "Glenn@", TRAINERTYPE_NORMAL
	db 22, GRIMER
	db 22, MUK
	db 22, GRIMER
	db -1 ; end

	db "Leslie@", TRAINERTYPE_NORMAL
	db 26, KOFFING
	db -1 ; end

; Cinnabar Gym
	db "Erik@", TRAINERTYPE_NORMAL
	db 36, VULPIX
	db 36, VULPIX
	db 36, NINETALES
	db -1 ; end

	db "Avery@", TRAINERTYPE_NORMAL
	db 34, PONYTA
	db 34, CHARMANDER
	db 34, VULPIX
	db 34, GROWLITHE
	db -1 ; end

	db "Derek@", TRAINERTYPE_NORMAL
	db 41, RAPIDASH
	db -1 ; end

	db "Zac@", TRAINERTYPE_NORMAL
	db 37, GROWLITHE
	db 37, VULPIX
	db -1 ; end

HikerGroup:
; Mt. Moon 1F
	db "Marcos@", TRAINERTYPE_NORMAL
	db 10, GEODUDE
	db 10, MACHOP
	db 10, ONIX
	db -1 ; end

; Route 25
	db "Franklin@", TRAINERTYPE_NORMAL
	db 15, MACHOP
	db 15, GEODUDE
	db -1 ; end

	db "Nob@", TRAINERTYPE_NORMAL
	db 13, GEODUDE
	db 13, MANKEY
	db 13, MACHOP
	db -1 ; end

	db "Wayne@", TRAINERTYPE_NORMAL
	db 17, DIGLETT
	db 17, ONIX
	db -1 ; end

; Route 9
	db "Alan@", TRAINERTYPE_NORMAL
	db 21, GEODUDE
	db 21, ONIX
	db -1 ; end

	db "Brice@", TRAINERTYPE_NORMAL
	db 20, GEODUDE
	db 20, MACHOP
	db 20, GEODUDE
	db -1 ; end

	db "Jeremy@", TRAINERTYPE_NORMAL
	db 20, MACHOP
	db 20, ONIX
	db -1 ; end

; Route 10
	db "Clark@", TRAINERTYPE_NORMAL
	db 21, MACHOP
	db 21, ONIX
	db -1 ; end

	db "Trent@", TRAINERTYPE_NORMAL
	db 19, ONIX
	db 19, GRAVELER
	db -1 ; end

; Rock Tunnel B1F
	db "Dudley@", TRAINERTYPE_NORMAL
	db 21, GEODUDE
	db 21, GEODUDE
	db 21, GRAVELER
	db -1 ; end

	db "Allen@", TRAINERTYPE_NORMAL
	db 25, SKARMORY
	db -1 ; end

	db "Eric@", TRAINERTYPE_NORMAL
	db 20, MACHOP
	db 20, ONIX
	db -1 ; end

; Rock Tunnel 1F
	db "Lenny@", TRAINERTYPE_NORMAL
	db 19, GEODUDE
	db 19, MACHOP
	db 19, GEODUDE
	db 19, GEODUDE
	db -1 ; end

	db "Oliver@", TRAINERTYPE_NORMAL
	db 20, ONIX
	db 20, ONIX
	db 20, GEODUDE
	db -1 ; end

	db "Lucas@", TRAINERTYPE_NORMAL
	db 21, GEODUDE
	db 21, GRAVELER
	db -1 ; end

BikerGroup:
; Route 13
	db "Jared@", TRAINERTYPE_NORMAL
	db 28, KOFFING
	db 28, GRIMER
	db 28, EKANS
	db -1 ; end

; Route 14
	db "Malik@", TRAINERTYPE_NORMAL
	db 29, KOFFING
	db 29, GRIMER
	db -1 ; end

	db "Lukas@", TRAINERTYPE_NORMAL
	db 26, KOFFING
	db 26, KOFFING
	db 26, GRIMER
	db 26, KOFFING
	db -1 ; end

	db "Isaac@", TRAINERTYPE_NORMAL
	db 28, SLUGMA
	db 28, SLUGMA
	db 28, KOFFING
	db -1 ; end

	db "Gerald@", TRAINERTYPE_NORMAL
	db 29, MURKROW
	db 29, MUK
	db -1 ; end

; Route 15
	db "Ernest@", TRAINERTYPE_NORMAL
	db 25, KOFFING
	db 25, GRIMER
	db -1 ; end

	db "Alex@", TRAINERTYPE_NORMAL
	db 28, GRIMER
	db 28, SLUGMA
	db -1 ; end

; Route 16
	db "Lao@", TRAINERTYPE_NORMAL
	db 29, GRIMER
	db 29, KOFFING
	db -1 ; end

	db "Hideo@", TRAINERTYPE_NORMAL
	db 33, WEEZING
	db -1 ; end

	db "Ruben@", TRAINERTYPE_NORMAL
	db 28, WEEZING
	db 28, KOFFING
	db 28, WEEZING
	db -1 ; end

; Route 17
	db "Virgil@", TRAINERTYPE_NORMAL
	db 28, WEEZING
	db 28, KOFFING
	db 28, WEEZING
	db -1 ; end

	db "Billy@", TRAINERTYPE_NORMAL
	db 33, MUK
	db -1 ; end

	db "Nikolas@", TRAINERTYPE_NORMAL
	db 29, VOLTORB
	db 29, MAGNEMITE
	db -1 ; end

	db "Jaxon@", TRAINERTYPE_NORMAL
	db 29, HOUNDOUR
	db 29, MURKROW
	db -1 ; end

	db "William@", TRAINERTYPE_NORMAL
	db 25, KOFFING
	db 25, WEEZING
	db 25, KOFFING
	db 25, KOFFING
	db 25, WEEZING
	db -1 ; end

BurglarGroup:
; Cinnabar Gym
	db "Quinn@", TRAINERTYPE_NORMAL
	db 36, GROWLITHE
	db 36, VULPIX
	db 36, NINETALES
	db -1 ; end

	db "Ramon@", TRAINERTYPE_NORMAL
	db 41, TORKOAL
	db -1 ; end

	db "Dusty@", TRAINERTYPE_NORMAL
	db 37, VULPIX
	db 37, GROWLITHE
	db -1 ; end

; Mansion 2F
	db "Arnie@", TRAINERTYPE_NORMAL
	db 34, CHARMANDER
	db 34, CHARMELEON
	db -1 ; end

; Mansion 3F
	db "Simon@", TRAINERTYPE_NORMAL
	db 38, NINETALES
	db -1 ; end

; Mansion B1F
	db "Lewis@", TRAINERTYPE_NORMAL
	db 34, HOUNDOUR
	db 34, PONYTA
	db -1 ; end

EngineerGroup:
; Route 11
	db "Braxton@", TRAINERTYPE_NORMAL
	db 21, MAGNEMITE
	db 21, CHINCHOU
	db -1 ; end

	db "Bernie@", TRAINERTYPE_NORMAL
	db 18, MAGNEMITE
	db 18, PIKACHU
	db -1 ; end

CoupleGroup:
; Route 6
	db "Mike & Nat@", TRAINERTYPE_NORMAL
	db 20, CUBONE
	db 20, WEEPINBELL
	db -1 ; end

FisherGroup:
; SS Anne 2F Rooms
	db "Dale@", TRAINERTYPE_NORMAL
	db 17, GOLDEEN
	db 17, TENTACOOL
	db 17, GOLDEEN
	db -1 ; end

; SS Anne B1F Rooms
	db "Barny@", TRAINERTYPE_NORMAL
	db 17, TENTACOOL
	db 17, STARYU
	db 17, SHELLDER
	db -1 ; end

; Route 12
	db "Ned@", TRAINERTYPE_NORMAL
	db 22, GOLDEEN
	db 22, POLIWAG
	db 22, GOLDEEN
	db -1 ; end

	db "Chip@", TRAINERTYPE_NORMAL
	db 24, TENTACOOL
	db 24, GOLDEEN
	db -1 ; end

	db "Hank@", TRAINERTYPE_NORMAL
	db 27, GOLDEEN
	db -1 ; end

	db "Elliot@", TRAINERTYPE_NORMAL
	db 21, POLIWAG
	db 21, SHELLDER
	db 21, GOLDEEN
	db 21, HORSEA
	db -1 ; end

	db "Andrew@", TRAINERTYPE_NORMAL
	db 24, MAGIKARP
	db 24, MAGIKARP
	db -1 ; end

; Route 21
	db "Ronald@", TRAINERTYPE_NORMAL
	db 28, SEAKING
	db 28, GOLDEEN
	db 28, SEAKING
	db 28, SEAKING
	db -1 ; end

	db "Claude@", TRAINERTYPE_NORMAL
	db 31, SHELLDER
	db 31, CLOYSTER
	db -1 ; end

	db "Wade@", TRAINERTYPE_NORMAL
	db 27, MAGIKARP
	db 27, MAGIKARP
	db 27, MAGIKARP
	db 27, MAGIKARP
	db 27, MAGIKARP
	db 27, MAGIKARP
	db -1 ; end

	db "Jimmy@", TRAINERTYPE_NORMAL
	db 33, SEAKING
	db 33, GOLDEEN
	db -1 ; end

SwimmerGroup:
; Cerulean Gym
	db "Luis@", TRAINERTYPE_NORMAL
	db 16, HORSEA
	db 16, SHELLDER
	db -1 ; end

; Route 19
	db "Richard@", TRAINERTYPE_NORMAL
	db 30, TENTACOOL
	db 30, SHELLDER
	db -1 ; end

	db "Reece@", TRAINERTYPE_NORMAL
	db 29, GOLDEEN
	db 29, HORSEA
	db 29, STARYU
	db -1 ; end

	db "Matthew@", TRAINERTYPE_NORMAL
	db 30, POLIWAG
	db 30, POLIWHIRL
	db -1 ; end

	db "Douglas@", TRAINERTYPE_NORMAL
	db 27, HORSEA
	db 27, TENTACOOL
	db 27, TENTACOOL
	db 27, GOLDEEN
	db -1 ; end

	db "David@", TRAINERTYPE_NORMAL
	db 29, GOLDEEN
	db 29, SHELLDER
	db 29, SEAKING
	db -1 ; end

	db "Tony@", TRAINERTYPE_NORMAL
	db 30, HORSEA
	db 30, HORSEA
	db -1 ; end

	db "Axle@", TRAINERTYPE_NORMAL
	db 27, TENTACOOL
	db 27, TENTACOOL
	db 27, STARYU
	db 27, HORSEA
	db 27, TENTACRUEL
	db -1 ; end

; Route 20
	db "Barry@", TRAINERTYPE_NORMAL
	db 31, SHELLDER
	db 31, CLOYSTER
	db -1 ; end

	db "Dean@", TRAINERTYPE_NORMAL
	db 35, STARYU
	db -1 ; end

	db "Darrin@", TRAINERTYPE_NORMAL
	db 28, HORSEA
	db 28, HORSEA
	db 28, SEADRA
	db 28, HORSEA
	db -1 ; end

; Route 21
	db "Spencer@", TRAINERTYPE_NORMAL
	db 33, SEADRA
	db 33, TENTACRUEL
	db -1 ; end

	db "Jack@", TRAINERTYPE_NORMAL
	db 37, STARMIE
	db -1 ; end

	db "Jerome@", TRAINERTYPE_NORMAL
	db 33, STARYU
	db 33, WARTORTLE
	db -1 ; end

	db "Roland@", TRAINERTYPE_NORMAL
	db 32, CHINCHOU
	db 32, LANTURN
	db 32, STARMIE
	db -1 ; end

	db "Josiah@", TRAINERTYPE_NORMAL
	db 31, TENTACOOL
	db 31, TENTACOOL
	db 31, TENTACRUEL
	db -1 ; end

CueBallGroup:
; Route 16
	db "Koji@", TRAINERTYPE_NORMAL
	db 28, MACHOP
	db 28, MANKEY
	db 28, MACHOP
	db -1 ; end

	db "Luke@", TRAINERTYPE_NORMAL
	db 29, MANKEY
	db 29, MACHOP
	db -1 ; end

	db "Chad@", TRAINERTYPE_NORMAL
	db 33, MACHOP
	db -1 ; end

; Route 17
	db "Raul@", TRAINERTYPE_NORMAL
	db 29, MANKEY
	db 29, PRIMEAPE
	db -1 ; end

	db "Isaiah@", TRAINERTYPE_NORMAL
	db 29, MACHOP
	db 29, MACHOKE
	db -1 ; end

	db "Zeek@", TRAINERTYPE_NORMAL
	db 33, MACHOKE
	db -1 ; end

	db "Jamal@", TRAINERTYPE_NORMAL
	db 26, MANKEY
	db 26, MANKEY
	db 26, MACHOKE
	db 26, MACHOP
	db -1 ; end

	db "Corey@", TRAINERTYPE_NORMAL
	db 29, PRIMEAPE
	db 29, MACHOKE
	db -1 ; end

GamblerGroup:
; Route 11
	db "Hugo@", TRAINERTYPE_NORMAL
	db 18, POLIWAG
	db 18, HORSEA
	db -1 ; end

	db "Jasper@", TRAINERTYPE_NORMAL
	db 18, BELLSPROUT
	db 18, ODDISH
	db -1 ; end

	db "Dirk@", TRAINERTYPE_NORMAL
	db 18, VOLTORB
	db 18, MAGNEMITE
	db -1 ; end

	db "Darian@", TRAINERTYPE_NORMAL
	db 18, GROWLITHE
	db 18, VULPIX
	db -1 ; end

; Route 8
	db "Stan@", TRAINERTYPE_NORMAL
	db 22, POLIWAG
	db 22, POLIWAG
	db 22, POLIWHIRL
	db -1 ; end

	db "Rich@", TRAINERTYPE_NORMAL
	db 24, GROWLITHE
	db 24, VULPIX
	db -1 ; end

SwimmerFGroup:
; Cerulean Gym
	db "Colby@", TRAINERTYPE_NORMAL
	db 19, GOLDEEN
	db -1 ; end

; Route 19
	db "Anya@", TRAINERTYPE_NORMAL
	db 27, POLIWAG
	db 27, GOLDEEN
	db 27, SEAKING
	db 27, GOLDEEN
	db 27, POLIWAG
	db -1 ; end

	db "Alice@", TRAINERTYPE_NORMAL
	db 30, GOLDEEN
	db 30, SEAKING
	db -1 ; end

	db "Connie@", TRAINERTYPE_NORMAL
	db 29, STARYU
	db 29, STARYU
	db 29, STARYU
	db -1 ; end

; Route 20
	db "Shirley@", TRAINERTYPE_NORMAL
	db 30, SEADRA
	db 30, HORSEA
	db 30, SEADRA
	db -1 ; end

	db "Debra@", TRAINERTYPE_NORMAL
	db 30, TENTACOOL
	db 30, HORSEA
	db 30, SEEL
	db -1 ; end

	db "Melissa@", TRAINERTYPE_NORMAL
	db 31, GOLDEEN
	db 31, SEAKING
	db -1 ; end

	db "Tiffany@", TRAINERTYPE_NORMAL
	db 35, SEAKING
	db -1 ; end

	db "Nora@", TRAINERTYPE_NORMAL
	db 30, SHELLDER
	db 30, SHELLDER
	db 30, CLOYSTER
	db -1 ; end

	db "Mina@", TRAINERTYPE_NORMAL
	db 31, POLIWAG
	db 31, SEAKING
	db -1 ; end

BeautyGroup:
; Celadon Gym
	db "Tamia@", TRAINERTYPE_NORMAL
	db 24, ODDISH
	db 24, GLOOM
	db 24, BELLOSSOM
	db -1 ; end

	db "Bridget@", TRAINERTYPE_NORMAL
	db 24, BELLSPROUT
	db 24, WEEPINBELL
	db -1 ; end

	db "Lori@", TRAINERTYPE_NORMAL
	db 26, EXEGGCUTE
	db -1 ; end

; Route 13
	db "Lola@", TRAINERTYPE_NORMAL
	db 27, RATTATA
	db 27, PIKACHU
	db 27, RATTATA
	db -1 ; end

	db "Sheila@", TRAINERTYPE_NORMAL
	db 29, CLEFAIRY
	db 29, MEOWTH
	db -1 ; end

; Route 15
	db "Grace@", TRAINERTYPE_NORMAL
	db 29, PIDGEOTTO
	db 29, WIGGLYTUFF
	db -1 ; end

	db "Olivia@", TRAINERTYPE_NORMAL
	db 29, BULBASAUR
	db 29, IVYSAUR
	db -1 ; end

PsychicGroup:
; Saffron Gym
	db "Johan@", TRAINERTYPE_NORMAL
	db 31, KADABRA
	db 31, SLOWPOKE
	db 31, MR__MIME
	db 31, KADABRA
	db -1 ; end

	db "Tyron@", TRAINERTYPE_NORMAL
	db 34, MR__MIME
	db 34, KADABRA
	db -1 ; end

	db "Cameron@", TRAINERTYPE_NORMAL
	db 33, SLOWPOKE
	db 33, SLOWBRO
	db 33, SLOWKING
	db -1 ; end

	db "Preston@", TRAINERTYPE_NORMAL
	db 38, SLOWKING
	db -1 ; end

RockerFGroup:
; Vermilion Gym
	db "Debbie@", TRAINERTYPE_NORMAL
	db 20, VOLTORB
	db 20, VOLTORB
	db 20, VOLTORB
	db -1 ; end

RockerGroup:
; Route 12
	db "C.C.@", TRAINERTYPE_NORMAL
	db 29, EKANS
	db 29, ARBOK
	db -1 ; end

JugglerGroup:
; Fuchsia Gym
	db "Nate@", TRAINERTYPE_NORMAL
	db 31, GRIMER
	db 31, MUK
	db 31, KOFFING
	db -1 ; end

	db "Kirk@", TRAINERTYPE_NORMAL
	db 34, GRIMER
	db 34, MUK
	db 34, TENTACRUEL
	db -1 ; end

	db "Kayden@", TRAINERTYPE_NORMAL
	db 38, CROBAT
	db 38, MUK
	db -1 ; end

	db "Shawn@", TRAINERTYPE_NORMAL
	db 34, GOLBAT
	db 34, WEEZING
	db 34, MUK
	db -1 ; end

; Silph Co. 5F
	db "Dalton@", TRAINERTYPE_NORMAL
	db 29, KADABRA
	db 29, MR__MIME
	db -1 ; end

; Victory Road 2F
	db "Nelson@", TRAINERTYPE_NORMAL
	db 41, DROWZEE
	db 41, HYPNO
	db 41, KADABRA
	db 41, KADABRA
	db -1 ; end

	db "Gregory@", TRAINERTYPE_NORMAL
	db 48, MR__MIME
	db -1 ; end

TamerGroup:
; Fuchsia Gym
	db "Phil@", TRAINERTYPE_NORMAL
	db 34, NIDORINO
	db 34, ARBOK
	db -1 ; end

	db "Edgar@", TRAINERTYPE_NORMAL
	db 33, ARBOK
	db 33, NIDORINO
	db 33, ARBOK
	db -1 ; end

; Viridian Gym
	db "Evan@", TRAINERTYPE_NORMAL
	db 43, RHYHORN
	db -1 ; end

	db "Cole@", TRAINERTYPE_NORMAL
	db 39, ARBOK
	db 39, TAUROS
	db -1 ; end

; Victory Road 2F
	db "Vincent@", TRAINERTYPE_NORMAL
	db 44, PERSIAN
	db 44, GOLDUCK
	db -1 ; end

BirdKeeperGroup:
; Route 13
	db "Jason@", TRAINERTYPE_NORMAL
	db 29, PIDGEY
	db 29, PIDGEOTTO
	db -1 ; end

	db "Perry@", TRAINERTYPE_NORMAL
	db 25, SPEAROW
	db 25, PIDGEY
	db 25, PIDGEY
	db 25, SPEAROW
	db 25, SPEAROW
	db -1 ; end

	db "Robert@", TRAINERTYPE_NORMAL
	db 26, PIDGEY
	db 26, PIDGEOTTO
	db 26, SPEAROW
	db 26, FEAROW
	db -1 ; end

; Route 14
	db "Donald@", TRAINERTYPE_NORMAL
	db 33, FARFETCH_D
	db -1 ; end

	db "Benny@", TRAINERTYPE_NORMAL
	db 29, SPEAROW
	db 29, FEAROW
	db -1 ; end

	db "Carter@", TRAINERTYPE_NORMAL
	db 28, PIDGEY
	db 28, DODUO
	db 28, PIDGEOTTO
	db -1 ; end

	db "Mitch@", TRAINERTYPE_NORMAL
	db 26, MURKROW
	db 26, SPEAROW
	db 26, MURKROW
	db 26, FEAROW
	db -1 ; end

	db "Beck@", TRAINERTYPE_NORMAL
	db 29, PIDGEOTTO
	db 29, FEAROW
	db -1 ; end

	db "Marlon@", TRAINERTYPE_NORMAL
	db 28, SPEAROW
	db 28, MURKROW
	db 28, FEAROW
	db -1 ; end

; Route 15
	db "Edwin@", TRAINERTYPE_NORMAL
	db 26, PIDGEOTTO
	db 26, FARFETCH_D
	db 26, DODUO
	db 26, PIDGEY
	db -1 ; end

	db "Chet@", TRAINERTYPE_NORMAL
	db 28, DODRIO
	db 28, DODUO
	db 28, DODUO
	db -1 ; end

; Route 18
	db "Wilton@", TRAINERTYPE_NORMAL
	db 29, SPEAROW
	db 29, FEAROW
	db -1 ; end

	db "Ramiro@", TRAINERTYPE_NORMAL
	db 34, DODRIO
	db -1 ; end

	db "Jacob@", TRAINERTYPE_NORMAL
	db 26, SPEAROW
	db 26, SPEAROW
	db 26, FEAROW
	db 26, SPEAROW
	db -1 ; end

; Route 20
	db "Roger@", TRAINERTYPE_NORMAL
	db 30, FEAROW
	db 30, FEAROW
	db 30, PIDGEOTTO
	db -1 ; end

BlackbeltGroup:
; Fighting Dojo
	db "Kiyo@", TRAINERTYPE_NORMAL
	db 37, HITMONLEE
	db 37, HITMONCHAN
	db -1 ; end

	db "Mike@", TRAINERTYPE_NORMAL
	db 31, MANKEY
	db 31, MANKEY
	db 31, PRIMEAPE
	db -1 ; end

	db "Hideki@", TRAINERTYPE_NORMAL
	db 32, MACHOP
	db 32, MACHOKE
	db -1 ; end

	db "Aaron@", TRAINERTYPE_NORMAL
	db 36, PRIMEAPE
	db -1 ; end

	db "Hitoshi@", TRAINERTYPE_NORMAL
	db 31, MACHOP
	db 31, MANKEY
	db 31, PRIMEAPE
	db -1 ; end

; Viridian Gym
	db "Atsushi@", TRAINERTYPE_NORMAL
	db 40, MACHOP
	db 40, MACHOKE
	db -1 ; end

	db "Kenji@", TRAINERTYPE_NORMAL
	db 43, MACHOKE
	db -1 ; end

	db "Takashi@", TRAINERTYPE_NORMAL
	db 38, MACHOKE
	db 38, MACHOP
	db 38, MACHOKE
	db -1 ; end

; Victory Road 2F
	db "Daisuke@", TRAINERTYPE_NORMAL
	db 43, MACHOKE
	db 43, MACHOP
	db 43, MACHOKE
	db -1 ; end

ScientistGroup:
; Silph Co 2F
	db "Connor@", TRAINERTYPE_NORMAL
	db 26, GRIMER
	db 26, WEEZING
	db 26, KOFFING
	db 26, WEEZING
	db -1 ; end

	db "Jerry@", TRAINERTYPE_NORMAL
	db 28, MAGNEMITE
	db 28, VOLTORB
	db 28, MAGNETON
	db -1 ; end

; Silph Co 3F
	db "Jose@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, WEEZING
	db -1 ; end

; Silph Co 4F
	db "Rodney@", TRAINERTYPE_NORMAL
	db 33, ELECTRODE
	db -1 ; end

; Silph Co 5F
	db "Beau@", TRAINERTYPE_NORMAL
	db 26, MAGNETON
	db 26, KOFFING
	db 26, WEEZING
	db 26, MAGNEMITE
	db -1 ; end

; Silph Co 6F
	db "Taylor@", TRAINERTYPE_NORMAL
	db 25, VOLTORB
	db 25, KOFFING
	db 25, MAGNETON
	db 25, MAGNEMITE
	db 25, KOFFING
	db -1 ; end

; Silph Co 7F
	db "Joshua@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, MUK
	db -1 ; end

; Silph Co 8F
	db "Parker@", TRAINERTYPE_NORMAL
	db 29, GRIMER
	db 29, ELECTRODE
	db -1 ; end

; Silph Co 9F
	db "Ed@", TRAINERTYPE_NORMAL
	db 28, VOLTORB
	db 28, KOFFING
	db 28, MAGNETON
	db -1 ; end

; Silph Co 10F
	db "Travis@", TRAINERTYPE_NORMAL
	db 29, MAGNEMITE
	db 29, KOFFING
	db -1 ; end

; Mansion 1F
	db "Ted@", TRAINERTYPE_NORMAL
	db 29, ELECTRODE
	db 29, WEEZING
	db -1 ; end

; Mansion 3F
	db "Braydon@", TRAINERTYPE_NORMAL
	db 33, MAGNEMITE
	db 33, MAGNETON
	db 33, VOLTORB
	db -1 ; end

; Mansion B1F
	db "Ivan@", TRAINERTYPE_NORMAL
	db 34, MAGNEMITE
	db 34, ELECTRODE
	db -1 ; end

ExecutiveFGroup:
; Mt. Moon B2F
	db "Ariana@", TRAINERTYPE_NORMAL
	db 15, RATTATA
	db 15, MURKROW
	db -1 ; end

ExecutiveMGroup:
; Pokemon Tower 7F
	db "Archer@", TRAINERTYPE_NORMAL
	db 23, HOUNDOUR
	db 23, HONCHKROW
	db 23, KOFFING
	db -1 ; end

; Silph Co 11F
	db "Archer@", TRAINERTYPE_NORMAL
	db 34, CUBONE
	db 34, DROWZEE
	db 34, MAROWAK
	db -1 ; end

JessieJamesGroup:
; Mt. Moon B2F
	db "& James@", TRAINERTYPE_NORMAL
	db 14, MEOWTH
	db 13, EKANS
	db 13, KOFFING
	db -1 ; end

; Rocket Hideout B4F
	db "& James@", TRAINERTYPE_NORMAL
	db 23, MEOWTH
	db 23, ARBOK
	db 23, WEEZING
	db 23, LICKITUNG
	db 23, WEEPINBELL
	db -1 ; end

UndercoverGroup:
; Nugget Bridge "Boss"
	db "Recruiter@", TRAINERTYPE_NORMAL
	db 15, EKANS
	db 15, ZUBAT
	db -1 ; end

RocketFGroup:
RocketGroup:
; Mt. Moon B2F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 11, SANDSHREW
	db 11, RATTATA
	db 11, ZUBAT
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 13, ZUBAT
	db 13, EKANS
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 13, RATTATA
	db 13, ZUBAT
	db -1 ; end

; Cerulean City
	db "Grunt@", TRAINERTYPE_NORMAL
	db 17, MACHOP
	db 17, DROWZEE
	db -1 ; end

; Game Corner
	db "Grunt@", TRAINERTYPE_NORMAL
	db 20, RATICATE
	db 20, ZUBAT
	db -1 ; end

; Rocket Hideout B1F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 21, DROWZEE
	db 21, MACHOP
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 21, RATICATE
	db 21, RATICATE
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 20, GRIMER
	db 20, KOFFING
	db 20, KOFFING
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 19, RATTATA
	db 19, RATICATE
	db 19, RATICATE
	db 19, RATTATA
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 22, GRIMER
	db 22, KOFFING
	db -1 ; end

; Rocket Hideout B2F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 17, ZUBAT
	db 17, KOFFING
	db 17, GRIMER
	db 17, ZUBAT
	db 17, RATICATE
	db -1 ; end

; Rocket Hideout B3F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 20, RATTATA
	db 20, RATICATE
	db 20, DROWZEE
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 21, MACHOP
	db 21, MACHOP
	db -1 ; end

; Rocket Hideout B4F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 21, KOFFING
	db 21, ZUBAT
	db -1 ; end

; Pokemon Tower 7F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 25, ZUBAT
	db 25, ZUBAT
	db 25, GOLBAT
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 26, KOFFING
	db 26, DROWZEE
	db -1 ; end

; Silph Co 2F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 29, CUBONE
	db 29, ZUBAT
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 25, GOLBAT
	db 25, ZUBAT
	db 25, ZUBAT
	db 25, RATICATE
	db 25, ZUBAT
	db -1 ; end

; Silph Co 3F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, RATICATE
	db 28, HYPNO
	db 28, RATICATE
	db -1 ; end

; Silph Co 4F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 29, MACHOP
	db 29, DROWZEE
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, EKANS
	db 28, ZUBAT
	db 28, CUBONE
	db -1 ; end

; Silph Co 5F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 33, ARBOK
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 33, HYPNO
	db -1 ; end

; Silph Co 6F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 29, MACHOP
	db 29, MACHOKE
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, ZUBAT
	db 28, ZUBAT
	db 28, GOLBAT
	db -1 ; end

; Silph Co 7F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 26, RATICATE
	db 26, ARBOK
	db 26, KOFFING
	db 26, GOLBAT
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 29, CUBONE
	db 29, CUBONE
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 29, SANDSHREW
	db 29, SANDSLASH
	db -1 ; end

; Silph Co 8F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 26, RATICATE
	db 26, ZUBAT
	db 26, GOLBAT
	db 26, RATTATA
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, WEEZING
	db 28, GOLBAT
	db 28, KOFFING
	db -1 ; end

; Silph Co 9F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, DROWZEE
	db 28, GRIMER
	db 28, MACHOP
	db -1 ; end

	db "Grunt@", TRAINERTYPE_NORMAL
	db 28, GOLBAT
	db 28, DROWZEE
	db 28, HYPNO
	db -1 ; end

; Silph Co 10F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 33, MACHOKE
	db -1 ; end

; Silph Co 11F
	db "Grunt@", TRAINERTYPE_NORMAL
	db 25, RATTATA
	db 25, RATTATA
	db 25, ZUBAT
	db 25, RATTATA
	db 25, EKANS
	db -1 ; end

AceTrainerMGroup:
; Viridian Gym
	db "Samuel@", TRAINERTYPE_NORMAL
	db 37, SANDSLASH
	db 37, SANDSLASH
	db 38, RHYHORN
	db 39, NIDORINO
	db 39, NIDOKING
	db -1 ; end

	db "Yuji@", TRAINERTYPE_NORMAL
	db 38, SANDSLASH
	db 38, GRAVELER
	db 38, ONIX
	db 38, GRAVELER
	db 38, MAROWAK
	db -1 ; end

	db "Warren@", TRAINERTYPE_NORMAL
	db 37, MAROWAK
	db 37, MAROWAK
	db 38, RHYHORN
	db 39, NIDORINA
	db 39, NIDOQUEEN
	db -1 ; end

; Victory Road 1F
	db "Clyde@", TRAINERTYPE_NORMAL
	db 42, IVYSAUR
	db 42, WARTORTLE
	db 42, CHARMELEON
	db 42, CHARIZARD
	db -1 ; end

; Victory Road 3F
	db "George@", TRAINERTYPE_NORMAL
	db 43, EXEGGUTOR
	db 43, CLOYSTER
	db 43, ARCANINE
	db -1 ; end

	db "Cody@", TRAINERTYPE_NORMAL
	db 43, KINGLER
	db 43, TENTACRUEL
	db 43, BLASTOISE
	db -1 ; end

AceTrainerFGroup:
; Celadon Gym
	db "Beth@", TRAINERTYPE_NORMAL
	db 24, WEEPINBELL
	db 24, GLOOM
	db 24, IVYSAUR
	db -1 ; end

; Victory Road 1F
	db "Naomi@", TRAINERTYPE_NORMAL
	db 42, PERSIAN
	db 42, PONYTA
	db 44, RAPIDASH
	db 42, VULPIX
	db 44, NINETALES
	db -1 ; end

; Victory Road 3F
	db "Christy@", TRAINERTYPE_NORMAL
	db 42, BELLSPROUT
	db 42, WEEPINBELL
	db 43, VICTREEBEL
	db 42, PARAS
	db 43, PARASECT
	db -1 ; end

	db "Alexa@", TRAINERTYPE_NORMAL
	db 42, CLEFABLE
	db 42, WIGGLYTUFF
	db 43, PERSIAN
	db 42, DEWGONG
	db 42, CHANSEY
	db -1 ; end

GentlemanGroup:
; Vermilion Gym
	db "Tucker@", TRAINERTYPE_NORMAL
	db 23, PIKACHU
	db -1 ; end

; SS Anne 1F Rooms
	db "Thomas@", TRAINERTYPE_NORMAL
	db 18, GROWLITHE
	db 18, GROWLITHE
	db -1 ; end

	db "Arthur@", TRAINERTYPE_NORMAL
	db 19, NIDORAN_M
	db 19, NIDORAN_F
	db -1 ; end

; SS Anne 2F Rooms
	db "Brooks@", TRAINERTYPE_NORMAL
	db 18, HOUNDOUR
	db -1 ; end

	db "Lamar@", TRAINERTYPE_NORMAL
	db 17, GROWLITHE
	db 17, PONYTA
	db -1 ; end

ChannelerGroup:
; Pokemon Tower 3F
	db "Hope@", TRAINERTYPE_NORMAL
	db 23, GASTLY
	db -1 ; end

	db "Carly@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "Patricia@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

; Pokemon Tower 4F
	db "Paula@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "Laurel@", TRAINERTYPE_NORMAL
	db 23, GASTLY
	db 23, GASTLY
	db -1 ; end

	db "Jody@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

; Pokemon Tower 5F
	db "Tammy@", TRAINERTYPE_NORMAL
	db 23, HAUNTER
	db -1 ; end

	db "Ruth@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db -1 ; end

	db "Karina@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "Janae@", TRAINERTYPE_NORMAL
	db 22, HAUNTER
	db -1 ; end

; Pokemon Tower 6F
	db "Angelica@", TRAINERTYPE_NORMAL
	db 22, GASTLY
	db 22, GASTLY
	db 22, GASTLY
	db -1 ; end

	db "Jennifer@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

	db "Emilia@", TRAINERTYPE_NORMAL
	db 24, GASTLY
	db -1 ; end

HexManiacGroup:
; Saffron Gym
	db "Amanda@", TRAINERTYPE_NORMAL
	db 34, GASTLY
	db 34, HAUNTER
	db -1 ; end

	db "Stacy@", TRAINERTYPE_NORMAL
	db 38, HAUNTER
	db -1 ; end

	db "Tasha@", TRAINERTYPE_NORMAL
	db 33, GASTLY
	db 33, GASTLY
	db 33, HAUNTER
	db -1 ; end

ShrineMaidenGroup:
AromaLadyGroup:
BattleGirlGroup:
BreederGroup:
BoarderGroup:
SkierGroup:
FirebreatherGroup:
SrAndJrGroup:
KimonoGirlGroup:
SageGroup:
MediumGroup:
LadyGroup:
OfficerMGroup:
OfficerFGroup:
ArtistGroup:
ParasolLadyGroup:
PokefanMGroup:
PokefanFGroup:
RichBoyGroup:
RuinManiacGroup:
SchoolboyGroup:
SchoolgirlGroup:
TeacherGroup:
TwinsGroup:
LookerGroup:
;placeholder
	db "?@", TRAINERTYPE_NORMAL
	db 5, ZIGZAGOON
	db -1 ; end
