#### Sparse Array

using SparseArrays
using LinearAlgebra

Z = spzeros(4)
println(Z)          # 3-element SparseVector{Float64,Int64} with 0 stored entries

Z = spzeros(Float64,2,3)
println(Z)          # 2×3 SparseMatrixCSC{Float64,Int64} with 0 stored entries

I_35 = sparse(I,3,5)
println(I_35)       # [1,1]=[2,2]=[3,3]=true

F = sparse(UniformScaling{Float64}(10),3,3)
println(F)          # [1,1]=[2,2]=[3,3]=10.0

M = SparseMatrixCSC(I,3,4)
println(M)          # [1,1]=[2,2]=[3,3]=true

Fc = SparseMatrixCSC(UniformScaling{Float64}(10),3,4)
println(Fc)          # [1,1]=[2,2]=[3,3]=10.0

J = SparseMatrixCSC(I*1.0,3,4)
println(J)          # [1,1]=[2,2]=[3,3]=1.0

R = sprand(Float64,2,2,0.5)     # 稀疏矩阵, 非零概率0.5
println(R)

Rn = sprandn(Float64,2,2,0.5)    # 正负值都有
println(Rn)
