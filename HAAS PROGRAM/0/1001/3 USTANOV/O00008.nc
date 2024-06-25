%
O00008 (SV 2 OTVE D12 L 70)
#10002= #3020 - #10000 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0 ] Y [ 0. ] Z [ 0 ] 

T19 D19 M06
G43 H19 Z150. 
S1400 M03

G00 X [ 32.5 ] Y [ 14. ] 
M97 P5 
M01 
M03 
G00 X [ 32.5 + 70. ] Y [ 14. ] 
M97 P5 

G69 G94 
G00 Z150. M09 
G52 X0. Y0. Z0. 
#10000= #3020 
#10001= #3012 
#10003= #10003 + #10002 


G00 G53 Y0. 
M30 

N5 G95 

M03 

#11= 2. (NA4ALO SVERLENIJA) 
#12= -3. (KONEZ SVERLENIJA) 
#13= 0.08 (PODA4A G95) 
#14= 3000. (PODA4A G94) 
#1= #12 (NA4ALO WHILE) 
#2= -26. (KONEZ) 
#3= 1. (SHAG) 
#4= 0.25 (NEDOEZD V CIKLE) 
#5= -3. (KOORDINATA OTSKOKA) 

M08 
G01 Z#11 G94 F#14 
G01 Z#12 G95 F#13 
G01 Z#5 G94 F#14 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 

M08 
G01 Z [ #1 + #3 + #4 ] G94 F#14 
G01 Z [ #1 ] G95 F#13 
G01 Z#5 G94 F#14 
END1 

G69 G94 
G01 Z2. F3000. 
G00 Z150. 
M99 


%