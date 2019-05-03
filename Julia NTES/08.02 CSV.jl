## CSV
using DelimitedFiles
using DataFrames
using CSV

data = rand(Int8,10,5)

# Write
writedlm("D.csv",data,',')

# Read
readdlm("D.csv")                # 10*5
df = readtable("D.csv")         # 9*5
typeof(df)                      # DataFrame
dc = CSV.read("D.csv")          # 9*5
typeof(dc)                      # DataFrame