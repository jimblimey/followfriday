REM Setup
RANDOMIZE
BORDER 0: BRIGHT 1: PAPER 0: INK 4: CLS
DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y,z,c AS UBYTE
DIM cb,cc AS UBYTE
REM Custom @ because the Speccy one is naff
POKE USR "A"+0, BIN 00111100
POKE USR "A"+1, BIN 01000010
POKE USR "A"+2, BIN 10011010
POKE USR "A"+3, BIN 10101010
POKE USR "A"+4, BIN 10111100
POKE USR "A"+5, BIN 10000000
POKE USR "A"+6, BIN 01111110
POKE USR "A"+7, BIN 00000000
REM Add the people, uncomment the required GOTO 5 to use a specific group
LET n$(1)="daph2theB"
LET n$(2)="CommodoreBlog"
LET n$(3)="Lord_Arse"
LET n$(4)="spectrum48k"
LET n$(5)="mrbiffo"
LET n$(6)="rexthedogge"
LET n$(7)="retro_gerry"
LET n$(8)="Deanydotcom"
LET n$(9)="RetroManiaGT1"
LET n$(10)="rEtRo_sPexX"
LET n$(11)="zx81adventures"
LET n$(12)="AbsoluteKaty"
LET n$(13)="stewie55uk"
LET n$(14)="FirepowerGaming"
LET n$(15)="rhayadercompute"
LET n$(16)="KaraTheBroken"
LET n$(17)="AfRetro"
LET n$(18)="snowman8679"
LET n$(19)="Segamastertim"
LET n$(20)="Tamaracade1"
'GOTO 5
LET n$(1)="JAMOGRAD"
LET n$(2)="iHarbonaut"
LET n$(3)="saucerbrain"
LET n$(4)="thatbunty"
LET n$(5)="NikkiAndBunty"
LET n$(6)="RussellRiker"
LET n$(7)="florinthedwarf"
LET n$(8)="_gazmarshall"
LET n$(9)="g8merdayz"
LET n$(10)="tobobobo"
LET n$(11)="RetroResolution"
LET n$(12)="RetroLaird"
LET n$(13)="russty_russ"
LET n$(14)="TheSplendidFox"
LET n$(15)="farrelltheferal"
LET n$(16)="RetroBrothers"
LET n$(17)="ZXDev2015"
LET n$(18)="zxkim811"
LET n$(19)="gamingmuso"
LET n$(20)="80sNostalgia"
'GOTO 5
LET n$(1)="GDHCAMERO"
LET n$(2)="RetroGamingRVG"
LET n$(3)="8_16_32bit"
LET n$(4)="GeekMid"
LET n$(5)="000Angus000"
LET n$(6)="TheRetroManCave"
LET n$(7)="SquaredSeven"
LET n$(8)="60sPsychoMods"
LET n$(9)="FlorinZx"
LET n$(10)="ezContents"
LET n$(11)="LemmyBarnett"
LET n$(12)="GAMETelford"
LET n$(13)="GTArajgaming"
LET n$(14)="Manhydra"
LET n$(15)="ZXadventurer"
LET n$(16)="BurghillGirl"
LET n$(17)="raymierussell"
LET n$(18)="theretrobyte"
LET n$(19)="Gaia_Alpha"
LET n$(20)="Ewan"

5 REM Pick order
FOR x=1 TO 20
    REM Pick a number
    25 LET c=INT(RND*21)
    REM Except zero (although ZXBASIC does actually use zero-based array indexing, I should update the code!)
    IF c=0 THEN
       GOTO 25
    END IF
    REM Check to make sure the number hasn't already been used
    FOR y=1 TO 20
        IF i(y)=c THEN
           GOTO 25
        END IF
    NEXT y
    REM Plop the index in the index array
    LET i(x)=c
NEXT x

REM Loopy madness!
FOR y=1 TO 20
    REM Create a string with our @ and the current person
    LET s$=CHR 144 + n$(i(y))
    REM Set number of times random characters iterate
    LET cc=5
    REM If its a short name, double the iterations
    IF LEN s$ < 6 THEN LET cc=cc*2: END IF
    REM Loop string
    FOR c=0 TO LEN s$-1
        REM Loop iterations
        FOR z=0 TO cc
            REM Loop current string position to end of string
            FOR x=c TO LEN s$-1
                REM Pick a random character in the range of 32-128
                LET cb=0
                DO UNTIL cb>32
                   LET cb=RND *128
                LOOP
                REM Print out random character
                PRINT AT y,x;BRIGHT RND *2; CHR$ cb
            NEXT x
        NEXT z
        REM Print out "revealed" strings
        PRINT AT y,c;s$(c TO c)
    NEXT c
NEXT y
