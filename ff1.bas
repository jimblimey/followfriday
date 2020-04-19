' Setup
BORDER 0: PAPER 0: INK 3: BRIGHT 1: CLS

DIM n$(20)
DIM i(20) AS UBYTE
DIM x,c,cl,cr,lc,r AS UBYTE

POKE USR "A"+0,BIN 01000000
POKE USR "A"+1,BIN 10100000
POKE USR "A"+2,BIN 10111110
POKE USR "A"+3,BIN 01000001
POKE USR "A"+4,BIN 01000001
POKE USR "A"+5,BIN 10111110
POKE USR "A"+6,BIN 10100000
POKE USR "A"+7,BIN 01000000

POKE USR "B"+0, BIN 00001000
POKE USR "B"+1, BIN 00010100
POKE USR "B"+2, BIN 00010100
POKE USR "B"+3, BIN 00101010
POKE USR "B"+4, BIN 00101010
POKE USR "B"+5, BIN 01000001
POKE USR "B"+6, BIN 01001001
POKE USR "B"+7, BIN 01111111

' Add the people, uncomment the required GOTO to use a specific group
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
' Functions and data

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
    LET i(x)=x
NEXT x

POKE 23607,(@fontdata-256)/256
POKE 23606,@fontdata-256*(@fontdata/256)
' Loopy the people
FOR x=1 TO 20
    ' Create a string with our @ and the current person
    LET s$=" @" + n$(i(x))
    pc:
    LET cl=(RND*6)+1
    IF cl=lc THEN GOTO pc
    LET lc=cl
    FOR r=0 TO 20
      LET cr=(RND*6)+1
      PRINT INK cr;AT x+1, r;CHR$ 144
      IF r > 0 THEN PRINT INK cl;AT x+1,r-1;s$(r)
      IF r >= LEN(s$) THEN PRINT AT x+1,r-1; " "
      PAUSE 2
    NEXT r
    PRINT AT x+1,r-1; " "
    PAUSE 10
NEXT x

BORDER 7
POKE 23606,0:POKE 23607,60
PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
PAPER 7: BRIGHT 0
PRINT AT 22,0; "                                "
PRINT AT 23,0;INK 0; CHR$ 145; " Never ever eat pears, 30:1    "
PAUSE 0

STOP

fontdata:
ASM
  defb 0,0,0,0,0,0,0,0
  defb 0,8,8,8,8,0,8,0
  defb 80,80,80,0,0,0,0,0
  defb 80,80,248,80,248,80,80,0
  defb 32,120,160,112,40,240,32,0
  defb 192,200,16,32,64,152,24,0
  defb 64,160,64,168,144,152,96,0
  defb 16,32,64,0,0,0,0,0
  defb 16,32,64,64,64,32,16,0
  defb 64,32,16,16,16,32,64,0
  defb 32,168,112,32,112,168,32,0
  defb 0,32,32,248,32,32,0,0
  defb 0,0,0,0,0,32,32,64
  defb 0,0,0,120,0,0,0,0
  defb 0,0,0,0,0,96,96,0
  defb 0,0,8,16,32,64,128,0
  defb 112,136,152,168,200,136,112,0
  defb 32,96,160,32,32,32,248,0
  defb 112,136,8,16,96,128,248,0
  defb 112,136,8,48,8,136,112,0
  defb 16,48,80,144,248,16,16,0
  defb 248,128,224,16,8,16,224,0
  defb 48,64,128,240,136,136,112,0
  defb 248,136,16,32,32,32,32,0
  defb 112,136,136,112,136,136,112,0
  defb 112,136,136,120,8,16,96,0
  defb 0,0,32,0,0,32,0,0
  defb 0,0,32,0,0,32,32,64
  defb 24,48,96,192,96,48,24,0
  defb 0,0,248,0,248,0,0,0
  defb 192,96,48,24,48,96,192,0
  defb 112,136,8,16,32,0,32,0
  defb 112,136,8,104,168,168,112,0
  defb 32,80,136,136,248,136,136,0
  defb 240,72,72,112,72,72,240,0
  defb 48,72,128,128,128,72,48,0
  defb 224,80,72,72,72,80,224,0
  defb 248,128,128,240,128,128,248,0
  defb 248,128,128,240,128,128,128,0
  defb 112,136,128,184,136,136,112,0
  defb 136,136,136,248,136,136,136,0
  defb 112,32,32,32,32,32,112,0
  defb 56,16,16,16,144,144,96,0
  defb 136,144,160,192,160,144,136,0
  defb 128,128,128,128,128,128,248,0
  defb 136,216,168,168,136,136,136,0
  defb 136,200,200,168,152,152,136,0
  defb 112,136,136,136,136,136,112,0
  defb 240,136,136,240,128,128,128,0
  defb 112,136,136,136,168,144,104,0
  defb 240,136,136,240,160,144,136,0
  defb 112,136,128,112,8,136,112,0
  defb 248,32,32,32,32,32,32,0
  defb 136,136,136,136,136,136,112,0
  defb 136,136,136,136,80,80,32,0
  defb 136,136,136,168,168,216,136,0
  defb 136,136,80,32,80,136,136,0
  defb 136,136,136,112,32,32,32,0
  defb 248,8,16,32,64,128,248,0
  defb 112,64,64,64,64,64,112,0
  defb 0,0,128,64,32,16,8,0
  defb 112,16,16,16,16,16,112,0
  defb 32,80,136,0,0,0,0,0
  defb 0,0,0,0,0,0,248,0
  defb 64,32,16,0,0,0,0,0
  defb 0,0,112,8,120,136,120,0
  defb 128,128,176,200,136,200,176,0
  defb 0,0,112,136,128,136,112,0
  defb 8,8,104,152,136,152,104,0
  defb 0,0,112,136,248,128,112,0
  defb 16,40,32,248,32,32,32,0
  defb 0,0,104,152,152,104,8,112
  defb 128,128,240,136,136,136,136,0
  defb 32,0,96,32,32,32,112,0
  defb 16,0,48,16,16,16,144,96
  defb 64,64,72,80,96,80,72,0
  defb 96,32,32,32,32,32,112,0
  defb 0,0,208,168,168,168,168,0
  defb 0,0,176,200,136,136,136,0
  defb 0,0,112,136,136,136,112,0
  defb 0,0,176,200,200,176,128,128
  defb 0,0,104,152,152,104,8,8
  defb 0,0,176,200,128,128,128,0
  defb 0,0,120,128,240,8,240,0
  defb 64,64,240,64,64,72,48,0
  defb 0,0,144,144,144,144,104,0
  defb 0,0,136,136,136,80,32,0
  defb 0,0,136,168,168,168,80,0
  defb 0,0,136,80,32,80,136,0
  defb 0,0,136,136,152,104,8,112
  defb 0,0,248,16,32,64,248,0
  defb 24,32,32,64,32,32,24,0
  defb 32,32,32,0,32,32,32,0
  defb 192,32,32,16,32,32,192,0
  defb 64,168,16,0,0,0,0,0
  defb 0,0,32,80,248,0,0,0
END ASM
