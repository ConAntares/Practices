#### 参数传递方式

function implot(x,y;style,width,color)
    println("ok")
end

implot(1,2,style="solid",width=3,color="green")

function bar(;x=1,y=x+3,z=x+y) 
    println("x=",x)
    println("y=",y)
    println("z=",z)
end

bar(;x=1)

bar(;x=1,z=100)

## 可变函数

function my_show(x,y,z...)  # x,y是有序参数, z是可变参数
    println(x,"",y,"",z)
end

my_show(1,2)
my_show(1,2,3)
my_show(1,2,3,4)

## 一个支持任意元素进行线性组合的操作函数

function linear_combine(args...)
    s = 0
    for p in args
        s = s + p[1]*p[2]
    end
    s
end

x = ((1,2),(3,4))
y = ((1,2+3im),(4.5,6//7))
a = ((0,1),(2,3))
b = ((1,2),(3,4),(5,6))
c = ((1,2),(3,4),(5,6),(7,8))

println(linear_combine(x...))
println(linear_combine(y...))
println(linear_combine(a...))
println(linear_combine(b...))
println(linear_combine(c...))
