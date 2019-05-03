#### Anonymous Functions

function g(f,x,y,z)
    f(x,y,z)
end

println(g((x,y,z) -> x*y+z,2,3,4))

function f1()
    x -> x^2 + 2x -1
end

function f2()
    return (x,y) -> x + y
end

println(f1()(1))
println(f2()(2,3))

g(2,3,4) do x,y,z
    println(x+y+z)
end

g(10,20,30) do x,y,z
    a = x^2+x*y-z
    b = 0.5*a
    println(a)
    println(b)
end
