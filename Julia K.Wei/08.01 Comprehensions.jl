#### Comprehensions

# [f(x,y,...) for x=rx,y=ry,...]

V = rand(4)
R = [0.5*V[i-1]+1*V[i]-0.5*V[i+1] for i=2:length(V)-1]

println(V)
println(R)

M = [i*j for i=2:3, j=3:4]
println(M)
# i(1)*j(1) i(1)*j(2)
# i(2)*j(1) i(2)*j(2)

T = [i*j+k for i=2:3, j=3:4, k=10:11]
println(T)
# i(1)*j(1)+k(1) i(1)*j(2)+k(1)
# i(2)*j(1)+k(1) i(2)*j(2)+k(1)
# i(1)*j(1)+k(2) i(1)*j(2)+k(2)
# i(2)*j(1)+k(2) i(2)*j(2)+k(2)

A = [(i,j) for i=1:3 for j=1:i]
println(A)          # Tuple{Int64,Int64}[(1, 1), (2, 1), (2, 2), (3, 1), (3, 2), (3, 3)]

B = [(i,j) for i=1:3 for j=1:i if i+j==4]
println(B)          # Tuple{Int64,Int64}[(2, 2), (3, 1)]

C = Float64[i*j for i=1:3, j=2:4]
println(C)          # [2.0 3.0 4.0; 4.0 6.0 8.0; 6.0 9.0 12.0]

