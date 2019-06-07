#### Gaston

using Gaston

t = 0:0.01:1

set(print_fontface="CMU-Serif")
plot(t,sin.(2π*5*t), title = "A sine wave")