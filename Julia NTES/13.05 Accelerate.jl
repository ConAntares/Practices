## Accelerate

# 输出预分配
function xinc(x)
    return [x, x+1, x+2]
end

function loopinc()
y = 0
for i = 1:10^7
ret = xinc(i)
y += ret[2]
end
return y
end

function xinc!(ret::AbstractVector{T}, x::T) where T
ret[1] = x
ret[2] = x+1
ret[3] = x+2
nothing
end

function loopinc_prealloc()
ret = Vector{Int}(undef, 3)
y = 0
for i = 1:10^7
xinc!(ret, i)
y += ret[2]
end
return y
end

@time loopinc()             # 0.420528 seconds (10.11 M allocations: 1.049 GiB, 13.97% gc time)
@time loopinc_prealloc()    # 0.027398 seconds (55.96 k allocations: 3.023 MiB)

# Copy View

A = zeros(3, 3);
@views for row in 1:3
   b = A[row, :]
   b[:] .= row  # A的值也会相应改变
end
A
    # 3×3 Array{Float64,2}:
    #  1.0  1.0  1.0
    #  2.0  2.0  2.0
    #  3.0  3.0  3.0
fcopy(x) = sum(x[2:end-1]);
@views fview(x) = sum(x[2:end-1]);
x = rand(10^6);
@time fcopy(x)              # 0.019009 seconds
@time fview(x)              # 0.009997 seconds

# IO
"""
println(file, "$a $b")
println(file, a, " ", b)    # Better
"""
