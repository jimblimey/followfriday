REM Setup


DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y,y1 AS BYTE
DIM c,cl,lc AS UBYTE
DIM cc,cb AS INTEGER

POKE USR "A"+0, BIN 00001000
POKE USR "A"+1, BIN 00010100
POKE USR "A"+2, BIN 00010100
POKE USR "A"+3, BIN 00101010
POKE USR "A"+4, BIN 00101010
POKE USR "A"+5, BIN 01000001
POKE USR "A"+6, BIN 01001001
POKE USR "A"+7, BIN 01111111

POKE USR "B"+0, BIN 01010101
POKE USR "B"+1, BIN 10101010
POKE USR "B"+2, BIN 01010101
POKE USR "B"+3, BIN 10101010
POKE USR "B"+4, BIN 01010101
POKE USR "B"+5, BIN 10101010
POKE USR "B"+6, BIN 01010101
POKE USR "B"+7, BIN 10101010

POKE USR "C"+0, BIN 00111100
POKE USR "C"+1, BIN 01000010
POKE USR "C"+2, BIN 10011010
POKE USR "C"+3, BIN 10101010
POKE USR "C"+4, BIN 10111100
POKE USR "C"+5, BIN 10000000
POKE USR "C"+6, BIN 01111110
POKE USR "C"+7, BIN 00000000

REM Add the people, uncomment the required GOTO to use a specific group
LET n$(1)="DaphBlake2"
LET n$(2)="CommodoreBlog"
LET n$(3)="Lord_Arse"
LET n$(4)="spectrum48k"
LET n$(5)="thatbunty"
LET n$(6)="rexthedogge"
LET n$(7)="retro_gerry"
LET n$(8)="Deanydotcom"
LET n$(9)="raymierussell"
LET n$(10)="Tamaracade1"
LET n$(11)="zx81adventures"
LET n$(12)="JAMOGRAD"
LET n$(13)="stewie55uk"
LET n$(14)="mrbiffo"
LET n$(15)="rhayadercompute"
LET n$(16)="tobobobo"
LET n$(17)="AfRetro"
LET n$(18)="SpectrumTinted"
LET n$(19)="GentlemanNikki"
LET n$(20)="rEtRo_sPexX"
GOTO start
LET n$(1)="GeekMid"
LET n$(2)="iHarbonaut"
LET n$(3)="saucerbrain"
LET n$(4)="FirepowerGaming"
LET n$(5)="Segamastertim"
LET n$(6)="RussellRiker"
LET n$(7)="florinthedwarf"
LET n$(8)="_gazmarshall"
LET n$(9)="RetroManiaGT1"
LET n$(10)="retrofixuk"
LET n$(11)="RetroResolution"
LET n$(12)="millytigger1"
LET n$(13)="russty_russ"
LET n$(14)="TheSplendidFox"
LET n$(15)="farrelltheferal"
LET n$(16)="BurghillGirl"
LET n$(17)="electron_greg"
LET n$(18)="zxkim811"
LET n$(19)="SpectrumNez"
LET n$(20)="80sNostalgia"
'GOTO start
LET n$(1)="LabsSkull"
LET n$(2)="BreakIntoProg"
LET n$(3)="8_16_32bit"
LET n$(4)="3wojis"
LET n$(5)="ZXDev2015"
LET n$(6)="SJP176"
LET n$(7)="SquaredSeven"
LET n$(8)="60sPsychoMods"
LET n$(9)="6502nerd"
LET n$(10)="ezContents"
LET n$(11)="shadowinthevoid"
LET n$(12)="SieHopkins"
LET n$(13)="evolutionalgd"
LET n$(14)="Manhydra"
LET n$(15)="shieladixon"
LET n$(16)="RetroBrothers"
LET n$(17)="Zeus09998580"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="Ewan"
GOTO start

