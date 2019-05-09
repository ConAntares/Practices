#### 3D

set isosamples 100,100


f(x,y) = sin(sqrt(x*x+y*y))/sqrt(x*x+y*y)

set xlabel ("{/:Italic x}") font "CMU Serif,14"
set ylabel ("{/:Italic y}") font "CMU Serif,14"
set zlabel ("{/:Italic z}") font "CMU Serif,14"
# set cblabel ("Color Map")   font "CMU Serif,14"
set xtics  font "CMU Serif,12"
set ytics  font "CMU Serif,12"
set ztics  font "CMU Serif,12"
set cbtics font "CMU Serif,12"
set border 4095
set hidden3d
unset key
unset xtics
unset ytics
unset ztics
unset border

set style fill transparent solid 0.6 border
set pm3d depthorder border linecolor rgb "#a0a0f0" linewidth 0.5

splot f(x,y)  with pm3d

pause (-1)