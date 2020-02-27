#### 03 Symbolic Computing ####
### 02 Expression ###

#%% Sympy Expression

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
expr = 1 + 2*x**2 + 3*x**3
print(expr)                                 # 3*x**3 + 2*x**2 + 1
print(expr.args)                            # (1, 2*x**2, 3*x**3)
print(expr.args[0])                         # 1
print(expr.args[1])                         # 2*x**2
print(expr.args[2])                         # 3*x**3

print(expr.args[2].args)                    # (3, x**3)
print(expr.args[2].args[0])                 # 3
print(expr.args[2].args[1])                 # x**3

print(expr.args[2].args[1].args)            # (x, 3)
print(expr.args[2].args[1].args[0])         # x
print(expr.args[2].args[1].args[1])         # 3
print(expr.args[2].args[1].args[1].args)    # ()