#### Function Objects

## 函数做参数

function h(x,y)
    x+y
end

function g(f::Function,x,y)
    f(x,y)
end

println(g(h,1,2))
println(g(+,1,2))
println(g(-,1,2))
println(g(*,1,2))
println(g(/,1,2))
println(g(%,1,2))
println(g(//,1,2))

# 函数做返回值

function r()
    h
end

println(r()(3,4))

function g()
    function t(x,y,z)
        x+y+z
    end
end

gt=g()

println(gt(1,2,3))