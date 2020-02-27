#### Function

set encoding utf8
set samples 1000
set isosamples 40000,40000

gauss(x) = exp(-pi*x**2)
set title "Function exp({/:Italic π}{/:Italic x}^2)" font "CMU Serif,16"
set xrange [-4:4]
set yrange [-0.2:1.2]
unset key
unset border
set xtics axis -2,1,2 offset 0.6,0 font "CMU Serif,12"
set ytics axis -0,1,1 offset 0,0.6 font "CMU Serif,12"
set zeroaxis lt -1 lw 1
set arrow 1 from 3,0 to 4.2,0  filled size 0.2,15,60 lw 2
set arrow 2 from 0,1 to 0,1.22 filled size 0.2,15,60 lw 2

plot gauss(x) lw 3

pause (-1)