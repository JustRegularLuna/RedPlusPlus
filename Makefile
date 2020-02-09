NAME := redplusplus
VERSION := 4.0.0-beta

TITLE := POKEMONRPP
MCODE := PRPP
ROMVERSION := 0x40

FILLER = 0x00

ifneq ($(wildcard rgbds/.*),)
RGBDS_DIR = rgbds/
else
RGBDS_DIR =
endif

RGBASM_FLAGS =
RGBLINK_FLAGS = -n $(ROM_NAME).sym -m $(ROM_NAME).map -l contents/contents.link -p $(FILLER)
RGBFIX_FLAGS = -Cjv -t $(TITLE) -i $(MCODE) -n $(ROMVERSION) -p $(FILLER) -k 01 -l 0x33 -m 0x10 -r 3

CFLAGS = -O3 -std=c11 -Wall -Wextra -pedantic

ifeq ($(filter debug,$(MAKECMDGOALS)),debug)
RGBASM_FLAGS += -DDEBUG
endif
ifeq ($(filter noir,$(MAKECMDGOALS)),noir)
RGBASM_FLAGS += -DNOIR
endif
ifeq ($(filter monochrome,$(MAKECMDGOALS)),monochrome)
RGBASM_FLAGS += -DMONOCHROME
endif


.SUFFIXES:
.PHONY: all clean rpp debug noir monochrome bankfree freespace compare tools
.SECONDEXPANSION:
.PRECIOUS: %.2bpp %.1bpp %.lz %.o


roms_md5      = roms.md5
bank_ends_txt = contents/bank_ends.txt
sorted_sym    = contents/$(NAME).sym

PYTHON = python
CC     = gcc
RM     = rm -f
GFX    = $(PYTHON) gfx.py
MD5    = md5sum

LZ            = tools/lzcomp
SCAN_INCLUDES = tools/scan_includes

bank_ends := $(PYTHON) contents/bank_ends.py $(NAME)-$(VERSION)


rpp_obj := \
main.o \
home.o \
ram.o \
audio.o \
audio/musicplayer.o \
data/pokemon/dex_entries.o \
data/pokemon/egg_moves.o \
data/pokemon/evos_attacks.o \
data/maps/map_data.o \
data/text/common.o \
data/tileset_data.o \
engine/credits.o \
engine/events.o \
gfx/pics.o \
gfx/sprites.o


all: rpp

rpp: FILLER = 0x00
rpp: ROM_NAME = $(NAME)-$(VERSION)
rpp: $(NAME)-$(VERSION).gbc

debug: rpp
noir: rpp
monochrome: rpp

bankfree: FILLER = 0xff
bankfree: ROM_NAME = $(NAME)-$(VERSION)-0xff
bankfree: $(NAME)-$(VERSION)-0xff.gbc

freespace: $(bank_ends_txt) $(roms_md5) $(sorted_sym)


# Build tools when building the rom
ifeq ($(filter clean tools,$(MAKECMDGOALS)),)
Makefile: tools
endif

tools: $(LZ) $(SCAN_INCLUDES)

$(LZ): $(LZ).c
	$(CC) $(CFLAGS) -o $@ $<

$(SCAN_INCLUDES): $(SCAN_INCLUDES).c
	$(CC) $(CFLAGS) -o $@ $<


clean:
	$(RM) $(rpp_obj) $(wildcard $(NAME)-*.gbc) $(wildcard $(NAME)-*.map) $(wildcard $(NAME)-*.sym)

compare: rpp
	$(MD5) -c $(roms_md5)


$(bank_ends_txt): rpp bankfree ; $(bank_ends) > $@
$(roms_md5): rpp ; $(MD5) $(NAME)-$(VERSION).gbc > $@
$(sorted_sym): rpp ; tail -n +3 $(NAME)-$(VERSION).sym | sort -o $@


%.2bpp.generic: %.2bpp
# take the first 144 tiles (= 9216 px = 18432 bits = 2304 bytes)
	head -c 2304 $< > $@

%.2bpp.unique: %.2bpp
# skip the first 144 tiles, take the next 112 tiles (= 7168 px = 14336 bits = 1792 bytes)
	tail -c +2305 $< | head -c 1792 > $@

%.2bpp.extra: %.2bpp
# skip the first 368 tiles, take the next 16 tiles (= 1024 px = 2048 bits = 256 bytes)
	tail -c +5889 $< | head -c 256 > $@


%.o: dep = $(shell $(SCAN_INCLUDES) $(@D)/$*.asm)
%.o: %.asm $$(dep)
	$(RGBDS_DIR)rgbasm $(RGBASM_FLAGS) -o $@ $<

.gbc:
%.gbc: $(rpp_obj)
	$(RGBDS_DIR)rgblink $(RGBLINK_FLAGS) -o $@ $^
	$(RGBDS_DIR)rgbfix $(RGBFIX_FLAGS) $@

%.2bpp: %.png ; $(GFX) 2bpp $<
%.1bpp: %.png ; $(GFX) 1bpp $<

%.pal: %.2bpp
gfx/pokemon/%/normal.pal gfx/pokemon/%/bitmask.asm gfx/pokemon/%/frames.asm: gfx/pokemon/%/front.2bpp

%.lz: % ; $(LZ) $< $@

%.pal: ; $(error ERROR: Cannot find '$@')
%.png: ; $(error ERROR: Cannot find '$@')
%.asm: ; $(error ERROR: Cannot find '$@')
%.bin: ; $(error ERROR: Cannot find '$@')
%.blk: ; $(error ERROR: Cannot find '$@')
%.ablk: ; $(error ERROR: Cannot find '$@')
%.tilemap: ; $(error ERROR: Cannot find '$@')
