using PyPlot

x = 1:20
y = rand(20)

PyPlot.plot(x,y[:,1],lw=1,label="a")

PyPlot.show()
