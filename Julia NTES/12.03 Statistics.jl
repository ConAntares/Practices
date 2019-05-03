# Statistics

using Distributions
using Statistics
using StatsBase

a = collect(1:6)
b = collect(4:9)

counteq(a,b)    # 取相同
# 0

countne(a,b)    # 取不同
# 6

L1dist(a,b)

L2dist(a,b)

meanad(a,b)

sample(a)

sample(a,3)

a1 = [0,10,20,30]
a2 = [100.0,200.0,300.0]
sample!(a1,a2)
    # 3-element Array{Int64,1}:
    # 0.0
    # 10.0
    # 0.0