#### Key

set samples 4000

besj2(x) = besj1(x)*2/x - besj0(x)
set title("Bessel Function of the First Kind") font "CMU Serif,16"
set xrange [0:20]
set xtics  2 font "CMU Serif,12"
set ytics  font "CMU Serif,12"
set xlabel "{/:Italic x}" font "CMU Serif,14"
set ylabel "{/:Italic y}" font "CMU Serif,14"
set style line 1 lw 2 lc rgb"#FA140A"
set style line 2 lw 2 lc rgb"#FFC814"
set style line 3 lw 2 lc rgb"#00A0DC"
set key font "CMU Serif,12" box

plot    besj0(x) ls 1 t "{/:Italic J}_{0}({/:Italic x}{/=4  })" ,\
        besj1(x) ls 2 t "{/:Italic J}_{1}({/:Italic x}{/=4  })" ,\
        besj2(x) ls 3 t "{/:Italic J}_{2}({/:Italic x}{/=4  })"

pause (-1)