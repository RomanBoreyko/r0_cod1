%
O00002 (USTUP 238*28 FREZA D50)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ -2. ] Y [ 0. ] Z [ 0. ] 

T5 D05 M06
G43 H05 Z300. 
S1000. M03
#7= 1000. (PODA4A mm.) 

#1= 0.1 (NA4ALO) 
#2= -28. -0.05 (KONEZ) 
#3= 0.5 (SHAG) 
#4= 50. / 2 (DIAM INSTRUMENTA) 
#5= 0 (OFFN) 

G00 X [ - 238. - #4 - #5 ] Y [ -140. / 2 - #4 - 5. ] 
G00 Z [ #1 + 20 ] M08 F#7 
WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
IF [ #1 EQ #2 ] S1200 F200. 

G00 X [ - 238. - #4 - #5 ] Y [ -140. / 2 - #4 - 5. ] 

G00 Z [ #1 ] 
G01 Y [ 140. / 2 + #4 + 5. ] 
G00 Z [ 20. ] 
END1 

G00 Z300. M09 
G52 X0. Y0. Z0. 


M30 


%