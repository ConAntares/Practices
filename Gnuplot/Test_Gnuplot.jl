#### Gnuplot

using Gnuplot

# Create some noisy data...
x = range(-2pi, stop=2pi, length=100);
y = 1.5 .* sin.(0.3 .+ 0.7x) ;
noise = randn(length(x))./2;
e = 0.5 * fill(1., length(x));

# ...and show them using gnuplot.
@gp(
    "set key horizontal font 'CMU-Serif'", 
    "set title 'Title'  font 'CMU-Serif'", 
    "set grid", 
    xrange = (-7,7), 
    ylabel = "Y label", 
    xlab   = "X label", 
    x, y, "w l t 'Real model' dt 2 lw 2 lc rgb 'red'",
    x, y + noise, e, "w errorbars t 'Data'"
)