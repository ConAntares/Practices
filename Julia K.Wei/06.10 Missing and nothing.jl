#### Missing    ####
a = 1.0
println(missing)                    # missing
println(missing+1)                  # missing
println(missing*1)                  # missing
println(abs(missing))               # missing
println(missing==missing)           # missing
println(missing==1)                 # missing
println(missing<1)                  # missing
println(typeof(missing))            # Missing
println(ismissing(missing))         # true
println(ismissing===1)              # false
println(isequal(missing,1))         # false
println(missing===missing)          # true
println(isequal(missing,missing))   # true
println(isless(1,missing))          # true
println(isless(missing,Inf))        # false
println(isless(missing,missing))    # false
println(true|missing)               # true
println(missing|true)               # true
println(true&missing)               # missing
println(missing&true)               # missing
println(false|missing)              # missing
println(missing|false)              # missing
println(false&missing)              # false
println(missing&false)              # false
println(true||missing)              # true
println(true&&missing)              # missing
println(false||missing)             # missing
println(false&&missing)             # false

#### Noting     ####

#### NaN        ####

#%%