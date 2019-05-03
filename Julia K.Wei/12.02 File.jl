#### IO File

## Open

f = open("hello.dat")       # IOStream(<file hello.dat>)
isopen(f)                   # true
isreadable(f)               # true
isreadonly(f)               # true
iswritable(f)               # false

## Write

readlines(f)                # 

while !eof(f)
    println(readline(f))
end

close()

