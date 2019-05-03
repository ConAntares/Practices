# Abstract and Concrete Type

import Base: +, *
struct IntNum
    n::Int64
end

struct AnyNum
    n::Number
end

+(a::IntNum, b::IntNum) = IntNum(a.n + b.n)
*(a::IntNum, b::IntNum) = IntNum(a.n * b.n)

+(a::AnyNum, b::AnyNum) = AnyNum(a.n + b.n)
*(a::AnyNum, b::AnyNum) = AnyNum(a.n * b.n)

function calc_Int_time(a,b,c,n)
    for i in 1:n
        cal(IntNum(a), IntNum(b), IntNum(c))
    end
end

function calc_Any_time(a,b,c,n)
    for i in 1:n
        cal(AnyNum(a), AnyNum(b), AnyNum(c))
    end
end

@time calc_Int_time(1,2,3,1000000)      # 0.007439 seconds (18.06 k allocations: 964.375 KiB)
@time calc_Any_time(1,2,3,1000000)      # 1.341877 seconds (5.02 M allocations: 77.339 MiB, 0.89% gc time)

# We can conclud: concrete is better.

# Check the abstract type via @code_warntype
@code_warntype +(IntNum(5),IntNum(7))
    # Body::IntNum
    # 1 ─ %1 = (Base.getfield)(a, :n)::Int64
    # │   %2 = (Base.getfield)(b, :n)::Int64
    # │   %3 = (Base.add_int)(%1, %2)::Int64
    # │   %4 = %new(Main.IntNum, %3)::IntNum
    # └──      return %4`

@code_warntype +(AnyNum(5),AnyNum(7))
    # Body::IntNum
    # 1 ─ %1 = (Base.getfield)(a, :n)::Int64
    # │   %2 = (Base.getfield)(b, :n)::Int64
    # │   %3 = (Base.add_int)(%1, %2)::Int64
    # │   %4 = %new(Main.IntNum, %3)::IntNum
    # └──      return %4
    # Body::AnyNum
    # 1 ─ %1 = (Base.getfield)(a, :n)::Number
    # │   %2 = (Base.getfield)(b, :n)::Number
    # │   %3 = (%1 + %2)::Any
    # │   %4 = (Main.AnyNum)(%3)::AnyNum
    # └──      return %4

nums = collect(1:10^6)
@time sort(nums)            # 0.070417 seconds (104.49 k allocations: 12.784 MiB, 37.55% gc time)

nums = collect(Number,1:10^6)
@time sort(nums)            # 0.319113 seconds (100.17 k allocations: 12.747 MiB)

# Structure
mutable struct Mytype1
    x::AbstractFloat
end

mutable struct Mytype2{T<:AbstractFloat}        # This is faster, but cannot be changed.
    x::T
end

a = Mytype1(2.3)
b = Mytype2(2.3)
typeof(a)                       # Mytype1
typeof(b)                       # Mytype2{Float64}

function nr(n, prec)
    ctype = prec == 32 ? Float32 : Float64
    b = Complex{ctype}(2.3)
    d = 0
    for i in 1:n
        c = (b + 1.0f0)::Complex{ctype}
        d += c
    end
    d
end

function nr_op(n, prec)
    ctype = prec == 32 ? Float32 : Float64
    b = Complex{ctype}(2.3)
    d = opFunc(n, b::Complex{ctype})
end

function opFunc(n, b::Complex{T}) where {T}
    d = 0
    for i in 1:n
        c = (b + 1.0f0)::Complex{T}
        d += c
    end
    d
end

@time nr(10000, 64)             # 30.252726 seconds (6 allocations: 7.630 MiB, 6.40% gc time)
@time nr_op(10000, 64)          # 0.024156 seconds (52.08 k allocations: 2.744 MiB)

# Parameter
function array3(fillval, N)
    fill(fillval, ntuple(d->3, N))
end
typeof(array3(2.0, 4))      # Array{Float64,4}

function array3(fillval, ::Val{N}) where N
    fill(fillval, ntuple(d->3, Val(N)))
end

function call_array3(fillval, n)
    A = array3(fillval, Val(n))
end

function func1(n, x...)
    res = 0
    for i in 1:n
        res += x[2]
    end
    res
end

function func2(n, x, y)
    res = 0
    for i in 1:n
        res += y
    end
    res
end

@time func1(1000000000, 10, 10) # 0.310255 seconds (13.18 k allocations: 710.132 KiB)
@time func2(1000000000, 10, 10) # 0.006095 seconds (12.30 k allocations: 659.830 KiB)

using LinearAlgebra

function mynorm(A)
    if isa(A, Vector)
        return sqrt(real(dot(A,A)))
    elseif isa(A, Matrix)
        return maximum(svdvals(A))
    else
        error("mynorm: invalid argument")
    end
end

norm(x::Vector) = sqrt(real(dot(x, x)))
norm(A::Matrix) = maximum(svdvals(A))