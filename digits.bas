#include <ucase.bas>
REM Variable setup
RANDOMIZE
DIM n$(1 TO 20)
DIM i(1 TO 20) AS UBYTE
DIM x,y,c AS UBYTE
REM Jump to the start which is actually at the end
GOTO start


REM Prints the graphics data to the screen at the given character co-ordinates - from https://zxbasic.readthedocs.io/en/latest/library/putchars.bas/
SUB putChars(x as uByte,y as uByte, width as uByte, height as uByte, dataAddress as uInteger)
' Copyleft Britlion. Feel free to use as you will. Please attribute me if you use this, however!
Asm
    BLPutChar:
             LD      a,(IX+5)
             ;AND     31
             ld      l,a
             ld      a,(IX+7) ; Y value
             ld      d,a
             AND     24
             add     a,64 ; 256 byte "page" for screen - 256*64=16384. Change this if you are working with a screen address elsewhere, such as a buffer.
             ld      h,a
             ld      a,d
             AND     7
             rrca
             rrca
             rrca
             OR      l
             ld      l,a

    PUSH HL ; save our address

    LD E,(IX+12) ; data address
    LD D,(IX+13)
    LD B,(IX+9) ; width
    PUSH BC ; save our column count

    BLPutCharColumnLoop:

    LD B,(IX+11) ; height 

    BLPutCharInColumnLoop:

    ; gets screen address in HL, and bytes address in DE. Copies the 8 bytes to the screen
    ld a,(DE) ; First Row
    LD (HL),a

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; second Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Third Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Fourth Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Fifth Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Sixth Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Seventh Row

    INC DE
    INC H
    ld a,(DE)
    LD (HL),a ; Eigth Row

    INC DE ; Move to next data item.

    DEC B
    JR Z,BLPutCharNextColumn
    ;The following code calculates the address of the next line down below current HL address.
    PUSH DE ; save DE
             ld   a,l   
             and  224   
             cp   224   
             jp   z,BLPutCharNextThird

    BLPutCharSameThird:
             ld   de,-1760
             ;and  a         
             add  hl,de
             POP DE ; get our data point back.
             jp BLPutCharInColumnLoop

    BLPutCharNextThird:
             ld   de,32      
             ;and  a
             add  hl,de   
             POP DE ; get our data point back.
    JP BLPutCharInColumnLoop

    BLPutCharNextColumn:
    POP BC
    POP HL
    DEC B
    JP Z, BLPutCharsEnd

    INC L   ; Note this would normally be Increase HL - but block painting should never need to increase H, since that would wrap around.
    PUSH HL
    PUSH BC
    JP BLPutCharColumnLoop


BLPutCharsEnd:

End Asm
END SUB


REM Store top and bottom graphics in memory for direct retrieval via label address later

c144:
ASM
   defb 0, 0, 0, 0, 62, 65, 65, 65
END ASM

c145:
ASM
   defb 0, 65, 65, 65, 62, 0, 0, 0
END ASM

c146:
ASM
   defb 62, 65, 65, 65, 62, 0, 0, 0
END ASM

c147:
ASM
    defb 0, 0, 0, 0, 8, 8, 8, 8
END ASM

c148:
ASM
   defb 0, 8, 8, 8, 8, 0, 0, 0
END ASM

c149:
ASM
   defb 0, 0, 0, 0, 62, 1, 1, 1
END ASM

c150:
ASM
   defb 62, 64, 64, 64, 62, 0, 0, 0
END ASM

c151:
ASM
   defb 62, 1, 1, 1, 62, 0, 0, 0
END ASM

c152:
ASM
   defb 0, 0, 0, 0, 65, 65, 65, 65
END ASM

c153:
ASM
   defb 62, 1, 1, 1, 1, 0, 0, 0
END ASM

c154:
ASM
   defb 0, 0, 0, 0, 62, 64, 64, 64
END ASM

c155:
ASM
   defb 62, 1, 1, 1, 62, 0, 0, 0
END ASM

c156:
ASM
   defb 0, 0, 0, 0, 62, 65, 65, 65
END ASM

c157:
ASM
   defb 0, 1, 1, 1, 1, 0, 0, 0
