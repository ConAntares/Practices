#### Bessel Function

# set terminal pdfcairo
# set output "T13.pdf"

set title ("Bessel Function {/:Italic J}_{0}({/:Italic x}{/=4  })") font "CMU Serif,16"
set xlabel ("{/:Italic x}") font "CMU Serif,12"
set ylabel ("{/:Italic y} = ({/:Italic x}{/=4  })") font "CMU Serif,14"
set xrange [0:10]
set xtics  (0,1,10) font "CMU Serif,10"
set ytics  font "CMU Serif,10"
# set grid
unset key

plot besj0(x)
# set output