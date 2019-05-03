# GR
using GR

x = 0:0.1:100
y = sin.(x)
xlim([0,120])
ylim([-1.5,1.5])
GR.plot(x,y)