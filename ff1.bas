REM Setup

DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y,y1 AS BYTE
DIM c,cl,lc AS UBYTE
DIM cc,cb AS INTEGER
DIM mx(20) AS UBYTE
DIM my(21) AS UBYTE

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
LET n$(1)="daph2theb"
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
LET n$(15)="Ghost_In_Exile"
LET n$(16)="tobobobo"
LET n$(17)="AfRetro"
LET n$(18)="SpectrumTinted"
LET n$(19)="GentlemanNikki"
LET n$(20)="rEtRo_sPexX"
'GOTO start
LET n$(1)="GeekMid"
LET n$(2)="rhayadercompute"
LET n$(3)="SpectrumNez"
LET n$(4)="BurghillGirl"
LET n$(5)="Segamastertim"
LET n$(6)="iHarbonaut"
LET n$(7)="saucerbrain"
LET n$(8)="shieladixon"
LET n$(9)="RussellRiker"
LET n$(10)="florinthedwarf"
LET n$(11)="_gazmarshall"
LET n$(12)="Ewan"
LET n$(13)="retrofixuk"
LET n$(14)="RetroResolution"
LET n$(15)="millytigger1"
LET n$(16)="russty_russ"
LET n$(17)="TheSplendidFox"
LET n$(18)="farrelltheferal"
LET n$(19)="6502nerd"
LET n$(20)="80sNostalgia"
'GOTO start
LET n$(1)="LabsSkull"
LET n$(2)="BreakIntoProg"
LET n$(3)="8_16_32bit"
LET n$(4)="3wojis"
LET n$(5)="ZXDev2015"
LET n$(6)="JonnBlanchard"
LET n$(7)="SquaredSeven"
LET n$(8)="electron_greg"
LET n$(9)="RetroManiaGT1"
LET n$(10)="zxkim811"
LET n$(11)="shadowinthevoid"
LET n$(12)="SieHopkins"
LET n$(13)="evolutionalgd"
LET n$(14)="Manhydra"
LET n$(15)="FirePowerGaming"
LET n$(16)="RetroBrothers"
LET n$(17)="Zeus09998580"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="8bitG"
GOTO start

