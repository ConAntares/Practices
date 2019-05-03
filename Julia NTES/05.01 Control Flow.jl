# 符合表达式
z = begin
    x = 1
    y = 2
    x + y
end
println(z)          # 3

z = (x=1;y=2;x+y)
println(z)          # 3

# 条件极值
x = 1
y = 2
if x < y
    println("x < y")
elseif x > y
    println("x > y")
else
    println("x = y")
end

# While
i = 5
while i <= 10
    print("$i ")        # 5 6 7 8 9 10
    global i = i + 1
end
println()

for i in 5:10
    print("$i ")        # 5 6 7 8 9 10
end
println()

for i in [1,2,3,4,5,6]
    print("$i ")        # 1 2 3 4 5 6
end
println()

for i in "ABCD"
    print("$i ")        # A B C D
end
println()

Y = [x^2 for x in 1:4]
for i in 1:length(Y)
    print(Y[i]," ")     # 1 4 9 16
end
println()

Y = [(x,x^2) for x in 1:4]
for i in 1:length(Y)
    print(Y[i]," ")     # (1, 1) (2, 4) (3, 9) (4, 16)
end
println()

# 变量作用域
for i in 1:5
    x = i
end

for i in 1:5
    global x = i
end
x                       # 5

x = 10
for i in 1:5
    x = 1
end
x                       # 10