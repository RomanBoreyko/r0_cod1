O00010 


G00 G17 G40 G49 G80 G90 
G00 - ? ?????, 
G17 - ?????????? ?????????????????? XY, 
G40 - ????????? ?? ?????????????? ?????????????????? ??????????????????????, 
G49 - ???????????? ?????????????????? ????????????????????, 
G80 - ???????????? ???????????????????? ???????? ??????????????????, 
G90 - ???????????????????? ????????????????????)

G54 
(?????????????????? ?????????????? ?????????????????? G54)

T8 D08 M06 


G43 H08 Z100. 


S2250 M03 


G52 X[-12.] Y[0.] Z[0.] 


M97 P15 


M01 
(?????????????????? ??????????????????)

G52 X[-37.] Z0. 
(?????????????????? ?????????? ?????????????????? ?????????????? ?????????????????? ?? ?????????????????? ???? X ???? -37 ????)

G00 Z150. M09 
(???????????? ???????????????? ???? ???????????? 150 ????, ???????????????????? ????????????????)

M05 
(???????????????????? ????????????????)

G52 X0. Y0. Z0. 
(?????????????? ?? ???????????????? ?????????????? ??????????????????)

M30 
(?????????? ??????????????????)

N15 M03 
(?????????????????? ???????????????? ???????????????? ???????????????? ???? 2250 ???????????????? ?? ????????????)

#11=1. 
(?????????????????? ???????????????? ???????????????????? #11)

#12=-5 
(?????????????????? ???????????????? ???????????????????? #12)

#13=0.08 
(?????????????????? ???????????????? ???????????????????? #13)

#14=2000. 
(?????????????????? ???????????????? ???????????????????? #14)

#1=#12 
(?????????????????? ???????????????? ???????????????????? #1)

#2=-17. 
(?????????????????? ???????????????? ???????????????????? #2)

#3=1. 
(?????????????????? ???????????????? ???????????????????? #3)

#4=0.5 
(?????????????????? ???????????????? ???????????????????? #4)

#5=-3. 
(?????????????????? ???????????????? ???????????????????? #5)

G00 X0. Y0 
(???????????? ?????????????????????? ?? ????????????????????)

G00 Z10. M08 
(?????????????????? ?????????????????????? ???? ?????????????? 10 ????, ?????????????????? ?????????????????????? ????????????????)

G01 Z#11 G94 F[4000.] 


G01 Z#12 G95 F#13 


G01 Z#5 G94 F#14 


(WHILE...END1 ????????)

WHILE [#1 GT #2] DO1 


#1=#1-#3 


IF [#1 LT #2] THEN #1=#2 


G00 X0 Y0 M08 


G01 Z[#1+#3+#4] G94 F#14 
(?????????????????????? ?????????????????????? ???? ??????????????, ???????????? ?????????? ???????????????? ???????????????????? #1, #3 ?? #4, ???? ??????????????????, ?????????????????? ?? ???????????????????? #14, ?? ?????????????????? ???????????? G94)

G01 Z[#1] G95 F#13 
(?????????????????????? ?????????????????????? ???? ??????????????, ?????????????????? ?? ???????????????????? #1, ???? ??????????????????, ?????????????????? ?? ???????????????????? #13, ?? ?????????????????? ???????????? G95)

G01 Z#5 G94 F#14 
(?????????????????????? ?????????????????????? ???? ??????????????, ?????????????????? ?? ???????????????????? #5, ???? ??????????????????, ?????????????????? ?? ???????????????????? #14, ?? ?????????????????? ???????????? G94)

END1 
(?????????? ??????????)

G69 G94 
(?????????????????? ???????????? ????????????????)

G01 Z1. F3000. 


G69 G94 
(?????????????? ?? ???????????????? ???????????? ????????????????)

G00 Z50. 
(???????????? ?????????????????????? ???? ???????????? 50 ????)

M99 
(?????????? ??????????????????)

%