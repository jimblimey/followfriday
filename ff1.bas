   1 RANDOMIZE
   2 BORDER 0: PAPER 0: INK 7: BRIGHT 1: CLS : LET lc=0
   3 LET m=20: REM change this to match the number of people
   5 DIM n$(m,31)
   6 DIM i(m)
   7 DEF FN m(a,b) = a - (INT (a/b)) * b: REM modulo func
   8 GO SUB 200: GO SUB 400
   9 PRINT "#ff orderer by Jim Blimey": PRINT
  10 FOR x=1 TO m
  20 LET c=INT (RND*m+1)
  30 IF i(c)=1 THEN GO TO 20
  40 IF i(c)=0 THEN LET i(c)=1
  45 LET s$=CHR$ 144 + n$(c)
  50 GO SUB 600
  60 NEXT x
 100 GO TO 1000
 200 LET n$(1)="Lord_Arse"
 210 LET n$(2)="daph2theB"
 220 LET n$(3)="stewie55uk"
 230 LET n$(4)="rEtRo_sPexX"
 240 LET n$(5)="Tamaracade1"
 250 LET n$(6)="rexthedogge"
 260 LET n$(7)="retro_gerry"
 270 LET n$(8)="Deanydotcom"
 280 LET n$(9)="RetroManiaGT1"
 290 LET n$(10)="spectrum48k"
 300 LET n$(11)="zx81adventures"
 310 LET n$(12)="AbsoluteKaty"
 320 LET n$(13)="CommodoreBlog"
 330 LET n$(14)="ContriteThe"
 340 LET n$(15)="mrbiffo"
 350 LET n$(16)="gamesyouloved"
 360 LET n$(17)="AfRetro"
 370 LET n$(18)="snowman8679"
 380 LET n$(19)="Segamastertim"
 381 LET n$(20)="rhayadercompute"
 400 POKE USR "A"+0,BIN 00111100
 410 POKE USR "A"+1,BIN 01000010
 420 POKE USR "A"+2,BIN 10011010
 430 POKE USR "A"+3,BIN 10101010
 440 POKE USR "A"+4,BIN 10111100
 450 POKE USR "A"+5,BIN 10000000
 460 POKE USR "A"+6,BIN 01111110
 470 POKE USR "A"+7,BIN 00000000
 480 POKE USR "B"+0,BIN 01000000
 490 POKE USR "B"+1,BIN 10100000
 500 POKE USR "B"+2,BIN 10111110
 510 POKE USR "B"+3,BIN 01000001
 520 POKE USR "B"+4,BIN 01000001
 530 POKE USR "B"+5,BIN 10111110
 540 POKE USR "B"+6,BIN 10100000
 550 POKE USR "B"+7,BIN 01000000
 560 RETURN 
 600 LET cl=INT (RND*7)
 601 IF cl=0 THEN GO TO 600
 602 IF cl=lc THEN GO TO 600
 603 LET lc=cl
 605 FOR r=0 TO 20
 606 LET cr=INT (RND*7)
 607 IF cr=0 THEN GO TO 606
 610 PRINT INK cr;AT x+1, r;"*"
 615 IF r > 0 THEN PRINT INK cl;AT x+1,r-1;s$(r)
 620 NEXT r
 621 PAUSE 10
 625 PRINT AT x+1,r-1; " "
 630 RETURN 
1000 REM end
1010 BRIGHT 0: BORDER 7