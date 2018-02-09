; Graciously aped from http://nocash.emubase.de/pandocs.htm .

; MBC3
MBC3SRamEnable EQU $0000
MBC3RomBank    EQU $2000
MBC3SRamBank   EQU $4000
MBC3LatchClock EQU $6000
MBC3RTC        EQU $a000

SRAM_DISABLE EQU $00
SRAM_ENABLE  EQU $0a

NUM_SRAM_BANKS EQU 4

RTC_S  EQU $08 ; Seconds   0-59 (0-3Bh)
RTC_M  EQU $09 ; Minutes   0-59 (0-3Bh)
RTC_H  EQU $0a ; Hours     0-23 (0-17h)
RTC_DL EQU $0b ; Lower 8 bits of Day Counter (0-FFh)
RTC_DH EQU $0c ; Upper 1 bit of Day Counter, Carry Bit, Halt Flag
        ; Bit 0  Most significant bit of Day Counter (Bit 8)
        ; Bit 6  Halt (0=Active, 1=Stop Timer)
        ; Bit 7  Day Counter Carry Bit (1=Counter Overflow)

; interrupt flags
VBLANK   EQU 0
LCD_STAT EQU 1
TIMER    EQU 2
SERIAL   EQU 3
JOYPAD   EQU 4

; OAM attribute flags
OAM_PALETTE   EQU %111
OAM_TILE_BANK EQU 3
OAM_OBP_NUM   EQU 4 ; Non CGB Mode Only
OAM_X_FLIP    EQU 5
OAM_Y_FLIP    EQU 6
OAM_PRIORITY  EQU 7 ; 0: OBJ above BG, 1: OBJ behind BG (colors 1-3)

; Attributes:
TILE_BANK EQU 1 << OAM_TILE_BANK
OBP_NUM   EQU 1 << OAM_OBP_NUM
X_FLIP    EQU 1 << OAM_X_FLIP
Y_FLIP    EQU 1 << OAM_Y_FLIP
BEHIND_BG EQU 1 << OAM_PRIORITY


