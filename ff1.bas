REM Setup
BORDER 0: PAPER 0: INK 0: BRIGHT 1: CLS

DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y AS BYTE
DIM c,cb,cl,lc AS UBYTE
DIM cc AS INTEGER
POKE USR "A"+0, BIN 00010000
POKE USR "A"+1, BIN 00001000
POKE USR "A"+2, BIN 00011000
POKE USR "A"+3, BIN 00111100
POKE USR "A"+4, BIN 01000010
POKE USR "A"+5, BIN 01111110
POKE USR "A"+6, BIN 10000001
POKE USR "A"+7, BIN 01111110
REM Add the people, uncomment the required GOTO to use a specific group
LET n$(1)="daph2theB"
LET n$(2)="CommodoreBlog"
LET n$(3)="Lord_Arse"
LET n$(4)="spectrum48k"
LET n$(5)="thatbitchbunty"
LET n$(6)="rexthedogge"
LET n$(7)="retro_gerry"
LET n$(8)="Deanydotcom"
LET n$(9)="raymierussell"
LET n$(10)="Tamaracade1"
LET n$(11)="zx81adventures"
LET n$(12)="JAMOGRAD"
LET n$(13)="stewie55uk"
LET n$(14)="FirepowerGaming"
LET n$(15)="rhayadercompute"
LET n$(16)="KaraTheBroken"
LET n$(17)="AfRetro"
LET n$(18)="79_Han_Solo"
LET n$(19)="NikkiDoesATweet"
LET n$(20)="rEtRo_sPexX"
GOTO start
LET n$(1)="GeekMid"
LET n$(2)="iHarbonaut"
LET n$(3)="saucerbrain"
LET n$(4)="mrbiffo"
LET n$(5)="Segamastertim"
LET n$(6)="RussellRiker"
LET n$(7)="florinthedwarf"
LET n$(8)="_gazmarshall"
LET n$(9)="RetroManiaGT1"
LET n$(10)="tobobobo"
LET n$(11)="RetroResolution"
LET n$(12)="8tbitG"
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
LET n$(2)="zx_speccy48k"
LET n$(3)="8_16_32bit"
LET n$(4)="3wojis"
LET n$(5)="ZXDev2015"
LET n$(6)="TheRetroManCave"
LET n$(7)="SquaredSeven"
LET n$(8)="60sPsychoMods"
LET n$(9)="FlorinZx"
LET n$(10)="ezContents"
LET n$(11)="LemmyBarnett"
LET n$(12)="GAMETelford"
LET n$(13)="TristaBytes"
LET n$(14)="Manhydra"
LET n$(15)="shieladixon"
LET n$(16)="SJP176"
LET n$(17)="SpectrumTinted"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="Ewan"
GOTO start
REM Functions and data

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

