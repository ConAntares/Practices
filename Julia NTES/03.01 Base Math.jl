# Base Math

# Round Function
x = 1.23
println(round(x))       # 1.0
println(floor(x))       # 1.0
println(ceil(x))        # 2.0
println(trunc(x))       # 1.0
x = -1.23
println(round(x))       # -1.0
println(floor(x))       # -2.0
println(ceil(x))        # -1.0
println(trunc(x))       # -1.0

# Div Function
x = 7
y = 4
println(div(x,y))       # 1 = x÷y
println(fld(x,y))       # 1 = [x÷y] (xy>0) or [x÷y+1] (xy<0)
println(cld(x,y))       # 2 = [x÷y+1] (xy>0) or [x÷y] (xy<0)
println(rem(x,y))       # 3 = x%y
println(mod(x,y))       # 3 = x-y*N (N in N)
println(mod1(15,y))     # 3 = 15%y
println(mod1(16,y))     # 4 = y
println(mod2pi(x))      # 0.7168146928204135
println(divrem(x,y))    # (1, 3) : (div, rem)
println(fldmod(x,y))    # (1, 3) : (fld, mod)
println(mod(16,5))
println(gcd(4,12,16))   # 4 : Greatest Common Divisor
println(lcm(4,12,16))   # 48 : Least Common Multiple

# Singl Function
x = -4
y = 5
println(abs(x))         # 4
println(abs2(x))        # 16 = x^2
println(sign(x))        # -1
println(sign(-x))       # 1
println(signbit(x))     # true
println(signbit(-x))    # false
println(copysign(x,y))  # 4 : x*sign(y)
println(flipsign(x,y))  # -4 : x*sign(y)*(-1)

# Root
x = 5
y = 6
n = 7
println(sqrt(x))        # 2.23606797749979
println(cbrt(x))        # 1.709975946676697
println(hypot(x,y))     # 7.810249675906656 = sqrt(x^2+y^2)
println(hypot(3,4))     # 5.0
println(exp(x))         # e^x
println(expm1(x))       # e^(-x)
println(ldexp(x,n))     # x^n
println(log(x))         # log_e(x), ln(x)
println(log(b,x))       # log_b(x)
println(log2(x))        # log_2(x)
println(log10(x))       # log_10(x)
println(log1p(x))       # log_e(1+x)

# Trigonometric Functions
sin(x)
cos(x)
tan(x)
cot(x)
sec(x)
csc(x)

sinh(x)
cosh(x)
tanh(x)
coth(x)
sech(x)
csch(x)

asin(x)
acos(x)
atan(x)
acot(x)
asec(x)
acsc(x)

asinh(x)
acosh(x)
atanh(x)
acoth(x)
asech(x)
acsch(x)

sinc(x)
cosc(x)



