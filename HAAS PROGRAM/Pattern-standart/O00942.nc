%
O00942 (MATRITZA KONUSOM) 
G00 G17 G40 G49 G80 G90
G54 
G52 X0. Y0. Z-0.1 

#30= 3 (Nomer instrumenta) 
T#30 D#30 M06
G43 H#30 Z100. M31 
S2200 M03
#7= 500. (PODA4A mm.) 

#11= 41. (S-KLJU4A) 

#1= 0.2 (NA4ALO) 
#2= - #11 / 2 (KONEZ) 
#3= 0.25 (SHAG) 
#4= 16. (D-FREZI) 
#5= 0.075 (OFFN) 
#8= 105. (DLINA Y) 
#6= TAN[ 30. ] * 2 * #11 (SHIRINA PAZA) 
#10= 0.45 (OBSHAJA VELE4INA DELTI X, + ETO CENTR SHIRE) 

G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z10. M08 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#9= #1 / TAN[ 60. ] 

/ G00 X0. Y [ #8 / 2 + #4 / 2 + 10. ] 
/ G00 Z [ #1 ] 
/ G01 Y [ - #8 / 2 - #4 / 2 - 10. ] 
/ G00 Z10. 
G00 X [ - #6 / 2 - #9 + #4 / 2 + #5 ] Y [ #8 / 2 + #4 / 2 + 10. ] 
G00 Z [ #1 ] 
G01 X [ - #6 / 2 - #9 + #4 / 2 + #5 - #10 / 2 ] Y0. 
G01 X [ - #6 / 2 - #9 + #4 / 2 + #5 ] Y [ - #8 / 2 - #4 / 2 - 10. ] 
G00 X [ #6 / 2 + #9 - #4 / 2 - #5 ] 
G01 X [ #6 / 2 + #9 - #4 / 2 - #5 + #10 / 2 ] Y0. 
G01 X [ #6 / 2 + #9 - #4 / 2 - #5 ] Y [ #8 / 2 + #4 / 2 + 10. ] 

END1 
G00 Z100. M09 
G53 Y0 
G52 X0. Y0. Z0. 
M30




%