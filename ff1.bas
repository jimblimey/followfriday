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

c32:
ASM
  defb 0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0
END ASM

c33:
ASM
  defb 0,24,60,60,60,60,24,24,24,16,0,24,24,0,0,0
END ASM

c34:
ASM
  defb 34,119,51,17,34,68,0,0,0,0,0,0,0,0,0,0
END ASM

c35:
ASM
  defb 0,0,18,18,18,127,36,36,36,254,72,72,72,0,0,0
END ASM

c36:
ASM
  defb 16,16,124,210,208,208,208,124,22,22,22,150,124,16,16,0
END ASM

c37:
ASM
  defb 0,66,190,68,12,8,24,16,48,32,100,74,196,0,0,0
END ASM

c38:
ASM
  defb 0,56,108,108,108,56,55,114,220,204,204,204,119,0,0,0
END ASM

c39:
ASM
  defb 16,56,24,8,16,32,0,0,0,0,0,0,0,0,0,0
END ASM

c40:
ASM
  defb 0,4,8,16,16,48,48,48,48,48,16,16,8,4,0,0
END ASM

c41:
ASM
  defb 0,32,16,8,8,12,12,12,12,12,8,8,16,32,0,0
END ASM

c42:
ASM
  defb 0,0,0,0,68,40,56,254,56,40,68,0,0,0,0,0
END ASM

c43:
ASM
  defb 0,0,0,0,0,24,24,126,24,24,0,0,0,0,0,0
END ASM

c44:
ASM
  defb 0,0,0,0,0,0,0,0,0,0,16,56,24,8,16,32
END ASM

c45:
ASM
  defb 0,0,0,0,0,0,0,126,0,0,0,0,0,0,0,0
END ASM

c46:
ASM
  defb 0,0,0,0,0,0,0,0,0,0,16,56,16,0,0,0
END ASM

c47:
ASM
  defb 0,6,6,12,12,24,24,48,48,96,96,192,192,0,0,0
END ASM

c48:
ASM
  defb 0,0,0,0,60,70,198,198,198,198,198,196,120,0,0,0
END ASM

c49:
ASM
  defb 0,0,0,0,8,24,120,24,24,24,24,24,126,0,0,0
END ASM

c50:
ASM
  defb 0,0,0,0,124,134,6,12,24,32,64,193,254,0,0,0
END ASM

c51:
ASM
  defb 0,0,0,0,60,70,4,8,28,6,6,6,6,12,112,0
END ASM

c52:
ASM
  defb 0,0,0,0,4,8,16,44,76,140,140,254,12,12,12,0
END ASM

c53:
ASM
  defb 0,0,0,2,60,32,32,112,12,6,6,6,6,12,112,0
END ASM

c54:
ASM
  defb 0,0,24,32,64,192,220,198,198,198,198,68,56,0,0,0
END ASM

c55:
ASM
  defb 0,0,0,64,126,130,6,4,12,24,24,48,48,48,48,0
END ASM

c56:
ASM
  defb 0,0,124,198,198,100,56,76,198,198,198,198,124,0,0,0
END ASM

c57:
ASM
  defb 0,0,0,0,56,68,198,198,118,6,6,6,4,8,48,0
END ASM

c58:
ASM
  defb 0,0,0,0,16,56,16,0,0,0,16,56,16,0,0,0
END ASM

c59:
ASM
  defb 0,0,0,0,16,56,16,0,0,0,16,56,24,8,16,32
END ASM

c60:
ASM
  defb 0,6,12,24,48,96,160,160,96,48,24,12,6,0,0,0
END ASM

c61:
ASM
  defb 0,0,0,0,0,126,0,0,126,0,0,0,0,0,0,0
END ASM

c62:
ASM
  defb 0,96,48,24,12,6,5,5,6,12,24,48,96,0,0,0
END ASM

c63:
ASM
  defb 0,124,134,198,6,4,8,16,16,24,0,24,24,0,0,0
END ASM

c64:
ASM
  defb 0,0,60,70,198,206,214,214,214,220,192,196,120,0,0,0
END ASM

c65:
ASM
  defb 0,24,24,24,60,44,44,44,126,70,70,70,239,0,0,0
END ASM

c66:
ASM
  defb 0,252,102,102,102,102,124,102,102,102,102,102,252,0,0,0
END ASM

c67:
ASM
  defb 0,58,102,194,192,192,192,192,192,192,192,98,60,0,0,0
END ASM

