## Module

using Dates

module myModule

export mySquare, myAbs

mySquare(x::Int64) = x*x
myAbs(x) = abs(x)
myAdd(x,y) = x + y
myMinus(x,y) = x - y
myMultiply(x,y) = x * y

end