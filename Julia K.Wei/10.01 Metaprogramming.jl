#### Metaprogramming

using Printf

## Symbol

A = Symbol(:a,:(=),:1,:+,:2,:*,:3)          # Symbol("a=1+2*3")
typeof(A)                                   # Symbol

## Expr

B = :[1,2,3,4]                              # :([1, 2, 3, 4])
typeof(B)                                   # Expr
#dump(B)

## Macro

macro sayhello()
    return:(println("Hello, world!"))
end
@sayhello                                   # Hello, world!

macro sayhello(name)
    return:(println("Hello, ", $name))
end
@sayhello                                   # Hello, world!

@sayhello()                                 # Hello, world!

@sayhello("human!")                         # Hello, human!

macro twonames(name1,name2)
    return:(println($name1," ",$name2))
end

@twonames("joy","tom")                      # joy, tom!

x = (1,2,3)
y = [1 2 3]
z = :(1+2)

@show(x,y,z)

@printf("%x %5f money %G", 10, 3.2, 9.7e6)  # a 3.200000 money 9.7E+06

@assert 1==1.0
@assert(1==1.0)
@assert(1!=2.0)

@time 1*2*3*4*5*6*7*8*9
@timev 1*2*3*4*5*6*7*8*9
@timed 1*2*3*4*5*6*7*8*9
@elapsed 1*2*3*4*5*6*7*8*9                  # 2.225e-6

@time sleep(0.4)                            # 0.401463 seconds (9 allocations: 352 bytes)
@timev sleep(0.4)
@timed sleep(0.4)
@elapsed sleep(0.4)                         # 0.401488169