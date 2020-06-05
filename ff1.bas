REM Setup
BORDER 0: PAPER 0: INK 0: BRIGHT 1: CLS

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
LET n$(5)="thatbitchbunty"
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
LET n$(16)="KaraTheBroken"
LET n$(17)="AfRetro"
LET n$(18)="SpectrumTinted"
LET n$(19)="GentlemanNikki"
LET n$(20)="rEtRo_sPexX"
'GOTO start
LET n$(1)="GeekMid"
LET n$(2)="iHarbonaut"
LET n$(3)="saucerbrain"
LET n$(4)="FirepowerGaming"
LET n$(5)="Segamastertim"
LET n$(6)="RussellRiker"
LET n$(7)="florinthedwarf"
LET n$(8)="_gazmarshall"
LET n$(9)="RetroManiaGT1"
LET n$(10)="tobobobo"
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
REM Functions and data

SUB CentreText(s$ AS STRING, y AS UBYTE, c AS UBYTE, br AS UBYTE)
    DIM x AS UBYTE
    LET x = 16 - (LEN(s$) / 2)
    PRINT INK c; BRIGHT br; AT y,x; s$
END SUB

SUB DrawSemi(r AS FLOAT, xc AS FLOAT, yc AS FLOAT, i2 AS UBYTE, p AS UBYTE, c AS UBYTE)
    DIM x,y,d AS FLOAT
    LET x=0: LET y=r
    LET d=3-2*r
    DoDrawBlock(xc,yc,x,y,i2,p,c)
    s:
    LET x=x+1
    IF d>0 THEN
       LET y=y-1
       LET d=d+4*(x-y)+10
    ELSE
        LET d=d+4*x+6
    END IF
    DoDrawBlock(xc,yc,x,y,i2,p,c)
    IF y>=x THEN GO TO s
END SUB

SUB DoDrawBlock(xc AS FLOAT, yc AS FLOAT, x AS FLOAT, y AS FLOAT, i2 AS UBYTE, p AS UBYTE, c AS UBYTE) 
    IF yc-y < 23 AND xc+x < 32 AND yc-y >= 0 AND xc+x >= 0 THEN PRINT PAPER p;INK i2;AT yc-y,xc+x;CHR$ c
    IF yc-y < 23 AND xc-x < 32 AND yc-y >= 0 AND xc-x >= 0 THEN PRINT PAPER p;INK i2;AT yc-y,xc-x;CHR$ c
    IF yc-x < 23 AND xc+y < 32 AND yc-x >= 0 AND xc+y >= 0 THEN PRINT PAPER p;INK i2;AT yc-x,xc+y;CHR$ c
    IF yc-x < 23 AND xc-y < 32 AND yc-x >= 0 AND xc-y >= 0 THEN PRINT PAPER p;INK i2;AT yc-x,xc-y;CHR$ c
END SUB

start:
RANDOMIZE

FOR x=1 TO 20
    ' Pick a number
    pn:
    LET c=INT(RND*20)+1
    ' Check to make sure the number hasn't already been used
    FOR y=1 TO 20
        IF i(y)=c THEN
           GOTO pn
        END IF
    NEXT y
    ' Plop the index in the index array
    LET i(x)=c
NEXT x

GOTO rainbow

FOR x=1 TO 21
    IF x <= 3 THEN
      FOR y=0 TO 31
        PRINT PAPER 2; BRIGHT 1; AT x,y;" "
      NEXT y
    END IF
    IF x > 3 AND x <= 6 THEN
      FOR y=0 TO 31
        PRINT PAPER 2; INK 6; BRIGHT 1; AT x,y;CHR$ 145
      NEXT y
    END IF
    IF x > 6 AND x <= 9 THEN
      FOR y=0 TO 31
        PRINT PAPER 6; BRIGHT 1; AT x,y;" "
      NEXT y
    END IF
    IF x > 9 AND x <= 12 THEN
      FOR y=0 TO 31
        PRINT PAPER 4; BRIGHT 1; AT x,y;" "
      NEXT y
    END IF
    IF x > 12 AND x <= 15 THEN
      FOR y=0 TO 31
        PRINT PAPER 5; BRIGHT 1; AT x,y;" "
      NEXT y
    END IF
    IF x > 15 AND x <= 18 THEN
      FOR y=0 TO 31
        PRINT PAPER 1; BRIGHT 1; AT x,y;" "
      NEXT y
    END IF
    IF x > 18 THEN
      FOR y=0 TO 31
        PRINT PAPER 1; INK 2; BRIGHT 1; AT x,y;CHR$ 145
      NEXT y
    END IF
