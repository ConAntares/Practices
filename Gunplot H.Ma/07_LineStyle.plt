#### A Simple Data Visualization with Line Style

set xlabel  "Month"
set ylabel  "Precipitation (mm)"
set title   "Beijing"
unset key
set xrange  [0.5: 12.5]
set xtics   1,1,12

plot "06_Data.dat" with linespoints linecolor 3 linewidth 2 pointtype 7 pointsize 2

pause (-1)