#### Parametric

set parametric
set samples 4000

set title("Parameter Function") font "CMU Serif,16"
set xrange [-1.2:1.2]
set yrange [-1.2:1.2]
set trange [0:2*pi]
set xtics  font "CMU Serif,12"
set ytics  font "CMU Serif,12"
unset key

plot sin(4*t), sin(5*t) lw 2

pause (-1)