fontdata:
ASM
  defb 0,0,0,0,0,0,0,0
  defb 56,56,56,56,56,0,56,0
  defb 108,108,36,72,0,0,0,0
  defb 68,254,68,68,68,254,68,0
  defb 16,124,64,124,4,124,16,0
  defb 226,164,232,16,46,74,142,0
  defb 48,72,64,32,80,72,116,0
  defb 56,56,8,48,0,0,0,0
  defb 24,48,96,96,96,48,24,0
  defb 96,48,24,24,24,48,96,0
  defb 32,168,112,32,112,168,32,0
  defb 0,16,16,124,24,24,0,0
  defb 0,0,0,0,56,56,8,48
  defb 0,0,0,124,124,0,0,0
  defb 0,0,0,0,56,56,56,0
  defb 2,4,8,16,32,64,128,0
  defb 248,136,152,168,200,200,248,0
  defb 224,32,32,32,32,32,248,0
  defb 252,4,4,252,192,192,252,0
  defb 120,8,8,120,24,24,248,0
  defb 136,136,136,136,252,24,24,0
  defb 248,128,128,248,24,152,248,0
  defb 248,136,128,248,200,200,248,0
  defb 248,136,16,32,96,96,96,0
  defb 248,136,136,248,200,200,248,0
  defb 248,136,136,248,24,152,248,0
  defb 0,56,56,0,56,56,0,0
  defb 0,56,56,0,56,56,8,48
  defb 8,16,32,192,32,16,8,0
  defb 0,124,124,0,124,124,0,0
  defb 128,64,32,24,32,64,128,0
  defb 126,66,2,30,16,0,16,0
  defb 60,36,60,0,0,0,0,0
  defb 248,136,252,132,196,196,196,0
  defb 248,136,252,132,196,196,252,0
  defb 252,132,128,192,192,196,252,0
  defb 248,132,132,196,196,196,248,0
  defb 252,128,240,128,192,192,252,0
  defb 252,128,248,128,192,192,192,0
  defb 252,132,128,156,196,196,252,0
  defb 132,132,252,132,196,196,196,0
  defb 32,32,32,48,48,48,48,0
  defb 4,4,4,12,12,140,120,0
  defb 132,136,144,240,200,196,196,0
  defb 128,128,128,192,192,192,252,0
  defb 252,146,146,146,210,210,210,0
  defb 228,148,148,148,212,212,204,0
  defb 252,132,132,132,196,196,252,0
  defb 252,132,132,252,192,192,192,0
  defb 252,132,132,148,212,200,244,0
  defb 252,132,132,252,200,196,196,0
  defb 252,128,128,252,12,12,252,0
  defb 252,32,32,32,48,48,48,0
  defb 132,132,132,196,196,196,252,0
  defb 132,132,196,196,68,40,16,0
  defb 130,130,146,146,210,210,254,0
  defb 132,72,48,48,72,132,132,0
  defb 132,132,132,252,32,48,48,0
  defb 252,8,16,32,64,192,252,0
  defb 120,64,64,64,64,64,120,0
  defb 128,64,32,16,8,4,2,0
  defb 60,4,4,4,4,4,60,0
  defb 0,16,56,108,198,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
  defb 0,0,124,4,124,68,124,0
  defb 64,64,124,68,68,68,124,0
  defb 0,0,124,64,64,64,124,0
  defb 4,4,124,68,68,68,124,0
  defb 0,0,124,68,124,64,124,0
  defb 60,32,120,32,32,32,32,0
  defb 0,0,124,68,68,124,4,124
  defb 64,64,124,68,68,68,68,0
  defb 24,0,24,24,24,24,24,0
  defb 0,8,0,8,8,8,72,120
  defb 64,64,72,80,96,80,72,0
  defb 24,24,24,24,24,24,24,0
  defb 0,0,254,146,146,146,146,0
  defb 0,0,124,68,68,68,68,0
  defb 0,0,124,68,68,68,124,0
  defb 0,0,124,68,68,124,64,64
  defb 0,0,124,68,68,124,4,4
  defb 0,0,124,68,64,64,64,0
  defb 0,0,124,64,124,4,124,0
  defb 0,32,124,32,32,32,60,0
  defb 0,0,36,36,36,36,60,0
  defb 0,0,68,68,68,40,16,0
  defb 0,0,130,146,146,146,254,0
  defb 0,0,68,40,16,40,68,0
  defb 0,0,68,68,68,124,4,124
  defb 0,0,124,8,16,32,124,0
  defb 0,0,0,0,0,0,0,0
  defb 0,16,16,16,16,16,16,16
  defb 0,0,0,0,0,0,0,0
  defb 0,0,0,0,0,0,0,0
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
PRINT AT 23,0;CHR$ 127 + " 1994 Chris Waddle Ltd"
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

FOR c=1 TO 20
    'LET cl=(RND*6)+1
    LET cl=2
    IF c > 4 AND c < 9 THEN LET cl=3
    IF c > 8 AND c < 13 THEN LET cl=4
    IF c > 12 AND c < 17 THEN LET cl=5
    IF c > 16 THEN LET cl=6
    REM Create a string with our @ and the current person
    LET s$="@" + n$(i(c))
    PRINT INK 0;AT c+1,0;s$
    FOR y=0 TO 3
      FOR x=0 TO LEN s$
        IF x>1 THEN paint(x-2,c+1,1,1,0)
        IF x>0 THEN paint(x-1,c+1,1,1,cl)
        paint(x,c+1,1,1,64+cl)
        PAUSE 1
      NEXT x
      FOR x=LEN s$ TO 0 STEP -1
        IF x<LEN s$-1 THEN paint(x+2,c+1,1,1,0)
        IF x<LEN s$ THEN paint(x+1,c+1,1,1,cl)
        paint(x,c+1,1,1,64+cl)
        PAUSE 1
      NEXT x
    NEXT y
    REM One more to reveal
    FOR x=0 TO LEN s$
      paint(x,c+1,1,1,64+cl)
      PAUSE 1
    NEXT x
    PAUSE 5
NEXT c

POKE 23606,0
POKE 23607,60

PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
BRIGHT 0
PRINT AT 23,0;INK 7; "C Anyone fancy a pint?, 30:1"
PAUSE 0

STOP
