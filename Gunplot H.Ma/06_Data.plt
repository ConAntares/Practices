#### A Simple Data Visualization

set xlabel  "Month"
set ylabel  "Precipitation (mm)"
set title   "Beijing"
unset key
set xrange  [0.5: 12.5]
set xtics   1,1,12

plot "06_Data.dat" with lines

pause (-1)