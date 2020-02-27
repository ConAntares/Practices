#### Second Axis

set encoding utf8
set title   "Beijing" font "CMU Serif, 16"
set xlabel  "Month" font "CMU Serif, 14"
set ylabel  "Precipitation (mm)"  font "CMU Serif, 14"
set y2label "Temperature (°C)"  font "CMU Serif, 14"
set xrange  [0.5: 12.5]
set xtics   1,1,12  font "CMU Serif, 12"
set ytics   font "CMU Serif, 12"
set ytics   nomirror
set y2range  [-10: 30]
set y2tics  (-10,-5,0,5,10,15,20,25,30) font "CMU Serif, 12"
unset key
set pointintervalbox 2

plot    "T14_Data.dat"  using 1:2 with linespoints \
                        linecolor "#00A0DC" linewidth 2 pointtype 7 pointsize 0.75 pointinterval -1 \
                        axis x1y1,\
        "T14_Data.dat"  using 1:3 with linespoints \
                        linecolor "#FF7800" linewidth 2 pointtype 7 pointsize 0.75 pointinterval -1 \
                        axis x1y2\

set output
# pause (-1)