abstract type Pw{T1 <: Integer, T2 <: Float64}          end
abstract type Pn{T}                                     end

mutable struct Pa{T1, T2} <: Pw{T1, T2}
    x :: T1
    y :: T1
    z :: T2
end

mutable struct Pb{T1 <: Integer, T2 <: Float64} <: Pw{T1, T2}
    x :: T1
    y :: T1
    z :: T2
end

mutable struct Pp{T1 <: Signed, T2 <: Real} <: Pw{T1, T2}
    x :: T1
    y :: T1
    z :: T2
end

