#### Gaston

using Gaston

t = 0:0.01:1

Gaston.set(print_fontface = "CMU-Serif")
Gaston.plot(t, sin.(2π*5*t), title = "A sine wave")

# got unsupported keyword argument "font"
# got unsupported keyword argument "print_fonface"