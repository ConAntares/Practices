# Read

s0 = readlines("File.dat")      # Read all lines

s1 = open("File.dat","r")       # Open a file only for reading
line = readline(s1)             # Read the first line
eof(s1)                         # false
position(s1)                    # 189, Operation position
length(line)                    # 188
read(s1,Char)                   # '0': ASCII/Unicode U+0030 (category Nd: Number, decimal digit)

line = readline(s1)             # Read the second line
read(s1,Int8)                   # 48: Read a Int8 element

close(s1)                       # Close

open(readline,"File.dat")       # Open with Reading

readFunc(s::IOStream) = read(s,Char)
open(readFunc,"File.dat")

open("File.dat") do stream
    for line in eachline(stream)
        println(line)
    end
end

function readFunct(stream)
    for line in eachline(stream)
        println(line)
    end
end
open(readFunct,"File.dat")

# Write
write("Hello.dat","Hello")

open("AZ.dat","w") do functw
    for ch in 'a':'z'
        write(functw,ch,'\t')
    end
    write(functw,'\n')
end

"""
Open Mode
r:  read;
w:  write, create, truncate;
a:  write, create, append;
r+: read, write
w+: read, write, create, truncate;
a+: read, write, create, append.
"""

# Matrix
using DelimitedFiles
Mat = reshape(1:9,(3,3))
writedlm("Mat.dat",Mat,'\t')

Mrs = readdlm("Mat.dat")
Mrs                             # 3×3 Array{Float64,2}:
Mrs == Mat                      # true
Mri = readdlm("Mat.dat",Int64)
Mri                             # 3×3 Array{Int64,2}:
Mri == Mat                      # true
