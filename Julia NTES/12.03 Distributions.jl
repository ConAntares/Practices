# Distributions

using Distributions

n1 = Normal(10,1.0)     # 均值:10 标准差:1.0
params(n1)              # (10.0, 1.0)
typeof(n1)              # Normal{Float64}
typeof(Normal)          # UnionAll

rand(n1,100)            # 生成 100 个满足 n1 的数据

# 二项分布:
bi = Binomial(20,0.8)
rand(bi,100)

# 概率密度
n = Normal()
pdf(n,0.0)              # 0.3989422804014327
pdf(n,0.2)              # 0.3910426939754559
pdf(n,0.4)              # 0.36827014030332333
pdf(n,0.6)              # 0.33322460289179967
pdf(n,0.8)              # 0.2896915527614828
pdf(n,1.0)              # 0.24197072451914337

# 分布函数
cdf(n,0.0)              # 0.5
cdf(n,0.2)              # 0.579259709439103
cdf(n,0.4)              # 0.6554217416103242
cdf(n,0.6)              # 0.7257468822499265
cdf(n,0.8)              # 0.7881446014166034
cdf(n,1.0)              # 0.841344746068543

# 分位数
quantile.(n,[0.25,0.5,0.95])
    # 3-element Array{Float64,1}:
    #  -0.6744897501960818
    #   0.0               
    #   1.6448536269514717

# 分析参数
fit(Normal,rand(10))    # Normal{Float64}(μ=0.43642386770224206, σ=0.26550584477101347)
