#### Sub Array

A = reshape(collect(1:12),3,4)
println(A)

## Reshape

println(A[2:3,3:4])
println(A[2,1:end])                     # the second row
println(A[2,:])                         # the second row
println(A[1:end,2])                     # the second column
println(A[:,2])                         # the second column

println(A[2,[4 3; 2 1]])                # the second row and the reshape
println(A[2,[true,true,true,true]])     # [2, 5, 8, 11]
println(A[2,[true,true,true,false]])    # [2, 5, 8]

## View

println(A[2:3,3:4])
V = view(A,2:3,3:4)
println(V)
println(V==A[2:3,3:4])                  # true

C = @view A[2:3,3:4]
println(C)
D = fill!(C,100)
println(D)
println(A)

# The view method has the better perfermance than the traditional reshape.

E = reshape(collect(1:12),3,4)
A = E[2:3,3:4]
V = view(E,2:3,3:4)
println(E[1,1])
println(A[1,1])
println(V[1,1])


