## Meta Programming

# String

str1 = "1+1"
ex1 = Meta.parse(str1)          # :(1 + 1)
typeof(ex1)                     # Expr

ex2 = :(1+2)
typeof(ex2)                     # Expr
Meta.show_sexpr(ex2)            # (:call, :+, 1, 2)

ex3 = Expr(:call, :+, 1, 3)
typeof(ex3)                     # Expr
eval(ex3)                       # 4
dump(ex3)
"""
    head: Symbol call
    args: Array{Any}((3,))
       1: Symbol +
       2: Int64 1
       3: Int64 3
"""

# Symbol
s=:foo
typeof(s)                       # Symbol

# Quote
ex4 = quote
    x = 1
    y = 2
    x + y
end
typeof(ex4)                     # Expr

a = 1
ex5 = :($a+b)                   # :(1 + b)

x = :(1+2)
e = quote
    quote
        $$x
    end
end
eval(e)                         # 3

# Function
function math_expr(op0,op1,op2)
    expr=Expr(:call,op0,op1,op2)
    return expr
end
ex = math_expr(:+,1,Expr(:call,:*,4,5))
eval(ex)                        # 21