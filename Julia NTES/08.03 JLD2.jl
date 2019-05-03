## JLD2
using JLD2

stri = "hello"

# Write
fid = jldopen("H.jld2","w")
write(fid,"String",stri)
close(fid)

# Read
fid = jldopen("H.jld2","r")
ra = read(fid,"String")