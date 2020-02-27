#### Gaston

using Gaston

t = 0:0.01:1

plot(t, sin.(2π*3*t),
    linewidth="1", linecolor="blue", plotstyle="lines", legend = "test",
    linestyle="-", xlabel="Time(s)", ylabel="Amplitude (V)",
    font = "Consolas, 12")