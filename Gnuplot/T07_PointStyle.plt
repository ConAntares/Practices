#### A Simple Data Visualization with Line Style

set encoding utf8
set xlabel  "Month"
set ylabel  "Precipitation (mm)"
set title   "Beijing"
unset key
set xrange  [0.5: 12.5]
set xtics   1,1,12

# plot "T06_Data.dat" with linespoints linecolor rgb"#00DCFF" linewidth 2 pointtype '✚' pointsize 2
plot "T06_Data.dat" with linespoints pointtype '✚' lc rgb"#64CDFF"

pause (-1)