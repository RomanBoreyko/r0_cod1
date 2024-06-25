%
O00005 (FREZ VERH)
G00 G17 G40 G49 G80 G90 
G54 
G52 X [ 0 ] Y [ 0. ] Z [ 0. ] 

T12 D12 M06 
G43 H12 Z150. 
S1000. M03 
#10= 1000. (PODA4A mm.) 
 
#1= 28.1 (NA4ALO) 
#2= 0. (KONEZ) 
#3= 1. (SHAG) 
#4= 63. / 2 (R INSTR) 
#5= 0. (OFFN) 

#7= -130. / 2. - #4 - 5. 
#8= 130. / 2. + #4 + 5. 

G00 X [ #7 ] Y [ 0. ] 
G00 Z35. M08 
G01 Z#1 F#10 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] S1200 F500. 

G00 X [ #7 ] Y [ 0. ] 
G01 Z [ #1 + #3 ] 
G01 X [ #8 ] 
G01 Z [ #1 ] 
G01 X [ #7 ] 

END1 
G00 Z150. M09 
G52 X0. Y0. Z0. 
M99.
%