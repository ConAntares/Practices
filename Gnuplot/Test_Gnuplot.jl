#### Gnuplot

using Gnuplot

X = [1,2]

@gp(
    "set title 'Title'  font 'CMU-Serif'", 
    "set key            font 'CMU-Serif'", 
    "set grid", 
    "set xrange[-2*pi:2*pi]",
    "plot sin(4*x), x"
)