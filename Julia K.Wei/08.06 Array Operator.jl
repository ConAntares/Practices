#### Array Operators

A = LinearIndices(1:4)
println(A)              # [1, 2, 3, 4]

B = -A
println(B)              # [-1, -2, -3, -4]

C = A + B
println(C)              # [0, 0, 0, 0]

D = 10 * A
println(D)              # [10, 20, 30, 40]

E = A/10
println(E)              # [0.1, 0.2, 0.3, 0.4]