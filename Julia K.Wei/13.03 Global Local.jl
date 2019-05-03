#### Global and Local variables

x = 1
y = 1


function foo()
    global x = 2
    y = 2
    return x + y
end

foo()               # 4
x                   # 2
y                   # 1