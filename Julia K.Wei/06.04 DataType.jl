println(typeof(Int64))              # DataType
println(typeof(Integer))            # DataType
println(typeof(Any))                # DataType

println(isa(Int, Int))              # false
println(isa(Integer, Integer))      # false
println(isa(Real, Real))            # false
println(isa(Any, Any))              # true
println(isa(Int, DataType))         # true
println(isa(Int64, DataType))       # true
println(isa(Integer, DataType))     # true
println(isa(Real, Any))             # true
println(isa(Real, DataType))        # true
println(isa(Any, DataType))         # true
println(isa(DataType, DataType))    # true

println(isa(Int64, Integer))        # false
println(isa(Integer, Int64))        # false
println(isa(Int64, Real))           # false
println(isa(3.2, Real))             # true
println(isa(3.2, Number))           # true
println(isa(3.2, Any))              # true

