# Normal Compound Types:
struct FooA
    a::Int64
    b::Float64
end

mutable struct FooB
    c::Int64
    d::Float64
end

x = FooA(1, 2.5)
y = FooB(2, 3.5)
println(x)
println(isa(x, FooA))       # true
println(isa(x, FooB))       # false

println(x.a)
println(x.b)
println(y.c)
println(y.d)
y.d = 4.2
println(y.d,"\t",y)

mutable struct FooC
    a :: Int64
    b :: Real
    c :: Any
end

w = FooC(1,2,3)
println(w.a,"\t",w.b,"\t",w.c)
w.c = 3 + 2im
println(w.c)

struct Bar
    m::FooB
    b::Int64
end

z = Bar(y,20)
println(z)

# Single:
struct NoFields1
end
struct NoFields2
end
println(NoFields1 ===  NoFields1)
println(NoFields1 ===  NoFields2)
