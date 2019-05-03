#### Function

function add_two(x,y)
    x + y
end

println(add_two(1,5))
println(add_two((1,2)...))
println(add_two(1,(2)...))
println(add_two([1,2]...))

s = Set([1,2])

println(add_two(s...))
println(add_two(1:2...))

add_two_simple(x,y) = x+y

println(add_two_simple(2,6))

## 类型限定

function add_two_class(x::Float64,y::Float64)
    x + y
end

println(add_two_class(0.1,0.3))
println(add_two_class(1.0,3.0))

## Pass by Sharing

x = 10

function change_value(y)
    y = 12
end

println(change_value(x))

d = Dict(88=>8.8, 99=>9.9)

function change_dict(a::Dict)
    a[88] = 6.6^6.7
end

println(change_dict(d))

# Multi Return Value

function add_mul(a,b)
    a+b,
    a*b
end

result = add_mul(4,5)

println(result)
println(result[1])
println(result[2])