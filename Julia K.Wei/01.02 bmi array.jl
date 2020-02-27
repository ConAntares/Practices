# the default range is [0,1) with 1000 elements:
heights = rand(Float64, 1000)
weights = rand(Float64, 1000)

# In terms of that b = b_min+((b_max-b_min)/(a_max-a_min))(a-a_min), Then b = b_min+(b_max-b_min)*a:
heights = heights .*(1.8-1.5) .+ 1.5
weights = weights .*(100-30) .+ 30

bmi(w, h) = w/(h^2)

indexes = broadcast(bmi, weights, heights)
# or use: indexes = weights ./ (heights.^2)

function bmi_category(index::Float64)
   class = 0
   if index < 18.5
      class = 1
   elseif index < 24
      class = 2
   elseif index < 28
      class = 3
   elseif index < 30
      class = 4
   elseif index < 40
      class = 5
   else
      class = 6
   end
   class
end

classes = bmi_category.(indexes)

for c in [1 2 3 4 5 6]
    number = count(x->(x==c), classes)
    println("category","\t",c,"\t",number)
end