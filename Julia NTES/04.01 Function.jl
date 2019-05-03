# Function

function f1(x,y)
    x+y
end
f1(2,3)             # 5

function f11(x,y)
    z=x+y
    nothing
end
f11(2,3)            # nothing

function g(x,y)::Int8
    return x+y
end
typeof(g(2,3))      # Int8

+(1,2,3)            # 6
f2 = +
f2(2,3,4)           # 9

"Simple Add Function"
function funcAdd(x,y)
    x+y
end
@doc funcAdd        # Simple Add Function

# Anonymous Function
map(x->x*2+1,[1,2,3,4])

# Multi Return Values
function f3(x,y)
    x+y,x-y
end
f3(3,4)             # (7, -1)

# Changeable Variables
function f4(x...)
    r1 = length(x)
    r2 = x[r1]
    return r1,r2
end
println(f4(1,3,5))  # (3, 5)

# Unchangeable  Variables
function f5(x,y=1)
    return x+y
end
f5(3)               # 4
f5(3,2)             # 5

function f6(x;y,z=3)
    return x+y+z
end
f6(1,y=2)           # 6
f6(1,y=2,z=4)       # 7

function f7(x::Int8)
    x+3
end
f7(Int8(1))         # 4

# Map
function funcAbs(x)
    y = abs(x)
    return y
end
f = map(funcAbs,-4:4)
println(f)          # [4, 3, 2, 1, 0, 1, 2, 3, 4]

# Reduce
function add(x,y)
    x+y
end
reduce(add,1:10)            # 55 = 1+2+3+4+5+6+7+8+9+10
reduce(+,1:10)              # 55

"abcde" |> uppercase        # "ABCDE"
[i for i in 1:5] |> join    # "12345"

f8(x::Int64,y::Int64) = 2*x+y
f8(1,2)                     # 4

f8(x::Float64,y::Float64) = 2*x+y
f8(3,4)                     # 10

fv(V::Vector{T},x::T) where{T}=[V...,x]
FV = fv([1,2,3,4],10)
println(FV)                 # [1, 2, 3, 4, 10]

fn(x::T,y::T) where{T<:Number}=true              