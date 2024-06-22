%
O00001 (PLOSKOST1 VERXxxxx)

G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T14 D14 M06 
G43 H14 Z300. 
S800. M03 
#10= 1000. (PODA4A mm.) 
 
#1= 0.5 (NA4ALO) 
#2= -5. (KONEZ) 
#3= 0.3 (SHAG) 
#4= 63. / 2. (R INSTR) 
#5= 0. (OFFN) 

#7= 280. / 2. (X) 
#8= 80. / 2. (Y) 

G00 X [ #7 + #4 + 20. ] Y25. 
G00 Z [ #1 + 20. ] M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
G01 X [ #7 + #4 + 20. ] Y25. 

G01 Z#1 
G01 X - [ #7 + #4 ] 
G01 Y -25. 

G01 X [ #7 + #4 + 20. ] 
G00 Y25. 
END1 

M09 
G00 Z200. 
G52 X0. Y0. Z0. 
M30 


%