fontdata:
ASM
  defb 0,0,0,0,0,0,0,0
  defb 60,60,60,24,24,0,24,0
  defb 0,0,0,0,0,0,0,0
  defb 0,52,126,52,104,252,104,0
  defb 24,126,120,126,30,126,24,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,60,60,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 126,102,102,106,114,114,126,0
  defb 56,24,24,24,24,24,60,0
  defb 126,102,6,62,96,96,126,0
  defb 126,102,6,30,6,102,126,0
  defb 70,70,70,126,6,6,6,0
  defb 126,96,96,126,2,98,126,0
  defb 126,96,96,126,98,98,126,0
  defb 126,6,14,12,24,24,24,0
  defb 126,98,98,60,98,98,126,0
  defb 126,70,70,126,6,6,126,0
  defb 108,254,254,254,124,56,16,0
  defb 108,146,130,130,68,40,16,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,60,0,60,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 126,98,2,30,24,0,24,0
  defb 0,0,0,0,0,0,0,0
  defb 126,98,98,126,98,98,98,0
  defb 124,98,98,126,98,98,126,0
  defb 126,96,96,96,96,96,126,0
  defb 124,98,98,98,98,98,124,0
  defb 126,96,96,120,96,96,126,0
  defb 126,96,96,124,96,96,96,0
  defb 62,98,96,102,98,98,62,0
  defb 98,98,98,126,98,98,98,0
  defb 60,24,24,24,24,24,60,0
  defb 62,12,12,12,76,76,124,0
  defb 98,98,100,124,98,98,98,0
  defb 96,96,96,96,96,96,126,0
  defb 126,106,106,106,98,98,98,0
  defb 126,98,98,98,98,98,98,0
  defb 126,98,98,98,98,98,126,0
  defb 126,98,98,126,96,96,96,0
  defb 126,98,98,98,102,102,126,0
  defb 126,98,98,126,100,98,98,0
  defb 126,96,96,126,6,6,126,0
  defb 126,24,24,24,24,24,24,0
  defb 98,98,98,98,98,98,126,0
  defb 98,98,98,52,52,52,60,0
  defb 98,98,98,106,106,106,126,0
  defb 102,102,60,24,60,102,102,0
  defb 102,102,102,60,24,24,24,0
  defb 126,102,12,24,48,98,126,0
  defb 0,0,0,30,30,24,24,24
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,120,120,24,24,24
  defb 48,104,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,60,100,100,100,58,0
  defb 96,96,120,100,100,100,120,0
  defb 0,0,60,96,96,96,60,0
  defb 4,4,60,100,100,100,60,0
  defb 0,0,56,100,124,96,60,0
  defb 56,100,96,96,120,96,96,0
  defb 0,0,56,100,100,60,4,56
  defb 96,96,96,120,100,100,100,0
  defb 48,0,48,48,48,48,24,0
  defb 0,12,0,12,12,12,44,24
  defb 96,96,100,104,120,100,100,0
  defb 48,48,48,48,48,48,24,0
  defb 0,0,60,106,106,98,98,0
  defb 0,0,56,100,100,100,100,0
  defb 0,0,56,100,100,100,56,0
  defb 0,0,56,100,100,100,120,96
  defb 0,0,56,76,76,76,60,14
  defb 0,0,56,100,96,96,96,0
  defb 0,0,60,96,124,12,120,0
  defb 48,48,120,48,48,48,56,0
  defb 0,0,100,100,100,100,58,0
  defb 0,0,100,100,100,40,16,0
  defb 0,0,98,98,106,106,60,0
  defb 0,0,104,104,48,104,104,0
  defb 0,0,100,100,100,60,4,56
  defb 0,0,124,4,24,96,124,0
  defb 24,24,24,28,28,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 24,24,24,56,56,0,0,0
  defb 0,0,48,122,94,12,0,0
  defb 0,0,0,0,0,0,0,0

END ASM

SUB paint (x as uByte,y as uByte, width as uByte, height as uByte, attribute as ubyte)
REM Copyleft Britlion. Feel free to use as you will. Please attribute me if you use this, however!

Asm
    ld      a,(IX+7)   ;ypos
    rrca
    rrca
    rrca               ; Multiply by 32
    ld      l,a        ; Pass to L
    and     3          ; Mask with 00000011
    add     a,88       ; 88 * 256 = 22528 - start of attributes. Change this if you are working with a buffer or somesuch.
    ld      h,a        ; Put it in the High Byte
    ld      a,l        ; We get y value *32
    and     224        ; Mask with 11100000
    ld      l,a        ; Put it in L
    ld      a,(IX+5)   ; xpos 
    add     a,l        ; Add it to the Low byte
    ld      l,a        ; Put it back in L, and we're done. HL=Address.

    push HL            ; save address
    LD A, (IX+13)      ; attribute
    LD DE,32
    LD c,(IX+11)       ; height

    BLPaintHeightLoop: 
    LD b,(IX+9)        ; width

    BLPaintWidthLoop:
    LD (HL),a          ; paint a character
    INC L              ; Move to the right (Note that we only would have to inc H if we are crossing from the right edge to the left, and we shouldn't be needing to do that)
    DJNZ BLPaintWidthLoop

    BLPaintWidthExitLoop:
    POP HL             ; recover our left edge
    DEC C
    JR Z, BLPaintHeightExitLoop

    ADD HL,DE          ; move 32 down
    PUSH HL            ; save it again
    JP BLPaintHeightLoop

    BLPaintHeightExitLoop:    
end asm
END SUB

start:
BORDER 7: PAPER 7: BRIGHT 0: INK 0: CLS
PRINT AT 23,0;CHR$ 127 + " 2020 Your Butt Research Ltd"
PAUSE 0
CLS
PRINT AT 23,0;"RUN"
FOR x=1 TO 2
    PRINT AT 23,4;INVERSE 0;"L"
    PAUSE 15
    PRINT AT 23,4;INVERSE 1;"L"
    PAUSE 15
NEXT x

BORDER 0: PAPER 0: INK 4: BRIGHT 1: CLS
POKE 23607,(@fontdata-256)/256
POKE 23606,@fontdata-256*(@fontdata/256)

RANDOMIZE
FOR x=1 TO 10
  LET c=RND*15
NEXT x
FOR x=1 TO 20
    ' Pick a number
    pn:
    LET c=(RND*20)+1
    ' Check to make sure the number hasn't already been used
    FOR y=1 TO 20
        IF i(y)=c THEN
           GOTO pn
        END IF
    NEXT y
    ' Plop the index in the index array
    LET i(x)=c
NEXT x

FOR y=1 TO 20
    pc:
    LET cl=(RND*6)+1
    IF cl=lc THEN GOTO pc
    LET lc=cl
    REM Create a string with our @ and the current person
    LET s$="@" + n$(i(y))
    PRINT INK 0; AT y+1,0;s$
    FOR c=0 TO 4
      FOR x=0 TO (LEN s$)+1
        paint(x,y+1,1,1,64+cl)
        PAUSE 2
        IF c<4 THEN paint(x,y+1,1,1,0)
      NEXT x
    NEXT c
NEXT y


POKE 23606,0: POKE 23607,60
PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
BRIGHT 0
PRINT AT 23,0;INK 7; "0 Smell my cheese, 30:1"
PAUSE 0

STOP
