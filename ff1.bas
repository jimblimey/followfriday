REM Setup
RANDOMIZE
BORDER 0: PAPER 0: INK 7: BRIGHT 1: CLS
POKE 23607,(@fontdata-256)/256
POKE 23606,@fontdata-256*(@fontdata/256)
DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y,c,cc,cb,cl,lc AS UBYTE

REM Add the people, uncomment the required GOTO to use a specific group
LET n$(1)="daph2theB"
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
LET n$(14)="FirepowerGaming"
LET n$(15)="rhayadercompute"
LET n$(16)="KaraTheBroken"
LET n$(17)="AfRetro"
LET n$(18)="79_Han_Solo"
LET n$(19)="NikkiAndBunty"
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
LET n$(16)="RetroBrothers"
LET n$(17)="SpectrumTinted"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="Ewan"
GOTO start
REM Functions and data

fontdata:
ASM
  defb 0,0,0,0,0,0,0,0
  defb 48,120,120,48,48,0,48,0
  defb 108,108,108,0,0,0,0,0
  defb 108,108,254,108,254,108,108,0
  defb 48,124,192,120,12,248,48,0
  defb 0,198,204,24,48,102,198,0
  defb 56,108,56,118,220,204,118,0
  defb 96,96,192,0,0,0,0,0
  defb 24,48,96,96,96,48,24,0
  defb 96,48,24,24,24,48,96,0
  defb 0,102,60,255,60,102,0,0
  defb 0,48,48,252,48,48,0,0
  defb 0,0,0,0,0,48,48,96
  defb 0,0,0,252,0,0,0,0
  defb 0,0,0,0,0,48,48,0
  defb 6,12,24,48,96,192,128,0
  defb 254,134,142,210,226,194,254,0
  defb 16,16,16,48,48,48,48,0
  defb 60,70,6,12,48,96,126,0
  defb 60,70,6,28,2,98,124,0
  defb 76,76,68,68,124,12,12,0
  defb 126,64,124,2,2,98,124,0
  defb 60,102,64,124,98,98,60,0
  defb 124,12,4,4,12,12,12,0
  defb 60,70,70,60,98,98,60,0
  defb 60,70,70,62,2,98,60,0
  defb 0,48,48,0,0,48,48,0
  defb 0,48,48,0,0,48,48,96
  defb 24,48,96,192,96,48,24,0
  defb 0,0,252,0,0,252,0,0
  defb 96,48,24,12,24,48,96,0
  defb 120,204,12,24,48,0,48,0
  defb 124,198,222,222,222,192,120,0
  defb 126,70,66,66,126,98,98,0
  defb 124,76,68,126,98,98,126,0
  defb 126,70,64,96,96,98,126,0
  defb 124,70,70,66,98,98,124,0
  defb 126,70,64,120,96,98,126,0
  defb 126,70,64,120,96,96,96,0
  defb 126,70,64,78,98,98,126,0
  defb 76,76,68,124,100,100,100,0
  defb 16,16,16,24,24,24,24,0
  defb 6,6,2,2,98,98,126,0
  defb 70,70,76,120,100,98,98,0
  defb 64,64,64,96,96,96,126,0
  defb 198,238,190,146,210,194,194,0
  defb 70,70,98,82,106,102,98,0
  defb 126,70,70,98,98,98,126,0
  defb 126,70,70,126,96,96,96,0
  defb 126,70,70,98,98,126,28,4
  defb 126,70,70,124,104,100,98,0
  defb 126,70,96,24,6,98,126,0
  defb 126,22,16,24,24,24,24,0
  defb 70,70,66,98,98,98,126,0
  defb 70,70,70,66,100,56,16,0
  defb 134,134,130,210,250,238,198,0
  defb 134,134,76,48,104,228,194,0
  defb 70,70,66,60,24,24,24,0
  defb 254,6,8,16,32,192,254,0
  defb 120,96,96,96,96,96,120,0
  defb 192,96,48,24,12,6,2,0
  defb 120,24,24,24,24,24,120,0
  defb 16,56,108,198,0,0,0,0
  defb 0,0,0,0,0,0,0,255
  defb 48,48,24,0,0,0,0,0
  defb 0,0,126,6,126,98,126,0
  defb 64,64,64,126,98,98,126,0
  defb 0,0,126,70,96,96,126,0
  defb 6,6,2,126,98,98,126,0
  defb 0,0,126,70,126,96,126,0
  defb 12,28,32,120,96,96,96,0
  defb 0,0,126,70,66,126,6,120
  defb 64,64,64,126,98,98,98,0
  defb 16,0,16,16,24,24,24,0
  defb 12,0,12,4,4,100,100,124
  defb 64,64,70,76,120,100,98,0
  defb 16,16,16,16,24,24,24,0
  defb 0,0,254,150,150,210,210,0
  defb 0,0,126,70,98,98,98,0
  defb 0,0,126,70,98,98,126,0
  defb 0,0,126,70,66,126,96,96
  defb 0,0,126,70,66,126,2,2
  defb 0,0,126,70,96,96,96,0
  defb 0,0,124,64,124,4,124,0
  defb 16,16,60,16,16,24,28,0
  defb 0,0,70,70,98,98,126,0
  defb 0,0,70,70,102,52,24,0
  defb 0,0,134,150,210,254,108,0
  defb 0,0,70,44,24,52,98,0
  defb 0,0,70,70,98,126,2,124
  defb 0,0,126,12,24,48,126,0
  defb 28,48,48,224,48,48,28,0
  defb 24,24,24,0,24,24,24,0
  defb 224,48,48,28,48,48,224,0
  defb 118,220,0,0,0,0,0,0
  defb 0,16,56,108,198,198,254,0
END ASM

start:
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

PRINT AT 0,0; INK 3; BRIGHT 1;"#ff orderer by Jim Blimey"

REM Loopy the people
FOR y=1 TO 20
    REM Create a string with our @ and the current person
    LET s$="@" + n$(i(y))
    REM Set number of times random characters iterate
    LET cc=3
    REM If its a short name, double the iterations
    IF LEN s$ < 6 THEN LET cc=cc*2
    REM Pick random colour for current line
    pc:
    LET cl=RND*6+1
    IF cl=lc THEN GOTO pc
    LET lc=cl
    REM Loop string
    FOR c=0 TO LEN s$-1
        REM Loop iterations
        FOR z=0 TO cc
            REM Loop current string position to end of string
            FOR x=c TO LEN s$-1
                REM Pick a random character in the range of 32-128
                LET cb=RND*(128-32)+32
                REM Print out random character
                PRINT AT y+1,x;INK RND*6+1; BRIGHT RND *2; CHR$ cb
            NEXT x
        NEXT z
        REM Print out "revealed" strings
        PRINT AT y+1,c;INK cl; BRIGHT 1; s$(c TO c)
    NEXT c
NEXT y

