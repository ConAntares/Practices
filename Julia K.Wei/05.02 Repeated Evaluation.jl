####    1.While
println("1.While:")
a = 1
while a ≤ 5
    print("Now, a = ",a,";\n")
    global a += 1
end
println("Finally, a = ",a,".\n")

####    2.Break in while
println("2.Break in while:")
i = 1
j = 1
while j ≤ 4
    while true
        print("Now, i = ",i,";\t")
        if i > 5
            break
        end
        global i += 1
    end
    global i =  1
    global j += 1
    print("\n")
end
println()   # println() = print("\n")

####    3.Continue in while
println("3.Continue in while:")
i = 1
while i ≤ 10
    global i += 1
    if i < 5
        continue
    end
    print("Now, i = ",i,";\t")
end
println("\n")

####    4.For
println("4.For:")
for i = 1:5
    print("Now, i = ",i,";\t")
end
println()
for j in 1:5                    # in equals =
    print("Now, j = ",j,";\t")
end
println()
for k ∈ 1:5                     # ∈ equals =
    print("Now, k = ",k,";\t")
end
println()
for l = [1 2 3 4 5]
    print("Now, l = ",l,";\t")
end
println()
for m ∈ (1, 2, 3, 4, 5)
    print("Now, m = ",m,";\t")
end
println()

for i = 1:2, j = 1:3
    print("Now, i = ",i,", j = ",j,";\t")
end
println()
for j in 1:3, i ∈ 1:2
    print("Now, i = ",i,", j = ",j,";\t")
end
println("\n")

####    5.Break in for
println("5.Break in for:")
for i = 1:1000
    print("Now, i = ",i,";\t")
    if i ≥ 6
        break
    end
end
println("\n")

####    6.Continue in for
println("6.Continue in for:")
for i = 1:10
    if i % 3 != 0
        continue
    end
    print("Now, i = ",i,";\t")
end
println("\n")

for α = 1:4
    println("\n loop: ",α)
    for i = 1:10
        if i % 3 == 0
            continue
        end
        print("Now, i = ",i,";\t")
    end
end
println("\n")