END ASM

c158:
ASM
   defb 62, 65, 65, 65, 65, 0, 0, 0
END ASM

c159:
ASM
   defb 0, 0, 0, 0, 94, 65, 65, 65
END ASM

c160:
ASM
   defb 62, 65, 65, 65, 94, 0, 0, 0
END ASM

c161:
ASM
   defb 0, 64, 64, 64, 62, 0, 0, 0
END ASM

c162:
ASM
   defb 0, 65, 65, 65, 94, 0, 0, 0
END ASM

c163:
ASM
   defb 62, 64, 64, 64, 64, 0, 0, 0
END ASM

c164:
ASM
   defb 14, 65, 65, 65, 62, 0, 0, 0
END ASM

c165:
ASM
   defb 0, 0, 0, 0, 1, 1, 1, 1
END ASM

c166:
ASM
   defb 0, 0, 0, 0, 65, 65, 65, 64
END ASM

c167:
ASM
   defb 62, 64, 65, 65, 65, 0, 0, 0
END ASM

c168:
ASM
   defb 0, 0, 0, 0, 64, 64, 64, 64
END ASM

c169:
ASM
   defb 0, 0, 0, 0, 62, 73, 73, 73
END ASM

c170:
ASM
   defb 0, 73, 73, 73, 73, 0, 0, 0
END ASM

c171:
ASM
   defb 0, 65, 65, 65, 65, 0, 0, 0
END ASM

c172:
ASM
   defb 62, 64, 64, 64, 64, 0, 0, 0
END ASM

c173:
ASM
   defb 0, 65, 69, 69, 62, 4, 4, 0
END ASM

c174:
ASM
   defb 0, 0, 0, 0, 62, 8, 8, 8
END ASM

c175:
ASM
   defb 0, 34, 34, 34, 28, 0, 0, 0
END ASM

c176:
ASM
   defb 0, 0, 0, 0, 73, 73, 73, 73
END ASM

c177:
ASM
   defb 8, 73, 73, 73, 62, 0, 0, 0
END ASM

c178:
ASM
   defb 0, 0, 0, 0, 65, 65, 65, 34
END ASM

c179:
ASM
   defb 0, 34, 65, 65, 65, 0, 0, 0
END ASM

c180:
ASM
   defb 0, 0, 0, 0, 0, 0, 0, 0
END ASM

c181:
ASM
   defb 0, 0, 0, 0, 127, 0, 0, 0
END ASM

