%
O00060 (R-UGLI)
(Square Pocket Milling)
( POCKET - 32. X 32. MM )
( TOOL 1 / DIA 8. )
( SPINDLE 2000 RPM / FEED 2000. MM/M )
( DEPTH -3. / STEPOVER 6. )
G00 G17 G40 G49 G80 G90
G10 L12 P1 R8. (THIS LINE SETS D1 OFFSET)
T1 M06
G00 G90 G54 X10.701 Y6.701 S2000 M03
G43 H01 Z-3. M08
G01 G91 X0.5 F1000.
G01 G90 Z0. F1000.
G03 G91 Z-0.3 I-0.5 F1000. L10
G03 G90 Z-3. I-0.5 F1000.
G01 G90 X10.701 Y6.701 Z0. F2000.

G150 P125 Z-3. G41 I6. K0.8 R0. D01 Q0.54 F2000.
G40 X0.001 Y0.001 Z2.54
M09
G00 G90 G53 Z0 M05
M99 P135
N125 ( SUBROUTINE FOR VPS SQUARE POCKET )
G01 X16.001
Y16.001
X-15.999
Y-15.999
X16.001
G01 Y6.701
M99
N135 M30 ( END VPS SQUARE POCKET )

%