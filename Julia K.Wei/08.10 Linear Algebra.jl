#### Linear_Algebra

using LinearAlgebra

A = rand(4,4)
println(A)

T = tr(A)
println(T)

D = det(A)
println(D)

V = inv(A)
println(V)

S = A'
println(S)

N = eigvals(A)
println(N)

G = eigvecs(A)
println(G)