NEXT x

rainbow:
DrawSemi(15,15,18,2,0,143)
DrawSemi(14,15,18,2,0,143)
PRINT AT 15,2;INK 2; CHR$ 143
PRINT AT 11,3;INK 2; CHR$ 143
PRINT AT 10,5;INK 2; CHR$ 143
PRINT AT 9,6;INK 2; CHR$ 143
PRINT AT 8,7;INK 2; CHR$ 143
PRINT AT 6,8;INK 2; CHR$ 143
PRINT AT 5,12;INK 2; CHR$ 143
PRINT AT 5,18;INK 2; CHR$ 143
PRINT AT 6,22;INK 2; CHR$ 143
PRINT AT 8,23;INK 2; CHR$ 143
PRINT AT 9,24;INK 2; CHR$ 143
PRINT AT 10,25;INK 2; CHR$ 143
PRINT AT 11,27;INK 2; CHR$ 143
PRINT AT 15,28;INK 2; CHR$ 143
DrawSemi(13,15,18,2,6,145)
DrawSemi(12,15,18,2,6,145)
PRINT AT 13,4;INK 2; PAPER 6; CHR$ 145
PRINT AT 12,6;INK 2; PAPER 6; CHR$ 145
PRINT AT 11,7;INK 2; PAPER 6; CHR$ 145
PRINT AT 10,8;INK 2; PAPER 6; CHR$ 145
PRINT AT 9,9;INK 2; PAPER 6; CHR$ 145
PRINT AT 7,10;INK 2; PAPER 6; CHR$ 145
PRINT AT 7,20;INK 2; PAPER 6; CHR$ 145
PRINT AT 9,21;INK 2; PAPER 6; CHR$ 145
PRINT AT 10,22;INK 2; PAPER 6; CHR$ 145
PRINT AT 11,23;INK 2; PAPER 6; CHR$ 145
PRINT AT 12,24;INK 2; PAPER 6; CHR$ 145
PRINT AT 13,26;INK 2; PAPER 6; CHR$ 145
DrawSemi(11,15,18,6,6,143)
DrawSemi(10,15,18,6,6,143)
DrawSemi( 9,15,18,4,6,143)
DrawSemi( 8,15,18,4,6,143)
PRINT AT 14,8;INK 4; CHR$ 143
PRINT AT 13,9;INK 4; CHR$ 143
PRINT AT 12,10;INK 4; CHR$ 143
PRINT AT 11,11;INK 4; CHR$ 143
PRINT AT 11,19;INK 4; CHR$ 143
PRINT AT 12,20;INK 4; CHR$ 143
PRINT AT 13,21;INK 4; CHR$ 143
PRINT AT 14,22;INK 4; CHR$ 143
DrawSemi( 7,15,18,5,6,143)
DrawSemi( 6,15,18,5,6,143)
PRINT AT 12,13;INK 5; CHR$ 143
PRINT AT 12,17;INK 5; CHR$ 143
PRINT AT 14,12;INK 5; CHR$ 143
PRINT AT 15,11;INK 5; CHR$ 143
PRINT AT 16,9;INK 5; CHR$ 143
PRINT AT 16,21;INK 5; CHR$ 143
PRINT AT 15,19;INK 5; CHR$ 143
PRINT AT 14,18;INK 5; CHR$ 143
DrawSemi( 5,15,18,1,6,143)
DrawSemi( 4,15,18,1,6,143)
DrawSemi( 3,15,18,1,3,145)
DrawSemi( 2,15,18,1,3,145)


PAUSE 30

REM Loopy the people
FOR x=1 TO 20
  CentreText(CHR$ 146 + n$(i(x)),x+1,7,1)
  PAUSE 10
NEXT x

PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
BORDER 7: PAPER 7: BRIGHT 0
PRINT AT 22,0; "                                "
PRINT AT 23,0;INK 0; CHR$ 144; " Rod Jane Freddy ready, 30:1   "
PAUSE 0

STOP
