## Process

# Use Multi Prcess
"""
-p 4
put it in to Terminal
"""

# Future

# create a 3*4 matrix in process 2
#r = remotecall(rand,2,3,4)   #Future(2, 1, 6, nothing)

r = @spawn rand(2,2)
s = @spawn 1.+fetch(r)

function fa(a,b)
    a+b
end

@everywhere fb(a,b) = a+b

fetch(@spawn fb(2,3))       # 5