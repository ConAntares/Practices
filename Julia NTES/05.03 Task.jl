# Task

# Channel

function producer(c::Channel)
    put!(c,"start")
    for n=1:4
        put!(c,2n)
    end
    put!(c,"stop")
end

chnl = Channel(producer)
take!(chnl)                 # "start"
take!(chnl)                 # 2
take!(chnl)                 # 4
take!(chnl)                 # 6
take!(chnl)                 # 8
take!(chnl)                 # "stop"

for n in Channel(producer)
    println(n)
end
    # start
    # 2
    # 4
    # 6
    # 8
    # stop

function mytask(n)
    for i = 1:n
        println(i)
    end
end

taskHdl = @task mytask(10)
println(istaskdone(taskHdl))    # false
schedule(taskHdl)
println(istaskdone(taskHdl))    # true
println(current_task())         # Task (runnable) @0x00007fe631b5b820
println(istaskdone(taskHdl))    # true