c68:
ASM
  defb 0,252,102,99,99,99,99,99,99,99,99,102,252,0,0,0
END ASM

c69:
ASM
  defb 0,255,97,96,96,100,124,100,96,96,96,97,254,0,0,0
END ASM

c70:
ASM
  defb 0,255,97,97,96,100,124,100,96,96,96,96,240,0,0,0
END ASM

c71:
ASM
  defb 0,58,102,194,192,192,192,207,198,198,198,102,56,0,0,0
END ASM

c72:
ASM
  defb 0,247,98,98,98,98,126,98,98,98,98,98,247,0,0,0
END ASM

c73:
ASM
  defb 0,60,24,24,24,24,24,24,24,24,24,24,60,0,0,0
END ASM

c74:
ASM
  defb 0,30,12,12,12,12,12,12,12,12,12,12,12,12,8,240
END ASM

c75:
ASM
  defb 0,247,100,108,104,104,120,108,108,108,102,102,247,0,0,0
END ASM

c76:
ASM
  defb 0,248,96,96,96,96,96,96,96,96,96,97,254,0,0,0
END ASM

c77:
ASM
  defb 0,195,102,118,126,86,86,70,70,70,70,70,239,0,0,0
END ASM

c78:
ASM
  defb 0,231,98,98,114,82,90,74,78,70,70,66,226,0,0,0
END ASM

c79:
ASM
  defb 0,60,102,195,195,195,195,195,195,195,195,102,60,0,0,0
END ASM

c80:
ASM
  defb 0,252,102,102,102,102,108,96,96,96,96,96,240,0,0,0
END ASM

c81:
ASM
  defb 0,60,102,195,195,195,195,195,195,195,195,102,60,16,57,14
END ASM

c82:
ASM
  defb 0,252,102,102,102,102,124,108,102,102,102,102,243,0,0,0
END ASM

c83:
ASM
  defb 0,122,198,194,192,112,60,14,6,6,134,198,188,0,0,0
END ASM

c84:
ASM
  defb 0,255,153,24,24,24,24,24,24,24,24,24,60,0,0,0
END ASM

c85:
ASM
  defb 0,247,98,98,98,98,98,98,98,98,98,98,60,0,0,0
END ASM

c86:
ASM
  defb 0,247,98,98,98,118,52,52,52,60,24,24,24,0,0,0
END ASM

c87:
ASM
  defb 0,247,98,98,98,98,106,106,106,106,126,126,52,0,0,0
END ASM

c88:
ASM
  defb 0,247,98,98,52,52,24,24,44,44,70,70,239,0,0,0
END ASM

c89:
ASM
  defb 0,247,98,98,98,52,52,24,24,24,24,24,60,0,0,0
END ASM

c90:
ASM
  defb 0,127,70,134,12,12,24,24,48,48,97,98,254,0,0,0
END ASM

c91:
ASM
  defb 0,60,48,48,48,48,48,48,48,48,48,48,60,0,0,0
END ASM

c92:
ASM
  defb 0,192,192,96,96,48,48,24,24,12,12,6,6,0,0,0
END ASM

c93:
ASM
  defb 0,60,12,12,12,12,12,12,12,12,12,12,60,0,0,0
END ASM

c94:
ASM
  defb 0,16,56,76,134,0,0,0,0,0,0,0,0,0,0,0
END ASM

c95:
ASM
  defb 0,0,0,0,0,0,0,0,0,0,0,0,0,255,0,0
END ASM

c96:
ASM
  defb 0,24,32,48,56,16,0,0,0,0,0,0,0,0,0,0
END ASM

c97:
ASM
  defb 0,0,0,0,0,120,140,12,60,204,204,205,118,0,0,0
END ASM

c98:
ASM
  defb 0,32,224,96,96,108,118,102,102,102,102,118,108,0,0,0
END ASM

c99:
ASM
  defb 0,0,0,0,0,60,102,96,96,96,96,98,60,0,0,0
END ASM

c100:
ASM
  defb 0,4,28,12,12,108,220,204,204,204,204,220,102,0,0,0
END ASM

c101:
ASM
  defb 0,0,0,0,0,60,102,126,96,96,96,98,60,0,0,0
END ASM

c102:
ASM
  defb 0,30,49,51,48,48,120,48,48,48,48,48,120,0,0,0
END ASM

c103:
ASM
  defb 0,0,0,0,0,123,206,204,204,204,120,96,124,134,198,124
