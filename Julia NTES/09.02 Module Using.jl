## Module Using

# push!(LOAD_PATH,".")

using myModule
using myModule: myAdd, myMultiply

mySquare(3)                         # 9
myModule.mySquare(3)                # 9
myAdd(3,4)                          # 7
myModule.myAdd(3,4)                 # 7
myModule.myMinus(3,4)               # -1