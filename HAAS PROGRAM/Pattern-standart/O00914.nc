%
O00914 (OVAL VDOL X OTV) 
G00 G17 G40 G49 G80 G90
G54 
G52 X [ 0. ] Y [ 0. ] Z [ 0. ] 

T7 D07 M06
G43 H07 Z100. 
S2500 M03
#7= 900. (PODA4A mm.) 

#1= 0.5 (NA4ALO) 
#2= -6.5 (KONEZ) 
#3= 0.15 (SHAG  x2) 
#6= 13. (D-OTV.) 
#8= 30. (DLINNA PRJAMOGO U4ASTKA) 
#4= 8. (R-FREZI) 
#5= 0. (OFFN) 

G00 X [ #8 / 2 - #5 ] Y0. 
G00 Z10. M08 
G01 Z#1 F#7 

WHILE [ #1 GT #2 ] DO1 
#1= #1 - #3 * 2 
IF [ #1 LT #2 ] THEN #1= #2 

G01 X [ #8 / 2 - #5 ] Y0. Z [ #1 + #3 * 2 ] 
G01 X [ #8 / 2 - #5 ] Y [ #6 / 2 - #5 ] G41 
G01 X [ - #8 / 2 + #5 ] Z [ #1 + #3 ] 
G03 X [ - #8 / 2 + #5 ] Y [ - #6 / 2 + #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #8 / 2 - #5 ] Z#1 
G03 X [ #8 / 2 - #5 ] Y [ #6 / 2 - #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #8 / 2 - #5 ] Y0. G40 

END1 

G01 X [ #8 / 2 - #5 ] Y0. Z [ #1 ] 
G01 X [ #8 / 2 - #5 ] Y [ #6 / 2 - #5 ] G41 
G01 X [ - #8 / 2 + #5 ] Z [ #1 ] 
G03 X [ - #8 / 2 + #5 ] Y [ - #6 / 2 + #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #8 / 2 - #5 ] Z#1 
G03 X [ #8 / 2 - #5 ] Y [ #6 / 2 - #5 ] R [ #6 / 2 - #5 ] 
G01 X [ #8 / 2 - #5 ] Y0. G40 
G00 X [ #8 / 2 - #5 ] Y0. 

G00 Z100. M09 
G53 Y0. 
G52 X0. Y0. Z0. 
M30




%