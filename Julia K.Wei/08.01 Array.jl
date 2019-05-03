#### Array

println(Vector)     # Array{T,1} where T

println(Matrix)     # Array{T,2} where T

# Array{Type,Dimension}(undef,Size1,Size2,Size3)

A = Array{Float64,1}(undef,2)       # Vector 1*2
println(A)

B = Array{Float64,2}(undef,3,4)     # Matrix 3*4
println(B)

C = Array{Float64,3}(undef,4,5,6)   # Tensor 4*5*6
println(C)

D = Vector(undef,2)                 # Vector 1*2
println(D)                          # [#undef, #undef]

E = Matrix(undef,3,4)               # Matrix 3*4
println(E)                          # [#undef #undef #undef #undef; #undef #undef #undef #undef; #undef #undef #undef #undef]

##

A = [1.2 2.3 3.4 5.6 6.7]
println(A)

B = [1.2 'a' "abc" Some(3)]
println(B)

As = [1.2, 2.3, 3.4, 5.6, 6.7]
println(As)

Ad = [1.2; 2.3; 3.4; 5.6; 6.7]
println(Ad)

M = [1 2; 3 4; 5 6]
println(M)

##

A = hcat(1,2,3)
println(A)

B = vcat(1,2,3)
println(B)

C = hvcat(2,1,2,3,4,5,6)
println(C)

##