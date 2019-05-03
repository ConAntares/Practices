#### Rank

A = -1 .* LinearIndices(1:4)
println(A)              # [-1, -2, -3, -4]
println(issorted(A))    # false

S1 = sort(A)
println(S1)             # [-4, -3, -2, -1]
println(issorted(S1))   # true

S2 = sort(S1, rev=true)
println(S2)             # [-1, -2, -3, -4]
println(issorted(S2))   # false

S3 = sort(S2, rev=false)
println(S3)             # [-4, -3, -2, -1]
println(issorted(S3))   # true

S4 = sort(S3, by=abs, rev=false)
println(S4)             # [-1, -2, -3, -4]
println(issorted(S4))   # false
C = Float64[i*j for i=1:3, j=2:4]
println(C)          # [2.0 3.0 4.0; 4.0 6.0 8.0; 6.0 9.0 12.0]
B = [(1,9),(2,8),(3,7),(4,6)]
S5 = sort(B, by=x->x[1], rev=false)
println(S5)             # Tuple{Int64,Int64}[(1, 9), (2, 8), (3, 7), (4, 6)]

S6 = sort(B, by=x->x[2], rev=false)
println(S6)             # Tuple{Int64,Int64}[(4, 6), (3, 7), (2, 8), (1, 9)]

S7 = sort(B, by=x->x[2], rev=true)
println(S7)             # Tuple{Int64,Int64}[(1, 9), (2, 8), (3, 7), (4, 6)]

C = [(1,"d"),(2,"c"),(3,"b"),(4,"a")]
S8 = sort(C, by=x->x[1], rev=false)
println(S8)             # Tuple{Int64,String}[(1, "d"), (2, "c"), (3, "b"), (4, "a")]

Pair = ["a"=>3,"b"=>1,"c"=>4,"d"=>2]
S9 = sort(Pair, by=p->p.first)
println(S9)             # Base.Pair{String,Int64}["a"=>3, "b"=>1, "c"=>4, "d"=>2]

Sa = sort(Pair, by=p->p[1])
println(Sa)             # Base.Pair{String,Int64}["a"=>3, "b"=>1, "c"=>4, "d"=>2]

Sb = sort(Pair, by=p->p[2])
println(Sb)             # Base.Pair{String,Int64}["b"=>1, "d"=>2, "a"=>3, "c"=>4]