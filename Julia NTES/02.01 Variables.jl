# Precision

println(eps(Float32))       # 1.1920929e-7
println(eps(Float64))       # 2.220446049250313e-16

println(eps(0.0))           # 5.0e-324
println(eps(1.0))           # 2.220446049250313e-16
println(eps(10.0))          # 1.7763568394002505e-15
println(eps(1e2))           # 1.4210854715202004e-14
println(eps(1e3))           # 1.1368683772161603e-13
println(eps(1e4))           # 1.8189894035458565e-12
println(eps(1e10))          # 1.9073486328125e-6
println(eps(1e100))         # 1.942668892225729e84

println(1.1+0.1)            # 1.2000000000000002

# RoundUp and RoundDown
println(BigFloat(1.1+0.1))  # 1.20000000000000017763568394002504646778106689453125
setrounding(BigFloat,RoundUp) do
    println(BigFloat(1.1)+parse(BigFloat,"0.1"))    # 1.200000000000000088817841970012523233890533447265625000000000000000000000000003
end
setrounding(BigFloat,RoundDown) do
    println(BigFloat(1.1)+parse(BigFloat,"0.1"))    # 1.200000000000000088817841970012523233890533447265624999999999999999999999999986
end
setprecision(10) do
    println(BigFloat(1.1)+parse(BigFloat,"0.1"))    # 1.1992
end

