abstract type Number                    end
abstract type Real          <: Number   end
abstract type AbstractFloat <: Real     end
abstract type Integer       <: Real     end
abstract type Signed        <: Integer  end
abstract type Unsigned      <: Integer  end

println(supertype(Signed))
println(supertype(Integer))
println(supertype(Real))
println(supertype(Number))
println(supertype(Any))

#println(subtypes(Any))
#Println(subtypes(Number))
#println(subtypes(Real))
#println(subtypes(Integer))
#println(subtypes(Signed))