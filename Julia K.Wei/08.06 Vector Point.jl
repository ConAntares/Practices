#### Point

foo = x -> x^3

A = LinearIndices(1:4)
println(A)              # [1, 2, 3, 4]

Ae3 = foo.(A)
println(Ae3)            # [1, 8, 27, 64]

Asin = sin.(A)
println(Asin)           # [0.841471, 0.909297, 0.14112, -0.756802]

Amin = min.(A,Ae3)
println(Amin)           # [1, 2, 3, 4]

C = Tuple(A)
println(C)              # (1, 2, 3, 4)

Csin = sin.(C)
println(Csin)           # (0.8414709848078965, 0.9092974268256817, 0.1411200080598672, -0.7568024953079282)

Mmin = min.(A,C)
println(Mmin)           # [1, 2, 3, 4]

E = Set(A)
println(E)              # Set([4, 2, 3, 1])

Esin = sin.(E)
println(Esin)           # [-0.756802, 0.909297, 0.14112, 0.841471]

Emix = min.(A,E)
println(Emix)           # [1, 2, 3, 1]

F1 = Emix .* 2
F2 = Emix * 2
println(F1)             # [2, 4, 6, 2]
println(F2)             # [2, 4, 6, 2]

F3 = (1,2,3,4) .* 2
println(F3)             # (2, 4, 6, 8)

F4 = [1,2,3,4] .^ 2
println(F4)             # [1, 4, 9, 16]

M = ((1:1000).+20).*7
println(M)              # 147:7:7140