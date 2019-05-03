#### Muti Structures

## Outside

struct FooA
    a
    b::Float64
end

FooAa(x::Float64) = FooA(x,x)
println(FooAa(1.0))                 # FooA(1.0, 1.0)

FooAb(x::T) where T<:Integer = FooA(x^2,2x+3)
println(FooAb(2))                   # FooA(4, 7.0)

FooAc(m=1.0,n=2.0) = FooA(m,n)
println(FooAc())                    # FooA(1.0, 2.0)

## Inside

struct order_pair
    x::Real
    y::Real
    order_pair(a)=new(a,a)
end

println(order_pair(1))              # order_pair(1, 1)