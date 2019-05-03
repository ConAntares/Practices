#### Iteration

A = reshape(collect(1:12),3,4)
println(A)

i = 1
while i <= 3
    j = 1
    while j <= 4
        print(A[i,j],"\t")
        j = j + 1
    end
    print("\n")
    global i = i + 1
end

for m in 1:size(A,1)
    for n in 1:size(A,2)
        print(A[m,n],"\t")
        n = n + 1
    end
    print("\n")
    m = m + 1
end

R = CartesianIndices((1:3,1:4))
for K in R
    println("A(",K[1],",",K[2],") ", "is ",A[K])
end

for i = 1:lastindex(A)
    print(A[i]," ")
end
println()

for i = 1:length(A)
    print(A[i]," ")
end
println()

for i = 1:length(A)
    print(A[i]," ")
end
println()

for i = eachindex(A)
    print(A[i]," ")
end
println()

## Iteration of Elements 

for x in A
    print(x," ")
end
println()


