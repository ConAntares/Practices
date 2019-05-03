# Matrix

using LinearAlgebra
using Statistics

# Vector
A = [1,2,3,4]                   # 4-element Array{Int64,1} (column)
B = [1 2 3 4]                   # 4-element Array{Int64,1} (row)
V = (0:10:50)                   # StepRange{Int64,Int64}[1:2:5]
println(V.start)                # 0
println(V.step)                 # 10: the size of one step
println(V.stop)                 # 50
num = convert(Integer,(V.stop-V.start)/V.step+1)
println(size(V))                # (6,)
println(num)                    # 6
println(length(V))              # 6 = num
for n in 1:num
    print("V[$n]=",V[n]," ")    # V[1]=0 V[2]=10 V[3]=20 V[4]=30 V[5]=40 V[6]=50
end
println()
println(first(V))               # 0
println(step(V))                # 10
println(last(V))                # 50

t = (1,2,3,4)                   # a tuple
b = collect(t)
println(b)                      # [1, 2, 3, 4]
a = [1:4]                       # 1-element Array{UnitRange{Int64},1}:
println([1:4])                  # UnitRange{Int64}[1:4]
c = collect(1:4)
println(c)                      # [1, 2, 3, 4]
println(collect(0:5:42))        # [0, 5, 10, 15, 20, 25, 30, 35, 40]
c = collect(1:4)
c1 = c                          # 4-element Array{Int64,1}:  c1 and c with same address
c2 = c[:]                       # 4-element Array{Int64,1}:  c2 copy to c
c[1] = 10
println(c1[1])                  # 10
println(c2[1])                  # 1

a = [1,2,3,4]                   # 4-element Array{Int64,1}:
b = [1;2;3;4]                   # 4-element Array{Int64,1}:
println(a==b)                   # true
c = [1 2 3 4]                   # 1×4 Array{Int64,2}:

x = ones(2,3)
    # 2×3 Array{Float64,2}:
    #  1.0  1.0  1.0
    #  1.0  1.0  1.0
y = zeros(2,3)
    # 2×3 Array{Float64,2}:
    #  0.0  0.0  0.0
    #  0.0  0.0  0.0
z = [x y]                       # = hcat(x,y)
    # 2×6 Array{Float64,2}:
    #  1.0  1.0  1.0  0.0  0.0  0.0
    #  1.0  1.0  1.0  0.0  0.0  0.0
hcat(x,y)
    # 2×6 Array{Float64,2}:
    #  1.0  1.0  1.0  0.0  0.0  0.0
    #  1.0  1.0  1.0  0.0  0.0  0.0
println(ndims(z))               # 2
z = [x,y]
    # 2-element Array{Array{Float64,2},1}:
    #  [1.0 1.0 1.0; 1.0 1.0 1.0]
    #  [0.0 0.0 0.0; 0.0 0.0 0.0]
z = [x;y]                       # = vcat(x,y)
    # 4×3 Array{Float64,2}:
    #  1.0  1.0  1.0
    #  1.0  1.0  1.0
    #  0.0  0.0  0.0
    #  0.0  0.0  0.0
println(size(z))                # (4,3)
println(length(z))              # 12
println(sum(z))                 # 6.0 = V[1]+V[2]+...

A = [1 2 3; 4 5 6; 7 8 9]
    # 3×3 Array{Int64,2}:
    #  1  2  3
    #  4  5  6
    #  7  8  9
B = [1 1 1; 1 1 0; 1 0 0]
    # 3×3 Array{Int64,2}:
    #  1  1  1
    #  1  1  0
    #  1  0  0
A + B
    # 3×3 Array{Int64,2}:
    #  2  3  4
    #  5  6  6
    #  8  8  9
println(isequal(A+B,A.+B))          # true
A - B
    # 3×3 Array{Int64,2}:
    #  0  1  2
    #  3  4  6
    #  6  8  9
println(isequal(A-B,A.-B))          # true
A * B                               # Matrix A * Matrix B
    # 3×3 Array{Int64,2}:
    #   6   3  1
    #  15   9  4
    #  24  15  7
A .* B                              # elements of A * elements of B
    # 3×3 Array{Int64,2}:
    #  1  2  3
    #  4  5  0
    #  7  0  0
A / B                               # Matrix A / Matrix B
    # 3×3 Array{Float64,2}:
    #  3.0  -1.0  -1.0
    #  6.0  -1.0  -1.0
    #  9.0  -1.0  -1.0
A ./ B                              # elements of A / elements of B
    # 3×3 Array{Float64,2}:
    #  1.0    2.0    3.0
    #  4.0    5.0  Inf  
    #  7.0  Inf    Inf

A = [1 2; 3 4]
sin.(A)
    # 2×2 Array{Float64,2}:
    #  0.841471   0.909297
    #  0.14112   -0.756802
V = [1, 2, 3, 4]
push!(V,5)
println(V)                          # [1, 2, 3, 4, 5]
pop!(V)
println(V)                          # [1, 2, 3, 4]
push!(V,5,6,7)
println(V)                          # [1, 2, 3, 4, 5, 6, 7]
append!(V,[9,10,11])
println(V)                          # [1, 2, 3, 4, 5, 6, 7, 9, 10, 11]
prepend!(V,[-1,0])
println(V)                          # [-1, 0, 1, 2, 3, 4, 5, 6, 7, 9, 10, 11]

M = [1 2 3 4; 5 6 7 8; 9 10 11 12; 13 14 15 16]
    # 4×4 Array{Int64,2}:
    #   1   2   3   4
    #   5   6   7   8
    #   9  10  11  12
    #  13  14  15  16
circshift(M,(0,1))
    # 4×4 Array{Int64,2}:
    #   4   1   2   3
    #   8   5   6   7
    #  12   9  10  11
    #  16  13  14  15
circshift(M,(1,0))
    # 4×4 Array{Int64,2}:
    #  13  14  15  16
    #   1   2   3   4
    #   5   6   7   8
    #   9  10  11  12
circshift(M,(1,1))
    # 4×4 Array{Int64,2}:
    #  16  13  14  15
    #   4   1   2   3
    #   8   5   6   7
    #  12   9  10  11
circshift(M,(1,-2))
    # 4×4 Array{Int64,2}:
    #  15  16  13  14
    #   3   4   1   2
    #   7   8   5   6
    #  11  12   9  10

randn(4)
    # 4-element Array{Float64,1}:
    #  -1.051756257264672 
    #   0.0979671904212717
    #   0.0371171485624543
    #   1.661457536562348
rand(2,3)
    # 2×3 Array{Float64,2}:
    #  0.119535  0.313698  0.287849
    #  0.883754  0.383357  0.346383
rand(Int8,2,3)
    # 2×3 Array{Int8,2}:
    #  113  -59  -27
    #  -95   -4   74
randn(2,3)
    # 2×3 Array{Float64,2}:
    #   0.398522  0.52586    0.494286
    #  -1.24685   0.905289  -0.922699

