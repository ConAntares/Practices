using DataFrames
using DataFramesMeta

df = DataFrame([0.3 0.7 0.4; 0.6 0.2 0.3])
    # 2×3 DataFrame
    # │ Row │ x1      │ x2      │ x3      │
    # │     │ Float64 │ Float64 │ Float64 │
    # ├─────┼─────────┼─────────┼─────────┤
    # │ 1   │ 0.3     │ 0.7     │ 0.4     │
    # │ 2   │ 0.6     │ 0.2     │ 0.3     │

@where(df, :x1 .> 0.5)
    # 1×3 DataFrame
    # │ Row │ x1      │ x2      │ x3      │
    # │     │ Float64 │ Float64 │ Float64 │
    # ├─────┼─────────┼─────────┼─────────┤
    # │ 1   │ 0.6     │ 0.2     │ 0.3     │

@with(df,:x2 .+ 1)
    # 2-element Array{Float64,1}:
    #  1.7
    #  1.2

@select(df,:x3)
    # 2×1 DataFrame
    # │ Row │ x3      │
    # │     │ Float64 │
    # ├─────┼─────────┤
    # │ 1   │ 0.4     │
    # │ 2   │ 0.3     │

@select(df,se=10* :x1,:x2)
    # 2×2 DataFrame
    # │ Row │ se      │ x2      │
    # │     │ Float64 │ Float64 │
    # ├─────┼─────────┼─────────┤
    # │ 1   │ 3.0     │ 0.7     │
    # │ 2   │ 6.0     │ 0.2     │