try
    sqrt(-1)
catch
    println("pass")     # pass
end

try
    sqrt(4)
catch
    println("pass")     # 2.0   
end

sqrt_second(x) = try
    sqrt(x[2])
catch y
    if isa(y,DomainError)
        sqrt(complex(x[2],0))
    elseif isa(y,BoundsError)
        sqrt(x)
    end
end

