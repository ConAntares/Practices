## IO Buffer

io = IOBuffer()

# Write
write(io,"Hello World! ","Julia!")

# Read
String(take!(io))               # "Hello World! Julia!"

# Read only
io = IOBuffer("Hello")

# Close
close(io)

