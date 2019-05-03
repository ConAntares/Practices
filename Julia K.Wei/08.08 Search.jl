#### Search

A = [1,2,3,4]./2
println(A)                      # [0.5, 1.0, 1.5, 2.0]
println(in(1,A))                # true
println(1 in A)                 # true
println(5 in A)                 # false
println(1 in [10,missing])      # missing

println(searchsorted(A,1.5))    # 3:3
println(findmax(A))             # (2.0, 4)
println(findmin(A))             # (0.5, 1)

M = broadcast(+,[1,2,3],[1 2 3])
println(M)                      # [2 3 4; 3 4 5; 4 5 6]
println(findmax(M))             # (6, CartesianIndex(3, 3))

S = [1,1,1,1,2,2,2,3,3,4]
println(findall(in(3),S))       # [8, 9]