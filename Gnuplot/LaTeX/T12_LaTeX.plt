#### LaTeX

set terminal epslatex font "CMU-Serif"
set output "T10.tex"

set title   ("Function: $y = sin(4 \times x)$") font "CMU-Serif,16"
set xlabel  ("{/:Italic x}") font "CMU-Serif,14"
set ylabel  ("{/:Italic y}") font "CMU-Serif,14"
unset key
set xrange  [-2.0*pi:2.0*pi]
set yrange  [-1.5:1.5]
set xtics   font "CMU-Serif,10"
set ytics   font "CMU-Serif,10"
set sample 512

plot sin(4*x)

set output

pause (-1)