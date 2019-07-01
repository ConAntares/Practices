#### Gaston

using Gaston

t = 0:0.01:1

plot(t, sin.(2π*3*t),
    linewidth="2", linecolor="red", pointtype="ecircle", plotstyle="linespoints",
    linestyle="-", xlabel="Time(s)", ylabel="Amplitude (V)",
    font="Consolas, 12")