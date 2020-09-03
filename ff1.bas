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
LET n$(15)="DigitalGhostKA"
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
LET n$(8)="60sPsychoMods"
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
  defb 16,56,56,56,16,0,16,0
  defb 102,51,51,0,0,0,0,0
  defb 102,102,255,102,102,255,102,102
  defb 20,126,212,126,149,126,20,0
  defb 96,148,104,16,44,82,140,0
  defb 48,72,48,72,142,140,120,0
  defb 12,12,24,0,0,0,0,0
  defb 1,2,4,4,4,4,2,1
  defb 128,64,32,32,32,32,64,128
  defb 0,84,56,254,56,84,0,0
  defb 0,24,24,126,24,24,0,0
  defb 0,0,0,0,0,0,48,96
  defb 0,0,0,126,0,0,0,0
  defb 0,0,0,0,0,0,48,0
  defb 1,2,4,8,16,32,64,128
  defb 124,134,138,146,162,194,124,0
  defb 16,48,112,16,16,16,124,0
  defb 120,132,8,48,64,128,252,0
  defb 120,132,4,56,4,132,120,0
  defb 128,68,72,72,252,8,8,0
  defb 254,128,128,124,2,130,124,0
  defb 122,132,128,188,194,130,124,0
  defb 254,132,8,16,56,16,16,0
  defb 124,130,124,130,130,130,124,0
  defb 124,130,134,122,2,130,124,0
  defb 0,48,0,0,0,48,0,0
  defb 0,48,0,0,0,48,32,0
  defb 8,16,32,64,32,16,8,0
  defb 0,0,126,0,126,0,0,0
  defb 32,16,8,4,8,16,32,0
  defb 124,130,4,8,16,0,16,0
  defb 124,130,154,170,170,158,124,0
  defb 248,68,66,254,66,66,198,0
  defb 252,66,66,252,66,66,252,0
  defb 122,132,128,128,128,130,124,0
  defb 252,66,66,66,66,66,252,0
  defb 254,66,64,112,192,66,254,0
  defb 254,66,64,112,192,64,224,0
  defb 122,132,128,128,156,130,126,2
  defb 130,68,68,94,244,68,130,0
  defb 16,8,8,8,8,8,4,0
  defb 126,8,4,4,4,132,120,0
  defb 204,68,72,240,72,68,198,0
  defb 192,64,64,64,64,66,254,0
  defb 198,106,90,74,74,66,198,0
  defb 204,100,84,84,84,84,204,0
  defb 120,132,132,132,132,132,120,0
  defb 248,68,68,248,64,64,224,0
  defb 120,132,132,132,132,140,125,2
  defb 252,66,66,252,66,66,198,0
  defb 116,136,128,120,4,132,120,0
  defb 124,84,16,16,16,16,48,0
  defb 198,68,68,130,130,130,124,0
  defb 204,68,68,68,68,40,16,0
  defb 198,66,66,74,90,106,204,0
  defb 130,68,40,16,40,68,130,0
  defb 204,68,68,56,16,16,48,0
  defb 254,132,8,16,32,66,254,0
  defb 28,16,16,16,16,16,28,0
  defb 128,64,32,16,8,4,2,1
  defb 56,8,8,8,8,8,56,0
  defb 0,0,16,56,108,198,0,0
  defb 0,0,0,0,0,0,0,255
  defb 48,48,24,0,0,0,0,0
  defb 0,0,122,4,124,132,122,0
  defb 128,64,64,92,98,66,188,0
  defb 0,0,122,132,128,130,124,0
  defb 2,4,116,140,132,132,122,0
  defb 0,0,188,66,124,64,62,0
  defb 52,72,64,224,64,64,128,0
  defb 0,0,122,132,140,116,4,120
  defb 128,64,120,68,68,68,136,0
  defb 16,0,16,8,8,8,4,0
  defb 0,16,0,16,8,8,136,112
  defb 192,64,72,80,224,80,200,0
  defb 48,16,16,16,16,16,56,0
  defb 0,0,172,84,84,68,204,0
  defb 0,0,184,68,68,68,204,0
  defb 0,0,120,132,132,132,120,0
  defb 0,0,184,68,68,120,64,128
  defb 0,0,116,136,136,120,4,2
  defb 0,0,176,72,64,64,64,0
  defb 0,0,120,128,112,8,240,0
  defb 0,32,16,124,16,16,8,0
  defb 0,0,144,72,132,132,120,0
  defb 0,0,130,68,68,40,16,0
  defb 0,0,132,66,82,106,70,0
  defb 0,0,136,80,32,80,136,0
  defb 0,0,130,68,68,60,4,120
  defb 0,0,124,136,48,68,248,0
  defb 14,16,16,96,16,16,14,0
  defb 24,24,24,0,24,24,24,0
  defb 224,16,16,12,16,16,224,0
  defb 0,0,112,154,12,0,0,0
  defb 0,0,24,60,102,255,0,0
END ASM

start:
BORDER 7: PAPER 7: BRIGHT 0: INK 0: CLS
PRINT AT 23,0;CHR$ 127 + " 1982 No Idea Ltd"
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
  FOR c=1 TO 5
    LET s$=CHR$ 146 + n$(i(y))
    FOR x=1 TO 5
      PRINT INK RND *7; AT y+1,0;s$
    NEXT x
    PRINT INK 0; AT y+1,0;s$
    IF c=5 THEN PRINT INK 1+(RND *6); AT y+1,0;s$
  NEXT c
NEXT y

POKE 23606,0
POKE 23607,60

PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
BRIGHT 0
PRINT AT 23,0;INK 7; "0 Yup, 30:1"
PAUSE 0

STOP