fontdata:
ASM
  defb 0,0,0,0,0,0,0,0
  defb 24,60,60,24,24,0,24,0
  defb 108,108,216,0,0,0,0,0
  defb 108,108,254,108,254,108,108,0
  defb 16,126,208,124,22,252,16,0
  defb 0,198,204,24,48,102,198,0
  defb 56,108,104,118,220,204,118,0
  defb 24,24,48,0,0,0,0,0
  defb 12,24,48,48,48,24,12,0
  defb 48,24,12,12,12,24,48,0
  defb 0,102,60,255,60,102,0,0
  defb 0,24,24,126,24,24,0,0
  defb 0,0,0,0,0,24,24,48
  defb 0,0,0,126,0,0,0,0
  defb 0,0,0,0,0,24,24,0
  defb 3,6,12,24,48,96,192,0
  defb 252,6,110,126,118,102,60,0
  defb 56,0,24,24,24,24,126,0
  defb 124,96,6,60,96,102,126,0
  defb 126,96,6,28,6,102,124,0
  defb 206,192,204,254,12,12,30,0
  defb 254,6,96,124,6,102,124,0
  defb 254,6,96,124,102,102,60,0
  defb 126,96,6,28,24,24,24,0
  defb 252,6,102,60,102,102,60,0
  defb 252,6,102,62,6,102,124,0
  defb 0,24,24,0,0,24,24,0
  defb 0,24,24,0,0,24,24,48
  defb 12,24,48,96,48,24,12,0
  defb 0,0,126,0,0,126,0,0
  defb 48,24,12,6,12,24,48,0
  defb 124,102,6,12,24,0,24,0
  defb 252,6,198,222,222,192,126,0
  defb 252,6,102,126,102,102,230,0
  defb 252,6,102,124,102,102,252,0
  defb 254,6,96,96,96,102,62,0
  defb 252,6,102,102,102,102,252,0
  defb 254,6,96,120,96,102,254,0
  defb 254,6,96,120,96,96,240,0
  defb 254,6,96,110,102,102,62,0
  defb 230,6,102,126,102,102,230,0
  defb 126,0,24,24,24,24,126,0
  defb 62,48,6,6,102,102,60,0
  defb 236,12,108,124,102,102,230,0
  defb 240,0,96,96,96,102,254,0
  defb 227,7,127,107,99,99,227,0
  defb 230,6,118,126,110,102,230,0
  defb 252,6,102,102,102,102,60,0
  defb 252,6,102,124,96,96,240,0
  defb 252,6,102,102,110,110,62,0
  defb 252,6,102,124,102,102,230,0
  defb 254,6,192,124,6,198,252,0
  defb 254,2,24,24,24,24,60,0
  defb 230,6,102,102,102,102,62,0
  defb 230,6,102,102,108,124,248,0
  defb 227,3,99,107,127,119,227,0
  defb 230,6,108,56,108,198,198,0
  defb 230,6,102,62,6,102,124,0
  defb 126,96,6,60,96,102,126,0
  defb 60,0,48,48,48,48,60,0
  defb 192,96,48,24,12,6,3,0
  defb 60,0,12,12,12,12,60,0
  defb 16,56,108,198,0,0,0,0
  defb 0,0,0,0,0,0,0,254
  defb 24,24,12,0,0,0,0,0
  defb 0,0,124,6,62,118,62,0
  defb 224,64,124,110,102,102,252,0
  defb 0,0,124,54,96,102,60,0
  defb 7,2,62,118,102,102,63,0
  defb 0,0,124,54,126,96,62,0
  defb 60,38,48,120,48,48,120,0
  defb 0,0,126,236,204,124,12,248
  defb 224,64,124,110,102,102,230,0
  defb 56,0,48,24,24,24,60,0
  defb 28,0,24,12,12,12,204,120
  defb 224,64,102,108,120,108,230,0
  defb 56,16,24,24,24,24,60,0
  defb 0,0,204,254,222,198,198,0
  defb 0,0,124,110,102,102,102,0
  defb 0,0,124,46,102,102,60,0
  defb 0,0,252,110,102,124,64,224
  defb 0,0,126,236,204,124,4,14
  defb 0,0,252,110,96,96,240,0
  defb 0,0,62,112,60,6,124,0
  defb 56,16,124,48,48,52,24,0
  defb 0,0,204,204,204,204,126,0
  defb 0,0,102,102,102,60,24,0
  defb 0,0,198,198,214,124,108,0
  defb 0,0,198,108,56,108,198,0
  defb 0,0,102,102,102,60,24,112
  defb 0,0,126,108,24,50,126,0
  defb 14,0,24,112,24,24,14,0
  defb 24,24,24,24,24,24,24,0
  defb 112,0,24,14,24,24,112,0
  defb 118,220,0,0,0,0,0,0
  defb 170,85,170,85,170,85,170,85
END ASM

start:
REM Not convinced RANDOMIZE actually does anything!
RANDOMIZE
REM Pick order
FOR x=1 TO 20
    REM Pick a number
    pn:
    LET c=INT(RND*20)+1
    REM Check to make sure the number hasn't already been used
    FOR y=1 TO 20
        IF i(y)=c THEN
           GOTO pn
        END IF
    NEXT y
    REM Plop the index in the index array
    IF i(x)=0 THEN
       LET i(x)=c
    END IF
NEXT x

PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
POKE 23607,(@fontdata-256)/256
POKE 23606,@fontdata-256*(@fontdata/256)
REM Loopy the people
FOR c=1 TO 20
    LET cl=2
    REM Create a string with our @ and the current person
    LET s$="@" + n$(i(c))
    PRINT AT c+1,0;s$
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
BORDER 7
POKE 23606,0:POKE 23607,60
PRINT AT 23,0;INK 7; CHR$ 144+" Meh, 30:1"
PAUSE 0
