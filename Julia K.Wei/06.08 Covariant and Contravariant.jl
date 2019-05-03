abstract type NP{T}
end

mutable struct NP1D{T}
    x :: T
end

mutable struct NP2D{T}
    x :: T
    y :: T
end

mutable struct NP3D{T}
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

# Convariant:
println(NP{<: Integer})
println(NP{T} where {T <: Integer})

# Convariant:
println(NP{>: Integer})
println(NP{T} where {T >: Integer})
