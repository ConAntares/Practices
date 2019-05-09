#### Bessel Function

# set terminal pdfcairo
# set output "T13.pdf"

set title ("Bessel Function {/:Italic J}_{0}({/:Italic x})") font "Times New Roman,16"
set xlabel ("{/:Italic x}") font "Times New Roman,14"
set ylabel ("{/:Italic y}") font "Times New Roman,14"
set xrange [0:10]
set xtics  (0,1,10) font "Times New Roman,10"
set ytics  font "Times New Roman,10"
unset key

plot besj0(x)
# set output