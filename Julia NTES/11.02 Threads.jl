# Threads

Threads.nthreads()              # 1 : default thread count
Threads.threadid()

using Base.Threads
nthreads()                      # 1 : default thread count


# Use Multi Threads
"""
export JULIA_NUM_THREADS=4      # Linux or MacOS
set JULIA_NUM_THREADS=4         # Windows
put it in to Terminal
"""
nthreads()

a = zeros(Int64,10)
Threads.@threads for i = 1:16
    a[i]=Threads.threadid()
end
a

using Base.Threads
acc = Ref(0)
@threads for i in 1:1000
    acc[] += 1
end
println(acc[])

println(nthreads())

acc = Atomic{Int64}()
@threads for i in 1:1000
    atomic_add!(acc,1)
end
println(acc[])