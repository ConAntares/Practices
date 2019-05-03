# Tuple: Content Unchangeable

t1 = (1,2,3,4)
println(t1[1])          # 1
println(length(t1))     # 4
println(t1[end])        # 4
println(t1[2:end])      # (2, 3, 4)

t2 = (1,1.2,'a',"hello")
t3 = (a=1,b=2,c=3,d=4)
println(t3.c)           # 3

# Dict
dic = Dict("a"=>1,"b"=>2,"c"=>3,"d"=>4)
println(typeof(dic))    # Dict{String,Int64}
println(dic.count)      # 4
println(dic.vals)       # [0, 0, 0, 3, 0, 0, 0, 0, 2, 0, 0, 0, 0, 1, 0, 4]
println(dic["a"])       # 1

ary = ["one"=>1,"two"=>2]
da = Dict(ary)

tpl = [("one",1),("two",2)]
dt = Dict(tpl)

vas = [1,2,3]
kes = ["a","b","c"]
vk = Dict(zip(kes,vas))

d = Dict()
d["α"] = 1
println(d["α"])         # 1

d = Dict{String,Int64}()

d = Dict("a"=>1,"b"=>2,"c"=>3,"d"=>4)
for (k,v) in d
    print("Key is $k for Value $v; ")       # value is c for key 3; value is b for key 2; value is a for key 1; value is d for key 4; 
end
println()
for v in values(d)
    print("$v; ")                           # 3; 2; 1; 4; 
end
println()

di = Dict("a"=>1,"b"=>2)
get(di,"c",-1)                              # -1
get(di,"a",-1)                              # 1
delete!(di,"a")
println(di)                                 # Dict("b"=>2)

# Set
S = Set([1,2,3,4,1,2,3])
println(S)                                  # Set([4, 2, 3, 1])
println(2 in S)                             # true

A = Set([1,2,3,4])
B = Set([2,4,6,7])

C = intersect(A,B)
println(C)                                  # Set([4, 2])
D = union(A,B)
println(D)                                  # Set([7, 4, 2, 3, 6, 1])

println(intersect([1,2,3,4,5],[1,3,5,7,9])) # [1, 3, 5]
println(union([1,2,3,4,5],[1,3,5,7,9]))     # [1, 2, 3, 4, 5, 7, 9]