SUB DPRINTAT(x AS UBYTE,y AS UBYTE,s$ AS STRING)
    DIM i AS UBYTE
    DIM c1, c2 AS UINTEGER
    REM Loop the string, set c1 and c2 to the matching memory addresses for top and bottom parts
    FOR i=0 TO LEN(s$)-1
        LET c1=0
        LET c2=0
        IF s$(i)="0" OR s$(i)="O" THEN
           LET c1 = @c144
           LET c2 = @c145
        END IF
        IF s$(i)="1" OR s$(i)="I" THEN
           LET c1 = @c147
           LET c2 = @c148
        END IF
        IF s$(i)="2" OR s$(i)="Z" THEN
           LET c1 = @c149
           LET c2 = @c150
        END IF
        IF s$(i)="3" THEN
           LET c1 = @c149
           LET c2 = @c151
        END IF
        IF s$(i)="4" THEN
           LET c1 = @c152
           LET c2 = @c153
        END IF
        IF s$(i)="5" OR s$(i)="S" THEN
           LET c1 = @c154
           LET c2 = @c155
        END IF
        IF s$(i)="6" THEN
           LET c1 = @c154
           LET c2 = @c146
        END IF
        IF s$(i)="7" THEN
           LET c1 = @c156
           LET c2 = @c157
        END IF
        IF s$(i)="8" THEN
           LET c1 = @c144
           LET c2 = @c146
        END IF
        IF s$(i)="9" THEN
           LET c1 = @c156
           LET c2 = @c151
        END IF
        IF s$(i)="A" THEN
           LET c1 = @c144
           LET c2 = @c158
        END IF
        IF s$(i)="B" THEN
           LET c1 = @c159
           LET c2 = @c160
        END IF
        IF s$(i)="C" THEN
           LET c1 = @c154
           LET c2 = @c161
        END IF
        IF s$(i)="D" THEN
           LET c1 = @c159
           LET c2 = @c162
        END IF
        IF s$(i)="E" THEN
           LET c1 = @c154
           LET c2 = @c150
        END IF
        IF s$(i)="F" THEN
           LET c1 = @c154
           LET c2 = @c163
        END IF
        IF s$(i)="G" THEN
           LET c1 = @c154
           LET c2 = @c164
        END IF
        IF s$(i)="H" THEN
           LET c1 = @c152
           LET c2 = @c158
        END IF
        IF s$(i)="J" THEN
           LET c1 = @c165
           LET c2 = @c145
        END IF
        IF s$(i)="K" THEN
           LET c1 = @c166
           LET c2 = @c167
        END IF
        IF s$(i)="L" THEN
           LET c1 = @c168
           LET c2 = @c161
        END IF
        IF s$(i)="M" THEN
           LET c1 = @c169
           LET c2 = @c170
        END IF
        IF s$(i)="N" THEN
           LET c1 = @c156
           LET c2 = @c171
        END IF
        IF s$(i)="P" THEN
           LET c1 = @c144
           LET c2 = @c172
        END IF
        IF s$(i)="Q" THEN
           LET c1 = @c144
           LET c2 = @c173
        END IF
        IF s$(i)="R" THEN
           LET c1 = @c144
           LET c2 = @c167
        END IF
        IF s$(i)="T" THEN
           LET c1 = @c174
           LET c2 = @c148
        END IF
        IF s$(i)="U" THEN
           LET c1 = @c152
           LET c2 = @c145
        END IF
        IF s$(i)="V" THEN
           LET c1 = @c152
           LET c2 = @c175
        END IF
        IF s$(i)="W" THEN
           LET c1 = @c176
           LET c2 = @c177
        END IF
        IF s$(i)="X" THEN
           LET c1 = @c178
           LET c2 = @c179
        END IF
        IF s$(i)="Y" THEN
           LET c1 = @c152
           LET c2 = @c155
        END IF
        IF s$(i)="_" THEN
           LET c1 = @c180
           LET c2 = @c181
        END IF
        REM If we have a match dump them to screen
        IF c1 > 0 AND c2 > 0 THEN          
          putChars(x+i,y,1,1,c1)
          putChars(x+i,y+1,1,1,c2)
        END IF
    NEXT i
END SUB

start:
REM Add the people, uncomment the required GOTO 5 to use a specific group
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
INK 1
GOTO 5
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
LET n$(12)="RetroLaird"
LET n$(13)="russty_russ"
LET n$(14)="TheSplendidFox"
LET n$(15)="farrelltheferal"
LET n$(16)="BurghillGirl"
LET n$(17)="electron_greg"
LET n$(18)="zxkim811"
LET n$(19)="SpectrumNez"
LET n$(20)="80sNostalgia"
INK 2
'GOTO 5
LET n$(1)="GDHCAMERO"
LET n$(2)="zx_speccy48k"
LET n$(3)="8_16_32bit"
LET n$(4)="AbsoluteKaty"
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
LET n$(17)="g8merdayz"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="Ewan"
INK 3
5 CLS
FOR x=1 TO 20
    REM Pick a number between 1 and 20
    25 LET c=(RND*21-1)+1
    REM Check to make sure the number hasn't already been used
    FOR y=1 TO 20
        IF i(y)=c THEN
           GOTO 25
        END IF
    NEXT y
    REM Plop the index in the index array
    IF i(x)=0 THEN
       LET i(x)=c
    END IF
NEXT x

LET c=0
FOR x=1 TO 20
    REM Even numbers go at 16 across, odd numbers at 0
    IF x MOD 2 = 0 THEN
       LET y=16
    ELSE
       LET y=0
    END IF
    REM Print out the current name making it all uppercase on the way
    DPRINTAT(y,c,Ucase(n$(i(x))))
    REM If it's an even number we're ready for the next line
    IF x MOD 2 = 0 THEN LET c=c+2
NEXT x
