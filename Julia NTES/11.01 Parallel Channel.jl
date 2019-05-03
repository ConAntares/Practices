# Channel

c1 = Channel(12)
c2 = Channel{Float64}(23)
put!(c1,1)                      # write 1 to c1
put!(c2,2)                      # write 2 to c2
take!(c2)                       # read and del
fetch(c1)                       # only read the first one
close(c1)                       # close c1
close(c2)                       # close c2

c3 = Channel(32)
isready(c3)                     # false
close(c3)

c4 = Channel{Int}(10)
foreach(i->put!(c4,i),1:3)
close(c4)
data = [i for i in c4]
println(data)                   # [1, 2, 3]