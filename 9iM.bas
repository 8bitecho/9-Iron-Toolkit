1 REM 9 Item menu system
   2 REM (c) Owen Reynolds 2019 GNU GPL v3.0
  10 GO SUB 9400 : REM Version
  15 GO SUB 40 : REM Arrays
  20 GO TO 100 : REM Program
  30 REM -----------------------
  32 REM Fill out c$ a$ b$
  34 REM go2 9501 save 9IM_V.bas
  36 REM go2 9511 save c$.9im
  37 REM go2 9521 save DISK
  38 REM -----------------------
  40 REM Arrays
  44 REM c$ 8 char menu name
  45 LET c$="Menu1"
  50 DIM a$(10,20): REM Labels
  51 LET a$(1)=""
  52 LET a$(2)=""
  53 LET a$(3)=""
  54 LET a$(4)=""
  55 LET a$(5)=""
  56 LET a$(6)=""
  57 LET a$(7)=""
  58 LET a$(8)=""
  59 LET a$(9)=""
  60 LET a$(10)=" Next 9I menu"
  70 DIM b$(10,12): REM File.ex
  71 LET b$(1)=""
  72 LET b$(2)=""
  73 LET b$(3)=""
  74 LET b$(4)=""
  75 LET b$(5)=""
  76 LET b$(6)=""
  77 LET b$(7)=""
  78 LET b$(8)=""
  79 LET b$(9)=""
  80 LET b$(10)=" .9im": REM NEXT 9im Menu file to load
  99 RETURN 
 100 REM ----------------------
 101 REM Program
 102 REM ----------------------
 110 REM Colours 0black 1blue 2red 3magenta 4green 5cyan 6yellow 7white
 111 LET menuP = 1
 112 LET menuI = 6
 150 BORDER 0: PAPER 0: INK 7: CLS : REM Black on White default
 155 PRINT AT 21,0 ;"(c) Owen Reynolds 2019 GNU GPLv3"
 160 PAPER menuP: INK menuI: PRINT AT 0,0;"       9I Menu system V."+STR$ version + "       "
 200 REM --- Print menu ---
 201 PAPER menuP: INK menuI
 205 PRINT AT 4,4 ;c$
 210 PAPER menuP: INK menuI
 215 FOR i=1 TO 9
 220 IF a$(i,1)<>" " THEN PRINT AT 6+i,4; i; " : ";a$(i)
 225 NEXT i
 230 IF a$(10,1)<>" " THEN PRINT AT 16,4; 0; " : ";a$(10)
 500 REM --- Keyboard ---
 510 LET k$=INKEY$: IF k$<"0" OR k$>"9" THEN GO TO 500
 520 IF k$="0" THEN LET k$="10"
 550 IF b$(VAL k$,1)<>" " THEN GO TO 600
 560 IF a$(VAL k$,1)<>" " THEN FLASH 1: INK 2: PRINT AT 6+VAL k$,4;"!": FLASH 0: INK menuI
 590 LET k$="" : GO TO 500
 599 STOP 
 600 REM --- Load file ---
 610 BEEP 0.05,3: BEEP 0.075,4
 620 FLASH 1 : PRINT AT 6+VAL k$,4;"*" : FLASH 0
 630 FLASH 1: PRINT AT 18,8;" L O A D I N G " : FLASH 0
 640 LOAD b$(VAL k$)
 660 PRINT "load failed"
9000 STOP 
9400 REM -----------------------
9401 LET version = 1
9405 RETURN 
9410 REM -----------------------
9500 STOP 
9501 REM --- Save 9IM.bas
9502 GO SUB 9400: LET f$="9IM_V"+STR$ version+".bas": PRINT "Saving - "+f$ : SAVE f$
9505 RUN 
9510 STOP 
9511 REM --- Save a new menu
9512 GO SUB 40
9513 PRINT "Saving - "+c$+".9im" : SAVE c$+".9im" LINE 1
9515 RUN 
9520 STOP 
9521 REM --- Save DISK
9522 PRINT "WARNING DISK SAVE? Y/N"
9523 INPUT k$
9524 IF k$ = "y" OR k$ = "Y" THEN PRINT "SAVING DISK..." : SAVE "DISK" LINE 1
9530 STOP 
