union_empty = Union{}

println(union_empty <: Int8)        # true
println(union_empty <: Float64)     # true
println(union_empty <: Real)        # true
println(union_empty <: Char)        # true
println(union_empty <: Any)         # true
println(union_empty <: Type)        # true