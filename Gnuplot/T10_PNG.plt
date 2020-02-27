#### PNG

set terminal pngcairo font "CMU-Serif"
set output "T10.png"

set title   ("Title")
set xlabel  ("{/:Italic x}")
set ylabel  ("{/:Italic y}")
unset key
set xrange  [-2.0*pi:2.0*pi]
set yrange  [-1.5:1.5]
set xtics
set ytics
set sample 512

plot sin(4*x)
set output
set terminal wxt

pause (-1)