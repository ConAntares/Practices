#### A Simple Function Graph


set sample  512
set font    "CMU-serif"

set title   ("Hello, World!")   #font "CMU-Serif"
set xlabel  ("x")               #font "CMU-Serif"
set ylabel  ("y = sin(4x)")     #font "CMU-Serif"
set key     #font "CMU-Serif"
set xrange  [-2.0*pi:2.0*pi]
set yrange  [-1.5:1.5]

set xtics   #font "CMU-Serif"
set ytics   #font "CMU-Serif"

plot sin(4*x)

pause (-1)