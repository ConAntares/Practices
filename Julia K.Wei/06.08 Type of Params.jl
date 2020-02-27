#%%
mutable struct Point1D{T1}
    x::T1
end

println(Point1D{Int32})
println(Point1D{Integer})
println(Point1D{Real})
println(Point1D{Int64} <: Any)                  # true
println(Point1D{Int64} <: Point1D)              # true
println(Point1D{Integer} <: Point1D)            # true
println(Point1D{Integer} <: Point1D{Real})      # false
println(Point1D{Integer} >: Point1D{Real})      # false
println(Point1D{Integer} <: Point1D{Integer})   # true
println(Point1D{Integer} <: Point1D{Real})      # false
println(Point1D{Integer} == Point1D{Integer})   # true
println(Point1D{Integer} == Point1D{Real})      # false

p1 = Point1D(1.23456)
println(p1.x)                                   # 1.23456
println(typeof(p1.x))                           # Float64
p2 = Point1D((Integer(1)))
println(p2.x)                                   # 1
println(typeof(p2.x))                           # Int64

mutable struct Point3D{T1, T2}
    x::T1
    y::T1
    z::T2
end

q1 = Point3D{Int64,Complex}(1,2,5.486)
println(q1)
println(q1.x,"\t", q1.y,"\t", q1.z)

# Definition 
mutable struct Point2D{T}
    x::T
    y::T
end

mymodule(p::Point2D) = sqrt(p.x^2+p.y^2)
p1 = Point2D(1,2)
println(mymodule(p1))

# A Example
abstract type NP{T}
end

println(NP{Int64} <: NP)                # true
println(NP{Int64} <: NP{Real})          # false

mutable struct NP1D{T} <: NP{T}
    x :: T
end

mutable struct NP2D{T} <: NP{T}
    x :: T
    y :: T
end

mutable struct NP3D{T} <: NP{T}
    x :: T
    y :: T
    z :: T
end

function module_t(p::NP)
    m = 0
    for field in fieldnames(p)
        m += getfield(p,field)^2
    end
    sqrt(m)
end