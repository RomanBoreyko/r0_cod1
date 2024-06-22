%
O00025 (FASKA 1.6X45)
G00 G17 G40 G49 G80 G90
G54 
G52 X [ + 20. ] Y [ - 22.5 ] Z [ 0. ] 

T17 D17 M06
G43 H17 Z150. 
S5000 M03

#7= 300. (PODA4A mm.) 

#10= 18.6 (DIAMETR OTV) 
#1= -1.9 (NA4ALO) 
#2= -3.1 (KONEZ FASKA) 
#3= 2. (SHAG) 
#4= 4. / 2 (R INSTR) 
#5= 45. (UGOL) 

G00 X0. Y [ 0. ] 
G00 Z10. 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 
IF [ #1 LT #2 ] THEN #1= #2 
#20= #10 / 2 + [ [ #1 - #2 ] * TAN[ #5 ] ] - #4 

G00 X0. Y [ 0. ] 
G01 Z#1 F1000. 
G01 X0. Y#20 F#7 
G03 I [ 0. ] J [ - #20 ] 
G01 X0. Y [ 0. ] 

END1 

G00 X0. Y0. 

G00 Z150. M09 
M05 
G52 X0. Y0. Z0. 
M99 


%