Int64_or_Float64 = Union{Int64, Float64}
println(Int64   <: Int64_or_Float64)        # true
println(Float64 <: Int64_or_Float64)        # true
println(Real    <: Int64_or_Float64)        # false