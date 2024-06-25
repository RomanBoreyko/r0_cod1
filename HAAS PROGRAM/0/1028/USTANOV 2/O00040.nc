%
O00040 (RR39 MERA)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ -94. ] Y [ 39. / 2. ] Z [ 44. ] 

T23 D23 M06 
G43 H23 Z150. 
S1500. M03 
#10= 500. (PODA4A mm.) 
 
#1= 0 (NA4ALO) 
#2= -30. (KONEZ) 
#3= 30. (SHAG) 
#4= 19. / 2 (R INSTR) 
#5= 0 (OFFN) 

#6= 28.5 - 10. - #4 - 10. 
#7= 28.5 + 26. + 10. + #4 + 10. 
#8= -39. / 2. - #4 - #5 
#9= 39. / 2. + #4 + #5 

G00 X [ #7 ] Y [ #8 ] 
G00 Z10. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #7 ] Y [ #8 ] 
G01 Z [ #1 ] 
G01 X [ #6 ] 
G00 Y [ #9 ] 
G01 X [ #7 ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M99 


%