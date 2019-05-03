# Complex number:
x = 1 + 2im
y = 2 + 3im
println(x+y)                # 3 + 5im
println(x-y)                # -1 - 1im
println(x*y)                # -4 + 7im
println(x/y)                # 0.6153846153846154 + 0.07692307692307691im

println(x^2)                # -3 + 4im
println(2x)                 # 2 + 4im

println(2/5im==2/(5im))     # true
println(2/5im==(2/5)im)     # false
println(2/5im==(-2/5)im)    # true

println(sqrt(2+3im))        # 1.6741492280355401 + 0.8959774761298381im
println(cos(x))
println(exp(x))
println(abs(x))

x = 1
y = 2
z = complex(x,y)            # z = 1 + 2im
println(real(z))            # 1
println(imag(z))            # 2
println(angle(z))           # 1.1071487177940904

# Frac Number
x = 2//3
println(4//12)              # 1//3
println(numerator(x))       # 2
println(denominator(x))     # 3
println(float(x))           # 0.6666666666666666
isequal(float(x),1/2)       # true
