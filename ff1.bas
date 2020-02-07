REM Setup
RANDOMIZE
BORDER 0: PAPER 0: INK 7: BRIGHT 1: CLS
DIM n$(20)
DIM i(20) AS UBYTE
DIM x,y,z,c,r AS UBYTE
DIM cl, lc, cr AS UBYTE

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
GOTO start
LET n$(1)="LabsSkull"
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
LET n$(17)="SpectrumTinted"
LET n$(18)="theretrobyte"
LET n$(19)="0xC0DE6502"
LET n$(20)="Ewan"
GOTO start
REM Functions and data
c32:
ASM
defb 0,0,0,0,0,0,0,0
END ASM

c33:
ASM
defb 16,56,56,16,16,0,16,0
END ASM

c34:
ASM
defb 36,36,36,0,0,0,0,0
END ASM

c35:
ASM
defb 36,36,126,36,126,36,36,0
END ASM

c36:
ASM
defb 24,62,64,60,2,124,24,0
END ASM

c37:
ASM
defb 0,98,100,8,16,38,70,0
END ASM

c38:
ASM
defb 48,72,48,86,136,136,118,0
END ASM

c39:
ASM
defb 16,16,32,0,0,0,0,0
END ASM

c40:
ASM
defb 16,32,64,64,64,32,16,0
END ASM

c41:
ASM
defb 32,16,8,8,8,16,32,0
END ASM

c42:
ASM
defb 0,68,56,254,56,68,0,0
END ASM

c43:
ASM
defb 0,16,16,124,16,16,0,0
END ASM

c44:
ASM
defb 0,0,0,0,0,16,16,32
END ASM

c45:
ASM
defb 0,0,0,126,0,0,0,0
END ASM

c46:
ASM
defb 0,0,0,0,0,16,16,0
END ASM

c47:
ASM
defb 0,2,4,8,16,32,64,0
END ASM

c48:
ASM
defb 60,66,70,74,82,98,60,0
END ASM

c49:
ASM
defb 16,48,80,16,16,16,124,0
END ASM

c50:
ASM
defb 60,66,2,12,48,66,126,0
END ASM

c51:
ASM
defb 60,66,2,28,2,66,60,0
END ASM

c52:
ASM
defb 8,24,40,72,254,8,28,0
END ASM

c53:
ASM
defb 126,64,124,2,2,66,60,0
END ASM

c54:
ASM
defb 28,32,64,124,66,66,60,0
END ASM

c55:
ASM
defb 126,66,4,8,16,16,16,0
END ASM

c56:
ASM
defb 60,66,66,60,66,66,60,0
END ASM

c57:
ASM
defb 60,66,66,62,2,4,56,0
END ASM

c58:
ASM
defb 0,16,16,0,0,16,16,0
END ASM

c59:
ASM
defb 0,16,16,0,0,16,16,32
END ASM

c60:
ASM
defb 8,16,32,64,32,16,8,0
END ASM

c61:
ASM
defb 0,0,126,0,0,126,0,0
END ASM

c62:
ASM
defb 16,8,4,2,4,8,16,0
END ASM

c63:
ASM
defb 60,66,2,4,8,0,8,0
END ASM

c64:
ASM
defb 60,66,94,82,94,64,60,0
END ASM

c65:
ASM
defb 24,36,66,66,126,66,66,0
END ASM

c66:
ASM
defb 124,34,34,60,34,34,124,0
END ASM

c67:
ASM
defb 28,34,64,64,64,34,28,0
END ASM

c68:
ASM
defb 120,36,34,34,34,36,120,0
END ASM

c69:
ASM
defb 126,34,40,56,40,34,126,0
END ASM

c70:
ASM
defb 126,34,40,56,40,32,112,0
END ASM

c71:
ASM
defb 28,34,64,64,78,34,30,0
END ASM

c72:
ASM
defb 66,66,66,126,66,66,66,0
END ASM

