#### Muti Parameters

f(x::Int32) = Int32

f(x::Int64) = Int64

re=f(Int32(1))

println(re)

println(methods(f))
# [1] f(x::Int64) in Main at /media/luke/Project/Scientific Julia/Introduction_Wei/07.06_Muti_Parameters.jl:5
# [2] f(x::Int32) in Main at /media/luke/Project/Scientific Julia/Introduction_Wei/07.06_Muti_Parameters.jl:3




