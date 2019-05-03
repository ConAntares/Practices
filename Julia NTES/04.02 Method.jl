# Method
function f9(x::Int64,y::Int64)
    x+y
end
f9                  # f9 (generic function with 1 method)

function f9(x::Float64,y::Float64)
    2*x+y
end
f9(1,2)             # 3
f9(1.2,2.3)         # 4.67
f9                  #f9 (generic function with 2 methods)

+                   # + (generic function with 163 methods)

methods(f9)
    # [1] f9(x::Float64, y::Float64) in Main at /media/luke/Project/Scientific Julia/Course NTES/04.02 Method.jl:8
    # [2] f9(x::Int64, y::Int64) in Main at /media/luke/Project/Scientific Julia/Course NTES/04.02 Method.jl:3