c73:
ASM
defb 56,16,16,16,16,16,56,0
END ASM

c74:
ASM
defb 14,4,4,4,68,68,56,0
END ASM

c75:
ASM
defb 98,36,40,48,40,36,99,0
END ASM

c76:
ASM
defb 112,32,32,32,32,34,126,0
END ASM

c77:
ASM
defb 99,85,73,65,65,65,65,0
END ASM

c78:
ASM
defb 98,82,74,70,66,66,66,0
END ASM

c79:
ASM
defb 24,36,66,66,66,36,24,0
END ASM

c80:
ASM
defb 124,34,34,60,32,32,112,0
END ASM

c81:
ASM
defb 60,66,66,66,74,60,3,0
END ASM

c82:
ASM
defb 124,34,34,60,40,36,114,0
END ASM

c83:
ASM
defb 60,66,64,60,2,66,60,0
END ASM

c84:
ASM
defb 127,73,8,8,8,8,28,0
END ASM

c85:
ASM
defb 66,66,66,66,66,66,60,0
END ASM

c86:
ASM
defb 65,65,65,65,34,20,8,0
END ASM

c87:
ASM
defb 65,65,65,73,73,73,54,0
END ASM

c88:
ASM
defb 65,34,20,8,20,34,65,0
END ASM

c89:
ASM
defb 65,34,20,8,8,8,28,0
END ASM

c90:
ASM
defb 127,66,4,8,16,33,127,0
END ASM

c91:
ASM
defb 120,64,64,64,64,64,120,0
END ASM

c92:
ASM
defb 128,64,32,16,8,4,2,0
END ASM

c93:
ASM
defb 120,8,8,8,8,8,120,0
END ASM

c94:
ASM
defb 16,40,68,130,0,0,0,0
END ASM

c95:
ASM
defb 0,0,0,0,0,0,0,255
END ASM

c96:
ASM
defb 16,16,8,0,0,0,0,0
END ASM

c97:
ASM
defb 0,0,60,2,62,66,63,0
END ASM

c98:
ASM
defb 96,32,32,46,49,49,46,0
END ASM

c99:
ASM
defb 0,0,60,66,64,66,60,0
END ASM

c100:
ASM
defb 6,2,2,58,70,70,59,0
END ASM

c101:
ASM
defb 0,0,60,66,126,64,60,0
END ASM

c102:
ASM
defb 12,18,16,56,16,16,56,0
END ASM

c103:
ASM
defb 0,0,61,66,66,62,2,124
END ASM

c104:
ASM
defb 96,32,44,50,34,34,98,0
END ASM

c105:
ASM
defb 16,0,48,16,16,16,56,0
END ASM

c106:
ASM
defb 2,0,6,2,2,66,66,60
END ASM

c107:
ASM
defb 96,32,36,40,48,40,38,0
END ASM

c108:
ASM
defb 48,16,16,16,16,16,56,0
END ASM

c109:
ASM
defb 0,0,118,73,73,73,73,0
END ASM

c110:
ASM
defb 0,0,92,98,66,66,66,0
END ASM

c111:
ASM
defb 0,0,60,66,66,66,60,0
END ASM

c112:
ASM
defb 0,0,108,50,50,44,32,112
END ASM

c113:
ASM
defb 0,0,54,76,76,52,4,14
END ASM

c114:
ASM
defb 0,0,108,50,34,32,112,0
END ASM

c115:
ASM
defb 0,0,62,64,60,2,124,0
END ASM

c116:
ASM
defb 16,16,124,16,16,18,12,0
END ASM

c117:
ASM
defb 0,0,66,66,66,70,58,0
END ASM

c118:
ASM
defb 0,0,65,65,34,20,8,0
END ASM

c119:
ASM
defb 0,0,65,73,73,73,54,0
END ASM

c120:
ASM
defb 0,0,68,40,16,40,68,0
END ASM

