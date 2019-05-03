# Constant Declaration: 
const a = 0.123456789
println(a)

# Type Judgment:
b = 1
println(b::Int64)
println(isa(b,Int32))
println(isa(b,Int64))
c = Int32(3)
println(isa(c,Int32))
println(isa(c,Int64))

println(isa(c,Signed))
println(isa(c,Unsigned))
println(isa(c,Integer))
println(isa(c,AbstractFloat))
println(isa(c,Real))
println(isa(c,Number))
println(isa(c,Any))