END ASM

c104:
ASM
  defb 0,32,224,96,96,108,118,102,102,102,102,102,247,0,0,0
END ASM

c105:
ASM
  defb 0,16,56,16,0,24,56,24,24,24,24,24,60,0,0,0
END ASM

c106:
ASM
  defb 0,8,28,8,0,12,28,12,12,12,12,12,108,76,56,0
END ASM

c107:
ASM
  defb 0,32,224,96,96,103,102,108,120,108,108,102,231,0,0,0
END ASM

c108:
ASM
  defb 0,8,56,24,24,24,24,24,24,24,24,24,60,0,0,0
END ASM

c109:
ASM
  defb 0,0,0,0,0,106,254,106,106,106,98,98,247,0,0,0
END ASM

c110:
ASM
  defb 0,0,0,0,0,92,246,102,102,102,102,102,247,0,0,0
END ASM

c111:
ASM
  defb 0,0,0,0,0,60,102,102,102,102,102,102,60,0,0,0
END ASM

c112:
ASM
  defb 0,0,0,0,0,92,230,102,102,102,102,102,124,96,96,240
END ASM

c113:
ASM
  defb 0,0,0,0,0,118,204,204,204,204,204,204,124,12,12,30
END ASM

c114:
ASM
  defb 0,0,0,0,0,94,246,96,96,96,96,96,240,0,0,0
END ASM

c115:
ASM
  defb 0,0,0,0,0,122,198,114,28,6,134,198,188,0,0,0
END ASM

c116:
ASM
  defb 0,0,0,16,48,124,48,48,48,48,48,52,24,0,0,0
END ASM

c117:
ASM
  defb 0,0,0,0,0,238,102,102,102,102,102,103,58,0,0,0
END ASM

c118:
ASM
  defb 0,0,0,0,0,247,98,118,52,52,60,24,24,0,0,0
END ASM

c119:
ASM
  defb 0,0,0,0,0,247,98,106,106,106,106,126,36,0,0,0
END ASM

c120:
ASM
  defb 0,0,0,0,0,247,98,52,24,44,70,70,239,0,0,0
END ASM

c121:
ASM
  defb 0,0,0,0,0,247,98,98,52,52,24,24,24,16,176,224
END ASM

c122:
ASM
  defb 0,0,0,0,0,254,140,24,48,48,96,194,254,0,0,0
END ASM

c123:
ASM
  defb 0,14,24,16,16,8,112,112,8,16,16,24,14,0,0,0
END ASM

c124:
ASM
  defb 24,24,24,24,24,24,24,24,24,24,24,24,24,24,0,0
END ASM

c125:
ASM
  defb 0,112,24,8,8,16,14,14,16,8,8,24,112,0,0,0
END ASM

c126:
ASM
  defb 0,0,0,0,0,0,118,220,0,0,0,0,0,0,0,0
END ASM

c127:
ASM
  defb 0,0,0,0,16,56,108,198,198,198,254,0,0,0,0,0
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

SUB DPRINTAT(x AS UBYTE, y AS UBYTE, s$)
  DIM i AS UBYTE
  FOR i=0 TO LEN(s$)-1
    putChars(x+i,y,1,2,MAPCHAR(s$(i)))
  NEXT i
END SUB

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

start:
BORDER 7: PAPER 7: BRIGHT 0: INK 0: CLS
PRINT AT 23,0;CHR$ 127 + " 1982 Meh Ltd"
PAUSE 0
CLS
PRINT AT 23,0;"RUN"
FOR x=1 TO 2
    PRINT AT 23,4;INVERSE 0;"L"
    PAUSE 15
    PRINT AT 23,4;INVERSE 1;"L"
    PAUSE 15
NEXT x

BORDER 0: PAPER 0: INK 6: BRIGHT 1: CLS

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

LET x=2
LET y=0
FOR c=1 TO 20
    IF c=11 THEN
      LET x=2
      LET y=16
    END IF

    LET s$="@" + n$(i(c))
'    IF c<11 THEN
'      LET y=0
'    ELSE
'      LET y=16
'    END IF
    DPRINTAT(y,x,s$)
    LET x=x+2
    PAUSE 5
NEXT c

PRINT AT 0,0; BOLD 1; INK 7; BRIGHT 1;"#FF orderer by Jim Blimey"
BRIGHT 0
PRINT AT 23,0;INK 7; "0 Flange, 30:1"
PAUSE 0

STOP
