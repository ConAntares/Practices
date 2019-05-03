# Matrix Optimization

using BenchmarkTools

x = [1 2; 3 4]
x[:]
    # 4-element Array{Int64,1}:
    #  1
    #  3
    #  2
    #  4

# 按列拷贝
function copy_cols(x::Vector{T}) where T
    inds = axes(x, 1)
    out = similar(Array{T}, inds, inds)
    for i = inds
        out[:, i] = x
    end
    return out
end

# 按行拷贝
function copy_rows(x::Vector{T}) where T
    inds = axes(x, 1)
    out = similar(Array{T}, inds, inds)
    for i = inds
        out[i, :] = x
    end
    return out
end

# 按元素拷贝，以列为顺序
function copy_col_row(x::Vector{T}) where T
    inds = axes(x, 1)
    out = similar(Array{T}, inds, inds)
    for col = inds, row = inds
        out[row, col] = x[row]
    end
    return out
end

# 按元素拷贝，以行为顺序
function copy_row_col(x::Vector{T}) where T
    inds = axes(x, 1)
    out = similar(Array{T}, inds, inds)
    for row = inds, col = inds
        out[row, col] = x[col]
    end
    return out
end

x = randn(10000)
fmt(f) = println(rpad(string(f)*": ", 14, ' '), @elapsed f(x))
map(fmt, Any[copy_cols, copy_rows, copy_col_row, copy_row_col])
    # copy_cols:    0.311598914
    # copy_rows:    1.144231801
    # copy_col_row: 0.369382059
    # copy_row_col: 1.175536859

# Dot
f(x) = 5x.^3 - 2x.^2 + 3x
fdot(x) = @. 5x^3 - 2x^2 + 3x

x = rand(10^6);
@time f(x);         #0.040295 seconds (20 allocations: 53.407 MiB, 17.06% gc time)

@time fdot(x);      #0.002195 seconds (8 allocations: 7.630 MiB)

@time f.(x);        #0.002047 seconds (8 allocations: 7.630 MiB)

# 向量化并不会提高Julia的运行速度

function loop_sum()
    s = 0.0
    for i = 1:1000
        s = 0.0
        for k = 1:10000
            s += 1.0/(k*k)
        end
    end
    s
end
@benchmark loop_sum()
    # BenchmarkTools.Trial: 
    #   memory estimate:  0 bytes
    #   allocs estimate:  0
    #   --------------
    #   minimum time:     12.993 ms (0.00% GC)
    #   median time:      14.674 ms (0.00% GC)
    #   mean time:        14.497 ms (0.00% GC)
    #   maximum time:     15.184 ms (0.00% GC)
    #   --------------
    #   samples:          345
    #   evals/sample:     1

function vec_sum()
    s = 0.0
    k = collect(1:10000)
    for i=1:1000
        s = sum(1 ./(k.^2))
    end
end
@benchmark vec_sum()
    # BenchmarkTools.Trial: 
    #   memory estimate:  76.48 MiB
    #   allocs estimate:  3002
    #   --------------
    #   minimum time:     15.869 ms (11.08% GC)
    #   median time:      16.911 ms (11.67% GC)
    #   mean time:        17.142 ms (13.71% GC)
    #   maximum time:     79.611 ms (80.91% GC)
    #   --------------
    #   samples:          292
    #   evals/sample:     1

# Accelerate via macro @simd
function loop_sum_simd()
    s = 0.0
    for i = 1:1000
        s = 0.0
        @simd for k = 1:10000
            s += 1.0/(k*k)
        end
    end
    s
end
@benchmark loop_sum_simd()
    # BenchmarkTools.Trial: 
    #   memory estimate:  0 bytes
    #   allocs estimate:  0
    #   --------------
    #   minimum time:     10.466 ms (0.00% GC)
    #   median time:      11.175 ms (0.00% GC)
    #   mean time:        11.211 ms (0.00% GC)
    #   maximum time:     12.423 ms (0.00% GC)
    #   --------------
    #   samples:          446
    #   evals/sample:     1