c121:
ASM
defb 0,0,66,66,66,62,2,124
END ASM

c122:
ASM
defb 0,0,124,8,16,32,124,0
END ASM

c123:
ASM
defb 12,16,16,96,16,16,12,0
END ASM

c124:
ASM
defb 16,16,16,0,16,16,16,0
END ASM

c125:
ASM
defb 48,8,8,6,8,8,48,0
END ASM

c126:
ASM
defb 50,76,0,0,0,0,0,0
END ASM

c127:
ASM
defb 0,8,20,34,65,65,127,0
END ASM

poo:
ASM
defb 16, 8, 24, 60, 66, 126, 129, 126
END ASM

FUNCTION MAPCHAR(c$ AS STRING) AS UINTEGER
  DIM result AS UINTEGER
  LET result=0
  IF c$=CHR$(32) THEN result=@c32
  IF c$=CHR$(33) THEN result=@c33
  IF c$=CHR$(34) THEN result=@c34
  IF c$=CHR$(35) THEN result=@c35
  IF c$=CHR$(36) THEN result=@c36
  IF c$=CHR$(37) THEN result=@c37
  IF c$=CHR$(38) THEN result=@c38
  IF c$=CHR$(39) THEN result=@c39
  IF c$=CHR$(40) THEN result=@c40
  IF c$=CHR$(41) THEN result=@c41
  IF c$=CHR$(42) THEN result=@c42
  IF c$=CHR$(43) THEN result=@c43
  IF c$=CHR$(44) THEN result=@c44
  IF c$=CHR$(45) THEN result=@c45
  IF c$=CHR$(46) THEN result=@c46
  IF c$=CHR$(47) THEN result=@c47
  IF c$=CHR$(48) THEN result=@c48
  IF c$=CHR$(49) THEN result=@c49
  IF c$=CHR$(50) THEN result=@c50
  IF c$=CHR$(51) THEN result=@c51
  IF c$=CHR$(52) THEN result=@c52
  IF c$=CHR$(53) THEN result=@c53
  IF c$=CHR$(54) THEN result=@c54
  IF c$=CHR$(55) THEN result=@c55
  IF c$=CHR$(56) THEN result=@c56
  IF c$=CHR$(57) THEN result=@c57
  IF c$=CHR$(58) THEN result=@c58
  IF c$=CHR$(59) THEN result=@c59
  IF c$=CHR$(60) THEN result=@c60
  IF c$=CHR$(61) THEN result=@c61
  IF c$=CHR$(62) THEN result=@c62
  IF c$=CHR$(63) THEN result=@c63
  IF c$=CHR$(64) THEN result=@c64
  IF c$=CHR$(65) THEN result=@c65
  IF c$=CHR$(66) THEN result=@c66
  IF c$=CHR$(67) THEN result=@c67
  IF c$=CHR$(68) THEN result=@c68
  IF c$=CHR$(69) THEN result=@c69
  IF c$=CHR$(70) THEN result=@c70
  IF c$=CHR$(71) THEN result=@c71
  IF c$=CHR$(72) THEN result=@c72
  IF c$=CHR$(73) THEN result=@c73
  IF c$=CHR$(74) THEN result=@c74
  IF c$=CHR$(75) THEN result=@c75
  IF c$=CHR$(76) THEN result=@c76
  IF c$=CHR$(77) THEN result=@c77
  IF c$=CHR$(78) THEN result=@c78
  IF c$=CHR$(79) THEN result=@c79
  IF c$=CHR$(80) THEN result=@c80
  IF c$=CHR$(81) THEN result=@c81
  IF c$=CHR$(82) THEN result=@c82
  IF c$=CHR$(83) THEN result=@c83
  IF c$=CHR$(84) THEN result=@c84
  IF c$=CHR$(85) THEN result=@c85
  IF c$=CHR$(86) THEN result=@c86
  IF c$=CHR$(87) THEN result=@c87
  IF c$=CHR$(88) THEN result=@c88
  IF c$=CHR$(89) THEN result=@c89
  IF c$=CHR$(90) THEN result=@c90
  IF c$=CHR$(91) THEN result=@c91
  IF c$=CHR$(92) THEN result=@c92
  IF c$=CHR$(93) THEN result=@c93
  IF c$=CHR$(94) THEN result=@c94
  IF c$=CHR$(95) THEN result=@c95
  IF c$=CHR$(96) THEN result=@c96
  IF c$=CHR$(97) THEN result=@c97
  IF c$=CHR$(98) THEN result=@c98
  IF c$=CHR$(99) THEN result=@c99
  IF c$=CHR$(100) THEN result=@c100
  IF c$=CHR$(101) THEN result=@c101
  IF c$=CHR$(102) THEN result=@c102
  IF c$=CHR$(103) THEN result=@c103
  IF c$=CHR$(104) THEN result=@c104
  IF c$=CHR$(105) THEN result=@c105
  IF c$=CHR$(106) THEN result=@c106
  IF c$=CHR$(107) THEN result=@c107
  IF c$=CHR$(108) THEN result=@c108
  IF c$=CHR$(109) THEN result=@c109
  IF c$=CHR$(110) THEN result=@c110
  IF c$=CHR$(111) THEN result=@c111
  IF c$=CHR$(112) THEN result=@c112
  IF c$=CHR$(113) THEN result=@c113
  IF c$=CHR$(114) THEN result=@c114
  IF c$=CHR$(115) THEN result=@c115
  IF c$=CHR$(116) THEN result=@c116
  IF c$=CHR$(117) THEN result=@c117
  IF c$=CHR$(118) THEN result=@c118
  IF c$=CHR$(119) THEN result=@c119
  IF c$=CHR$(120) THEN result=@c120
  IF c$=CHR$(121) THEN result=@c121
  IF c$=CHR$(122) THEN result=@c122
  IF c$=CHR$(123) THEN result=@c123
  IF c$=CHR$(124) THEN result=@c124
  IF c$=CHR$(125) THEN result=@c125
  IF c$=CHR$(126) THEN result=@c126
  IF c$=CHR$(127) THEN result=@c127
  RETURN result