; Hardware registers
rJOYP       EQU $ff00 ; Joypad (R/W)
rSB         EQU $ff01 ; Serial transfer data (R/W)
rSC         EQU $ff02 ; Serial Transfer Control (R/W)
rSC_ON    EQU 7
rSC_CGB   EQU 1
rSC_CLOCK EQU 0
rDIV        EQU $ff04 ; Divider Register (R/W)
rTIMA       EQU $ff05 ; Timer counter (R/W)
rTMA        EQU $ff06 ; Timer Modulo (R/W)
rTAC        EQU $ff07 ; Timer Control (R/W)
rTAC_ON        EQU 2
rTAC_4096_HZ   EQU 0
rTAC_262144_HZ EQU 1
rTAC_65536_HZ  EQU 2
rTAC_16384_HZ  EQU 3
rIF         EQU $ff0f ; Interrupt Flag (R/W)
rNR10       EQU $ff10 ; Channel 1 Sweep register (R/W)
rNR11       EQU $ff11 ; Channel 1 Sound length/Wave pattern duty (R/W)
rNR12       EQU $ff12 ; Channel 1 Volume Envelope (R/W)
rNR13       EQU $ff13 ; Channel 1 Frequency lo (Write Only)
rNR14       EQU $ff14 ; Channel 1 Frequency hi (R/W)
rNR20       EQU $ff15 ; Channel 2 Sweep register (R/W)
rNR21       EQU $ff16 ; Channel 2 Sound Length/Wave Pattern Duty (R/W)
rNR22       EQU $ff17 ; Channel 2 Volume Envelope (R/W)
rNR23       EQU $ff18 ; Channel 2 Frequency lo data (W)
rNR24       EQU $ff19 ; Channel 2 Frequency hi data (R/W)
rNR30       EQU $ff1a ; Channel 3 Sound on/off (R/W)
rNR31       EQU $ff1b ; Channel 3 Sound Length
rNR32       EQU $ff1c ; Channel 3 Select output level (R/W)
rNR33       EQU $ff1d ; Channel 3 Frequency's lower data (W)
rNR34       EQU $ff1e ; Channel 3 Frequency's higher data (R/W)
rNR40       EQU $ff1f ; Channel 4 Sweep register (R/W)
rNR41       EQU $ff20 ; Channel 4 Sound Length (R/W)
rNR42       EQU $ff21 ; Channel 4 Volume Envelope (R/W)
rNR43       EQU $ff22 ; Channel 4 Polynomial Counter (R/W)
rNR44       EQU $ff23 ; Channel 4 Counter/consecutive; Inital (R/W)
rNR50       EQU $ff24 ; Channel control / ON-OFF / Volume (R/W)
rNR51       EQU $ff25 ; Selection of Sound output terminal (R/W)
rNR52       EQU $ff26 ; Sound on/off
rWave_0     EQU $ff30
rWave_1     EQU $ff31
rWave_2     EQU $ff32
rWave_3     EQU $ff33
rWave_4     EQU $ff34
rWave_5     EQU $ff35
rWave_6     EQU $ff36
rWave_7     EQU $ff37
rWave_8     EQU $ff38
rWave_9     EQU $ff39
rWave_a     EQU $ff3a
rWave_b     EQU $ff3b
rWave_c     EQU $ff3c
rWave_d     EQU $ff3d
rWave_e     EQU $ff3e
rWave_f     EQU $ff3f
rLCDC       EQU $ff40 ; LCD Control (R/W)
rSTAT       EQU $ff41 ; LCDC Status (R/W)
rSCY        EQU $ff42 ; Scroll Y (R/W)
rSCX        EQU $ff43 ; Scroll X (R/W)
rLY         EQU $ff44 ; LCDC Y-Coordinate (R)
rLYC        EQU $ff45 ; LY Compare (R/W)
rDMA        EQU $ff46 ; DMA Transfer and Start Address (W)
rBGP        EQU $ff47 ; BG Palette Data (R/W) - Non CGB Mode Only
rOBP0       EQU $ff48 ; Object Palette 0 Data (R/W) - Non CGB Mode Only
rOBP1       EQU $ff49 ; Object Palette 1 Data (R/W) - Non CGB Mode Only
rWY         EQU $ff4a ; Window Y Position (R/W)
rWX         EQU $ff4b ; Window X Position minus 7 (R/W)
rLCDMODE    EQU $ff4c
rKEY1       EQU $ff4d ; CGB Mode Only - Prepare Speed Switch
rVBK        EQU $ff4f ; CGB Mode Only - VRAM Bank
rBLCK       EQU $ff50
rHDMA1      EQU $ff51 ; CGB Mode Only - New DMA Source, High
rHDMA2      EQU $ff52 ; CGB Mode Only - New DMA Source, Low
rHDMA3      EQU $ff53 ; CGB Mode Only - New DMA Destination, High
rHDMA4      EQU $ff54 ; CGB Mode Only - New DMA Destination, Low
rHDMA5      EQU $ff55 ; CGB Mode Only - New DMA Length/Mode/Start
rRP         EQU $ff56 ; CGB Mode Only - Infrared Communications Port
rBGPI       EQU $ff68 ; CGB Mode Only - Background Palette Index
rBGPD       EQU $ff69 ; CGB Mode Only - Background Palette Data
rOBPI       EQU $ff6a ; CGB Mode Only - Sprite Palette Index
rOBPD       EQU $ff6b ; CGB Mode Only - Sprite Palette Data
rUNKNOWN1   EQU $ff6c ; (FEh) Bit 0 (Read/Write) - CGB Mode Only
rSVBK       EQU $ff70 ; CGB Mode Only - WRAM Bank
rUNKNOWN2   EQU $ff72 ; (00h) - Bit 0-7 (Read/Write)
rUNKNOWN3   EQU $ff73 ; (00h) - Bit 0-7 (Read/Write)
rUNKNOWN4   EQU $ff74 ; (00h) - Bit 0-7 (Read/Write) - CGB Mode Only
rUNKNOWN5   EQU $ff75 ; (8Fh) - Bit 4-6 (Read/Write)
rUNKNOWN6   EQU $ff76 ; (00h) - Always 00h (Read Only)
rUNKNOWN7   EQU $ff77 ; (00h) - Always 00h (Read Only)
rIE         EQU $ffff ; Interrupt Enable (R/W)
