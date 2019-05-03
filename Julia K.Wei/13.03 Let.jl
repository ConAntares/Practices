Fs = Vector{Any}(undef,4)
i = 1
for i in 1:4
    Fs[i] = i*10
end

println(Fs[1]," ",Fs[2]," ",Fs[3]," ",Fs[4])    # 10 20 30 40

Fs = Vector{Any}(undef,4)
i = 1
while i <= 4
    Fs[i] = i*10
    global i += 1
end

println(Fs[1]," ",Fs[2]," ",Fs[3]," ",Fs[4])    # 10 20 30 40

