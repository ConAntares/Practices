println(Unsigned <: Integer)        # true
println(Unsigned <: Int)            # false
println(Int      <: Unsigned)       # false
println(Int32    <: Int64)          # false
println(Int32    <: Int)            # false
println(Int      <: Integer)        # true
println(Int32    <: Real)           # true
println(Integer  <: Real)           # true
println(Int32    <: AbstractFloat)  # false
println(Real     <: AbstractFloat)  # false
println(Int32    <: Int32)          # true
println(Real     <: Real)           # true
println(Real     >: Integer)        # true

Myint = Integer
println(Myint    <: Real)           # true