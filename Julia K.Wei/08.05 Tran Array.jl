#### Tran Arrays

using SparseArrays
using LinearAlgebra

A = Matrix(UniformScaling{Float64}(1),(4,4))
println(A)

V = ones(4)
println(V)

# from normal array to sparse

As1 = sparse(A)
println(As1)
println(As1==A)         # true

As2 = SparseMatrixCSC(A)
println(As2)
println(As1==As1)       #  true

Vs1 = SparseVector(V)
println(Vs1)

# from sparse to normal array

A_source = collect(As1)
println(A_source)
println(A_source==A)    # true
println(A_source==As1)  # true

V_source = collect(Vs1)
println(V_source)

A_matrix = Matrix(As1)
println(A_matrix)

V_vector = Vector(Vs1)
println(V_vector)

Ac1 = Array(A)
println(Ac1)

Ac2 = Array(As1)
println(Ac2)

println(issparse(A))        # false
println(issparse(As1))      # true
println(issparse(Ac1))      # false
println(issparse(Ac2))      # false


