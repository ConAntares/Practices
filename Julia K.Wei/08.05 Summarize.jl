using SparseArrays
using LinearAlgebra

# sparse (I,J,V,[m,n,combine])

# I : Row index
# J : Column index
# V : Elements

I = [1,2,3,4]
J = [1,1,4,4]
V = [6,6,6,6]
S = sparse(I,J,V)
println(S)      # [1,1]=6 [2,1]=6 [3,4]=6 [4,4]=6

V = sparsevec(I,V)
println(V)      # [1]=6 [2]=6 [3]6 [4]=6

M = sparse(I,J,V,10,10) # Bulid 10*10
println(M)      # [1,1]=6 [2,1]=6 [3,4]=6 [4,4]=6



