#### Parameter

same_type(x::T,y::T) where{T}=true
println(same_type(1,2))

to(x::T) where{T}=T
println(to(1.0))

same_type(x::T1,y::T2) where{T1,T2}=T1==T2
println(same_type(1,2))
println(same_type(1,1.2))

