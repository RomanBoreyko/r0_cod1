%
O00010 (RR10)
(FR D63 ISKAR) 
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -150. / 2. + 42. + 65.9 / 2. ] Y [ 0. ] Z [ 0. ] 

T4 D04 M06 
G43 H04 Z150. 
S850 M03 
#10= 1000. (PODA4A mm.) 
 
#1= 2. (NA4ALO) 
#2= 0. (KONEZ) 
#3= 0.25 (SHAG) 
#4= 63. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= - #4 + 2. 
#8= #4 - 2. 
#9= #4 + 15. 
#6= -125. - #4 - 10. 

G00 X [ #8 ] Y [ #9 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
 
G00 X [ #8 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 Y [ #6 ] 
G00 Z [ #1 + 10. ] 

G00 X [ #7 ] Y [ #9 ] 
G00 Z [ #1 ] 
G01 Y [ #6 ] 
G00 Z [ #1 + 10. ] 

END1 
G00 Z150. M09 
M05 
G00 G53 X-350. Y0. 
G52 X0. Y0. Z0. 
M30 


%