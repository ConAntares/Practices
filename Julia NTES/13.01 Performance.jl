# AVoid Global Variables

"""
全局变量的值和类型随时都会发生变化. 这使编译器难以优化使用全局变量的代码. 变量应该是局部的, 或者尽可能作为参数传递给函数.
任何注重性能或者需要测试性能的代码都应该被放置在函数之中.
把全局变量声明为常量可以巨大的提升性能.
如果必须要声明全局变量, 可以在使用它的地方标注他们的类型来优化效率.
"""

using BenchmarkTools

const VAL = 0
global x = rand(10000)
function lp1()
    s = 0.0
    for i in x
        s += i
    end
end
@time lp1()     # 0.009325 seconds (41.57 k allocations: 875.640 KiB)

function lp2()
    s = 0.0
    for i in x::Vector{Float64}
        s += i
    end
end
@time lp2()     # 0.006057 seconds (5.61 k allocations: 263.513 KiB)

function lp3(x)
    s = 0.0
    for i in x
        s += i
    end
end
@time lp3(x)    # 0.004631 seconds (5.51 k allocations: 260.120 KiB)

time_sum(x) = @time lp3(x)
time_sum(x)     # 0.000000 seconds

@benchmark lp1()
    # memory estimate:  773.28 KiB
    # allocs estimate:  39490
    # --------------
    # minimum time:     839.481 μs (0.00% GC)
    # median time:      1.009 ms (0.00% GC)
    # mean time:        1.143 ms (13.06% GC)
    # maximum time:     7.304 ms (69.12% GC)
    # --------------
    # samples:          4365
    # evals/sample:     1
@benchmark lp2()
    # memory estimate:  0 bytes
    # allocs estimate:  0
    # --------------
    # minimum time:     3.918 ns (0.00% GC)
    # median time:      4.619 ns (0.00% GC)
    # mean time:        4.770 ns (0.00% GC)
    # maximum time:     27.193 ns (0.00% GC)
    # --------------
    # samples:          10000
    # evals/sample:     1000
@benchmark lp3(x)
    # memory estimate:  0 bytes
    # allocs estimate:  0
    # --------------
    # minimum time:     10.601 ns (0.00% GC)
    # median time:      12.587 ns (0.00% GC)
    # mean time:        12.618 ns (0.00% GC)
    # maximum time:     25.866 ns (0.00% GC)
    # --------------
    # samples:          10000
    # evals/sample:     999
