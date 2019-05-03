## Type

#(2+4)::Float64      # ERROR
(2+4)::Int64        # 6

function fu(x::Int64)::Float64
    x/10
end
fu(1)               # 0.1

# Abstract Type
"""
abstract type <name> end
abstract type <name> <: <supertype> end
"""

# Primitive type
"""
primitive type <name><bits> end
primitive type <name> <: <supertype><bits> end
"""
function fp(x::Int64)::Int32    # primitive type
    x + 10
end
a = fp(10)          # 20
typeof(a)           # Int32

function fq(x::Real)::Real      # abstract type
    x + 10
end
a = fq(10)          # 20
typeof(a)           # Int64

# Type convert
function foo(a,b)
    x::Int8 = a
    y::Int8 = b
    x + y
end

Int8(10.0)          # 10
convert(Int8,10.0)  # 10
parse(Int8,"10")    # 10

Base.convert(::Type{Int8},x::String)=parse(Int8,x)
convert(Int8,"10")  # 10

a = (1,2.0,Int8(3))
b = promote(1,2.0,Int8(3))  # (1.0, 2.0, 3.0)
