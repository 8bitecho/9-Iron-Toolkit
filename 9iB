   
 150 BORDER 0: PAPER 0: INK 7: CLS : REM Black on White default
 155 PRINT AT 21,0 ;"(c) Owen Reynolds 2019 GNU GPLv3"
 160 PAPER menuI: INK menuP: PRINT AT 0,0;"      9I BASIC system V."+STR$ version + "       "
 200 REM --- Print menu ---
 201 PAPER menuP: INK menuI
 205 PRINT AT 4,4 ;c$
 210 PAPER menuP: INK menuI
 215 FOR i=1 TO 9
 220 IF a$(i,1)<>" " THEN PRINT AT 6+i,4; i; " : ";a$(i)
 225 NEXT i
 230 IF a$(10,1)<>" " THEN PRINT AT 16,4; 0; " : ";a$(10)
 400 REM --- Keyboard ---
 410 LET k$=INKEY$: IF k$<"0" OR k$>"9" THEN : GO TO 400
 420 IF k$="0" THEN LET k$="10"
 430 IF a$ (VAL k$,1)<>" " THEN FLASH 1 : PRINT AT 6+VAL k$,4;"*": FLASH 0: GO TO 500 : REM --- Call
 490 LET k$="" : GO TO 400
 499 STOP : REM shouldnt hit
 500 REM --- C A L L ---
 504 IF k$="10" THEN GO TO 600
 506 FLASH 1: PRINT AT 18,10;" C A L L I N G " : FLASH 0 : PAUSE 100
 510 REM --- Call table ---
 511 IF k$="1" THEN GO SUB 1000
 512 IF k$="2" THEN GO SUB 1500
 513 IF k$="3" THEN GO SUB 2000
 514 IF k$="4" THEN GO SUB 2500
 515 IF k$="5" THEN GO SUB 3000
 516 IF k$="6" THEN GO SUB 3500
 517 IF k$="7" THEN GO SUB 4000
 518 IF k$="8" THEN GO SUB 4500
 519 IF k$="9" THEN GO SUB 5000
 585 LET k$=""
 590 GO TO 1 : REM Back to TOP
 599 STOP 
 600 REM --- Load file ---
 610 IF b$(1)= " " THEN FLASH 1: INK 2: PRINT AT 6+VAL k$,4;"!": FLASH 0: INK menuI: GO TO 640 : REM Fail Load
 620 BEEP 0.05,3: BEEP 0.075,4
 630 IF b$(1)<>" " THEN FLASH 1: PRINT AT 18,8;" L O A D I N G " : FLASH 0 : LOAD b$
 640 FLASH 1: INK 2: PRINT AT 18,8;" LOAD FAILED " : FLASH 0 : INK menuI: BEEP 0.5,-5
 699 STOP 
1000 REM --- CALL 1 ---
1499 RETURN 
1500 REM --- CALL 2 ---
1999 RETURN 
2000 REM --- CALL 3 ---
2499 RETURN 
2500 REM --- CALL 4 ---
2999 RETURN 
3000 REM --- CALL 5 ---
3499 RETURN 
3500 REM --- CALL 6 ---
3999 RETURN 
4000 REM --- CALL 7 ---
4499 RETURN 
4500 REM --- CALL 8 ---
4999 RETURN 
5000 REM --- CALL 9 ---
5499 RETURN 
9000 STOP 
9400 REM -----------------------
9401 LET version = 1
9405 RETURN 
9410 REM -----------------------
9500 STOP 
9501 REM --- Save 9IB.bas
9502 GO SUB 9400: LET f$="9IB_V"+STR$ version+".bas": PRINT "Saving - "+f$ : SAVE f$
9505 RUN 
9510 STOP 
9511 REM --- Save a new menu
9512 GO SUB 40
9513 PRINT "Saving - "+c$+".9ib" : SAVE c$+".9ib" LINE 1
9515 RUN 
9520 STOP 
9521 REM --- Save DISK
9522 PRINT "WARNING DISK SAVE? Y/N"
9523 INPUT k$
9524 IF k$ = "y" OR k$ = "Y" THEN PRINT "SAVING DISK..." : SAVE "DISK" LINE 1
9530 STOP 
