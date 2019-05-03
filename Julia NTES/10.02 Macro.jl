## Macro

"""
@name expr1,expr2,...
@name (Tuple)
@name [Array]*V
@name ([Array])*V
"""
debugging = true

macro debug1(msg...)
    if debugging
        :(println("DEBUG> ", $(msg...)))
    else
        :nothing
    end
end
    
macro debug1(lineno, msg...)
    if debugging
        :(println("DEBUG ", basename(@__FILE__),":",$lineno, "> ", $(msg...)))
    else
        :nothing
    end
end
    
function bubble_sort!(xs::Vector)
    println("bubble_sort starting...")
    n = length(xs)
    swapped = true
    while swapped
        swapped = false
        for i in 1:n-1
            if xs[i] > xs[i+1]
                # println(xs)
                xs[i+1], xs[i] = xs[i], xs[i+1]
                @debug1(@__LINE__, join(xs, " "))
                swapped = true
            end
        end
        end
    xs
end
    
xs = Vector([1, 3, 4, 5, 8, 2, 7])
res = bubble_sort!(xs)

# Some Standard Macro

@time y = 1+2                           # 0.000004 seconds (4 allocations: 160 bytes)
println(y)                              # 3

@which 1+2                              # +(x::T, y::T) where T<:Union{Int128, Int16, Int32, Int64, Int8, UInt128, UInt16, UInt32, UInt64, UInt8} in Base at int.jl:53

x = rand(4)
@show sum(x)                            # sum(x) = 1.3803654184644396

macro HW()
    return println("Hello World!")
end
@HW()                                   # Hello World!

macro IL(str)
    return println("I like ",str)
end
@IL("Julia")                            # I like Julia
@macroexpand @IL("Julia")
ex = macroexpand(Main,@IL("Julia"))

macro test()
    println("A")
    return println("B")
end

@test()
    """
    A
    B
    """

eval(@test())
    """
    A
    B
    """

