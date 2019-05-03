#### Parallel Computation

## Task

A = zeros(1,4)

func() = fill!(A,1.0)

task1 = Task(func)

task2 = @task fill!(A,2.0)

schedule(task1)
println(A)                  # [1.0 1.0 1.0 1.0]

schedule(task2)
println(A)                  # [2.0 2.0 2.0 2.0]

## Distributed

using Distributed

@async fill!(A,4.0)
println(A)                  # [4.0 4.0 4.0 4.0]