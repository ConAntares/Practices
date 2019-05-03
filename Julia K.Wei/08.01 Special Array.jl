#### Array

A = zeros(2,3)
println(A)

Ai = zeros(Int32,(2,3))
println(Ai)

B = ones(2,3)
println(B)

C = trues(2,3)
println(C)

D = falses(2,3)
println(D)

E = rand(2,3)
println(E)

F = randn(2,3)      # 正态分布
println(F)

## Range
# range(start;length,stop,step) 
# step: a(n+1)-a(n)
# lenght: number of elements

A = range(0,stop=10)
println(A)          # 0:10

B = range(0,stop=10,step=5)
println(B)          # 0:5:10

C = range(0,length=10)
println(C)          # 0:9