END FUNCTION

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

SUB DPRINTAT(x AS UBYTE, y AS UBYTE, s$)
  DIM i AS UBYTE
  FOR i=0 TO LEN(s$)-1
    putChars(x+i,y,1,1,MAPCHAR(s$(i)))
  NEXT i
END SUB

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

paint(r,x+1,LEN("#ff orderer by Jim Blimey"),1,7)
DPRINTAT(0,0,"#ff orderer by Jim Blimey")

REM Loopy the people
FOR x=1 TO 20
    REM Create a string with our @ and the current person
    LET s$="@" + n$(i(x))
    colcheck:
    REM Pick a random colour for the line
    LET cl=(RND*6)+1
    REM Don't use the last colour!
    IF cl=lc THEN GOTO colcheck
    LET lc=cl
    REM Loop 20 columns
    FOR r=1 TO 20
      REM Do the poo
      LET cr=INT (RND*6)+1
      paint(r,x+1,1,1,cr)
      putChars(r,x+1,1,1,@poo)
      REM If in a valid range print the PREVIOUS character
      IF r>0 AND r<=LEN(s$) THEN
        paint(r-1,x+1,1,1,cl)
        DPRINTAT(r-1,x+1,s$(r-1 TO r-1))
      END IF
      REM If out of range just dump a space
      IF r>LEN(s$) THEN
        paint(r-1,x+1,1,1,cl)
        DPRINTAT(r-1,x+1," ")
      END IF
      PAUSE 2
    NEXT r
    PRINT AT x+1,r-1; " "
    PAUSE 10
NEXT x
