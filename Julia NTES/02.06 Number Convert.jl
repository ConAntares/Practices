x = 1.0
x           # 1.0
typeof(x)   # Float64

xi = Integer(x)
xi          # 1
typeof(xi)  # Int64

xr = Real(xi)
xr          # 1
typeof(xr)  # Int64 since Integer <: Real

xc = complex(xr)
xc          # 1+0im
typeof(xc)  # Complex{Int64}

xc = complex(xr,4)
xc          # 1+4im
typeof(xc)  # Complex{Int64}

xc = complex(xr/2,4)
xc          # 0.5+4im
typeof(xc)  # Complex{Float64}

xr = Real(6.42+0im)
xr          # 6.42
typeof(xr)  # Float64