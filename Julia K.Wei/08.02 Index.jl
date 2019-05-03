#### Index of Array

## Cartesian Indexing

A = [1 2 3 4 5 6 7 8]
println(A[1])
println(A[4])

R = rand(2,3)
println(size(R))    # (2, 3)
println(R[1,2])     # Load R(1,2)
println(R[2,2])     # Load R(2,2)

J = 1:0.1:2
println(size(J))    # (11,)
println(J[1])       # 1.0
println(J[10])      # 1.9
println(J[11])      # 2.0

## End

C = [1 0 2; 2 0 8]
println(C[end])     # 8
println(C[end,end]) # 8
println(C[end,end]) # 8

## Change Value

A = [1; 2; 3; 4; 5; 6]
println(A[end])     # 6
println(A[end-1])   # 5
println(A[3])       # 3
A[3] = 30
println(A[3])       # 30

## Cartesian Index

# CartesianIndex{Dimensions}(i,j,k,...)
# CartesianIndex{Dimensions}((i,j,k,...))

A = [1,2,3,4,5,6]
B = ['a' 'b' 'c' 'd']
C = [10 20 30 40 50 60]

i = CartesianIndex(1,2)
println(B[i])   # b
println(C[i])   # 20

T = [(i,j,k) for i=1:2.0 for j=1:3.0 for k=1:4.0]
println(T[1,1,1,1])             # (1.0, 1.0, 1.0)
println(T[end,end,end])         # (2.0, 3.0, 4.0)

D = rand(2,3,4,5)
a = CartesianIndex(1,2,3,4)
println(D[a])                   # 0.411564805486216

## Linear Indexing

A = [i+j for j=1:3, i=0:3:9]
println(A)                          # [1 4 7 10; 2 5 8 11; 3 6 9 12]
println(A[2])                       # 2

## Tran Indexing

A = [10 13 16 19; 11 14 17 20; 12 15 18 21]
println(A)                          # [10 13 16 19; 11 14 17 20; 12 15 18 21]
println(A[2])                       # 11

ali = LinearIndices(A)
println(ali)                        # [ 1  4  7 10;  2  5  8 11;  3  6  9 12]
println(ali[2,3])                   # 8
println(A[2,3]==A[ali[2,3]])        # true
println(A[2,3])                     # 17
println(A[ali[2,3]])                # 17
println(A[8])                       # 17

aci = CartesianIndices(A)
println(aci)                        # CartesianIndex{2}[CartesianIndex(1, 1) CartesianIndex(1, 2) CartesianIndex(1, 3) CartesianIndex(1, 4); CartesianIndex(2, 1) CartesianIndex(2, 2) CartesianIndex(2, 3) CartesianIndex(2, 4); CartesianIndex(3, 1) CartesianIndex(3, 2) CartesianIndex(3, 3) CartesianIndex(3, 4)]
println(A[CartesianIndex(2,3)])     # 17

Cartesian = CartesianIndices((1:2,1:3))
println(Cartesian)                  # CartesianIndex{2}[CartesianIndex(1, 1) CartesianIndex(1, 2) CartesianIndex(1, 3); CartesianIndex(2, 1) CartesianIndex(2, 2) CartesianIndex(2, 3)]
println(Cartesian[5])               # CartesianIndex(1, 3)

Linear = LinearIndices((1:2,1:3))
println(Linear)                     # [1 3 5; 2 4 6]
println(Linear[5])                  # 5

## Tran Structure

P = [1 2 3; 4 5 6]
Q = vec(P)
M = reshape(P,3,2)
println(P)      # [1 2 3; 4 5 6]
println(Q)      # [1, 4, 2, 5, 3, 6]
println(M)      # [1 5; 4 3; 2 6]

for i in 1:6
    println(P[i]==M[i])             # true
end
