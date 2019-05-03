# Parameter Struct

struct Pos{T}
    x::T
    y::T
end
a = Pos{Int64}(1,2)
b = Pos{Float64}(1.2,3.4)

Pos{Float64} <: Pos         # true
Pos{Float64} >: Pos         # false
Pos{Float64} <: Pos{Real}   # false

function norm(p::Pos{<:Real})
    sqrt(p.x^2+p.y^2)
end
p = Pos{Float64}(1,2)
norm(p)                     # 2.23606797749979

struct Posc{T1,T2}
    x1::T1
    x2::T2
end
p1 = Posc{Int64,Float64}(1,2.3)
p1.x1                       # 1
p1.x2                       # 2.3

# Abstract Type
abstract type Pointa{T} end

Pointa{Int64} <: Pointa         # true
Pointa{Int64} <: Pointa{Real}   # false

# Primitive Type
primitive type Ptr{T} 64 end
Ptr{Float64} <: Ptr             # true

# Struct Tuple
struct TupleS{T1,T2}
    x1::T1
    x2::T2
end
t = TupleS{Int64,Float64}(1,2.4)

# Varary Tuple
Tup = Tuple{Float64,Vararg{Int64}}  
isa((1.2,),Tup)                 # true
isa((3.4,5),Tup)                # true
isa((6.7,8.9),Tup)              # false

# Single Type
U = Type{Float64}
isa(Float64,U)                  # true
isa(Real,U)                     # false
isa(U,Float64)                  # false
isa(U,Real)                     # false
isa(U,Type)                     # true

# Union All
struct Pos{T}
    x::T
    y::T
end
function fn(p::Pos{T} where T<:Real)
    p
end
struct Posn{T1,T2}
    x::T1
    y::T2
end
function fu(p::Posn{T1,T2} where T1<:Real where T2<:Float64)
    p
end
function fl(Pos{T} where Int64<:T<:Real)


