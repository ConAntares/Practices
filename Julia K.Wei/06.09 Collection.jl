#### Tuple  ####
println("\nTuple:")
T = (1, 2.34, 5 + 6im, 7 + 8.9im, "Fool")
println(typeof((1, 2.34, 5 + 6im, 7 + 8.9im, "Fool")))      # Tuple{Int64,Float64,Complex{Int64},Complex{Float64},String}
println(typeof(T))                                          # Tuple{Int64,Float64,Complex{Int64},Complex{Float64},String}

println(Tuple{Int64} <: Tuple{Real})                        # true
println(Tuple{Int64} <: Tuple{Float64})                     # false
println(Tuple{Real}  <: Tuple{Int64})                       # false
println(Tuple{Real}  >: Tuple{Int64})                       # true
println(Tuple{Real}  <: Tuple{Real})                        # true

println(Tuple{Integer, Real} <: Tuple{Any})                 # false
println(Tuple{Integer, Real} <: Tuple{Any, Any})            # true
println(Tuple{Integer, Real} <: Tuple{Real, Real})          # true
println(Tuple{Integer, Any}  <: Tuple{Real, Real})          # false

#### Expension  ####
println("\nExpension:")
a = (4, "Hello")
println(a)
b = (1, 2.3, a, 5)
c = (1, 2.3, a..., 5)
println(b)                                                  # (1, 2.3, (4, "Hello"), 5)
println(c)                                                  # (1, 2.3, 4, "Hello", 5)

#### Element    ####
println("\nElement:")
println(b[3])                                               # (4, "Hello")
println(c[3])                                               # 4
println(b[3][2])                                            # Hello
x, y = a
println(x, "\t", y)

nt1 = (a=1, b=2, c=3.4, d=5//6, e=7+8.9im)
println(typeof(nt1))                                        # NamedTuple{(:a, :b, :c, :d, :e), Tuple{Int64,Int64,Float64,Rational{Int64},Complex{Float64}}}
nt2 = NamedTuple{(:a,:b), Tuple{Int64,String}}((1,"Str"))
println(nt2)                                                # (a = 1, b = "Str")

#### Pair   ####
println("\nPair:")
P1 = Pair(1, 2.3)
println(P1)                                                 # 1 => 2.3
println(typeof(P1))                                         # Pair{Int64,Float64}

P2 = Pair{Float64,Complex}(1, 2+3im)
println(P2)                                                 # Pair{Float64,Complex}(1.0, 2+3im)
println(typeof(P2))                                         # Pair{Float64,Complex}

P3 = Pair{Float64,Complex}(Int32(1), Real(2))
println(P3)                                                 # Pair{Float64,Complex}(1.0, 2+0im)
println(typeof(P3))                                         # Pair{Float64,Complex}

P4 = 1.2+3.4im => 5.6+7.8im
println(P4)                                                 # 1.2+3.4im => 5.6+7.8im
println(typeof(P4))                                         # Pair{Complex{Float64},Complex{Float64}}
println(P4.first,"\t",P4.second)                            # 1.2 + 3.4im	5.6 + 7.8im
println(P4[1],"\t",P4[2])                                   # 1.2 + 3.4im	5.6 + 7.8im
println(Tuple(P4))                                          # (1.2 + 3.4im, 5.6 + 7.8im)

#### Dict   ####
println("\nDict:")
D1 = Dict(1=>2.2, 3=>3)
println(D1)                                                 # Dict{Int64,Real}(3=>3,1=>2.2)
println(typeof(D1))                                         # Dict{Int64,Real}

D2 = Dict{Real,Complex}(1=>1+2im, 3.4=>5.6+7.8im)
println(D2)                                                 # Dict{Real,Complex}(3.4=>5.6+7.8im,1=>1+2im)
println(typeof(D2))                                         # Dict{Real,Complex}

D3 = Dict{Real,Complex}(1=>1+2im, 3.4=>5.6+7.8im, 9=>0)
println(D3)                                                 # Dict{Real,Complex}(9=>0+0im,3.4=>5.6+7.8im,1=>1+2im)
println(typeof(D3))                                         # Dict{Real,Complex}

x = 4
function f(x)
    x^2
end
println(f(x))                                               # 16
y = Dict(i=>f(i) for i = 1:5)
println(y)                                                  # Dict(4=>16,2=>4,3=>9,5=>25,1=>1)
z = Dict(i=>i^2 for i in 1:5)
println(z)                                                  # Dict(4=>16,2=>4,3=>9,5=>25,1=>1)

d = (1=>1+1im, 2=>2+2im)
println(d)                                                  # (1 => 1+1im, 2 => 2+2im)
D4 = Dict(d)
println(D4)                                                 # Dict(2=>2+2im,1=>1+1im)

D5 = Dict(1=>1im,2=>2im,3=>3im,4=>4im)
println(D5)                                                 # Dict(4=>0+4im,2=>0+2im,3=>0+3im,1=>0+1im)
println(D5[1], "\t", D5[2], "\t", D5[3], "\t", D5[4])       # 0 + 1im	0 + 2im	0 + 3im	0 + 4im

D6 = Dict("A"=>1+1im,"B"=>2+2im,"C"=>3+3im,"D"=>4+4im)
println(D6)                                                 # Dict("B"=>2+2im,"A"=>1+1im,"C"=>3+3im,"D"=>4+4im)
println(D6["A"])                                            # 1 + 1im
println(get(D6, "A", 1))                                    # 1 + 1im
println(get(D6, "E", 1))                                    # 1
println(get!(D6, "E", 5+5im))                               # 5 + 5im
println(D6)                                                 # Dict("B"=>2+2im,"A"=>1+1im,"C"=>3+3im,"D"=>4+4im,"E"=>5+5im)
println(delete!(D6,"E"))                                    # Dict("B"=>2+2im,"A"=>1+1im,"C"=>3+3im,"D"=>4+4im)
println(D6)                                                 # Dict("B"=>2+2im,"A"=>1+1im,"C"=>3+3im,"D"=>4+4im)
println(pop!(D6,"D"))                                       # 4 + 4im
println(D6)                                                 # Dict("B"=>2+2im,"A"=>1+1im,"C"=>3+3im)
println(length(D6))                                         # 3
println(D6.count)                                           # 3
println(keys(D6))                                           # ["B", "A", "C"]
for k in keys(D6)
    println(k, "'s value is: ", D6[k])                      # B's value is: 2 + 2im; A's value is: 1 + 1im; C's value is: 3 + 3im
end
println(values(D6))                                         # Complex{Int64}[2+2im, 1+1im, 3+3im]
for v in values(D6)
    println(v)                                              # # 2 + 2im; 1 + 1im; 3 + 3im
end
a = collect(values(D6))
println(a)                                                  # Complex{Int64}[2+2im, 1+1im, 3+3im]

#### Set   ####
println("\nSet:")
s1 = Set([1,2,2,3,3,3,4,4,4,4])
println(s1)                                                 # Set([4, 2, 3, 1])
for i in s1
    println(i, " ")                                         # 4 3 2 1
end
println(4 in s1)                                            # true
println(5 in s1)                                            # false
s2 = Set([1,3,5])
s3 = Set([1,4,9])
s4 = union(s1,s2,s3)                                        # Set([4, 9, 1])
println(s3)
s5 = intersect(s1,s2,s3)                                    # Set([1])
println(s5)
s6 = setdiff(s1,s2)
println(s6)                                                 # Set([4, 2])

println(isempty(s6))                                        # false
println(empty!(s6))                                         # Set(Int64[])
println(s6)                                                 # Set(Int64[])
println(isempty(s6))                                        # true