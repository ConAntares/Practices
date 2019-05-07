#### A Simple Function Graph

set sample 512

set title   ("Hello, World!")
set xlabel  ("X")
set ylabel  ("Y")
unset key
set xrange  [-2*pi:2*pi]
set xtics   ("-2π"-2*pi,"-π"-pi,"0"0,"π"pi,"2π"2*pi,)

set ytics   (-1, -0.5, 0, 0.5, 1)

plot sin(4*x)

pause (-1)