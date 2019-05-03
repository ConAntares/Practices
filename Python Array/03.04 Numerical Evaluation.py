#### 03 Symbolic Computing ####
### 04 Numerical Evaluation ###

#%% Numerical Evaluation

import numpy as np 
import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")

print(sympy.N(1+pi))        # 4.14159265358979
print(sympy.N(pi,1))        # 3.
print(sympy.N(pi,2))        # 3.1
print(sympy.N(pi,3))        # 3.14
print(sympy.N(pi,4))        # 3.142
print(sympy.N(pi,100))      # 3.141592653589793238462643383279502884197169399375105820974944592307816406286208998628034825342117068

expr = sympy.sin(pi*x*sympy.exp(x))

print([expr.subs(x,a).evalf(1) for a in range(0,10)])
# [0, 0.8, 0.6, 0.7, 0.9, 0.2, 1., 1., -0.9, -0.7]
print([expr.subs(x,a).evalf(2) for a in range(0,10)])
# [0, 0.77, 0.64, 0.72, 0.94, 0.21, 0.97, 0.98, -0.87, -0.70]
print([expr.subs(x,a).evalf(3) for a in range(0,10)])
# [0, 0.774, 0.642, 0.722, 0.944, 0.205, 0.974, 0.977, -0.870, -0.695]

# The faster method:

expr_func = sympy.lambdify(x,expr)

print(expr_func(1.0))       
# 0.773942685266709
print([expr_func(a) for a in range(0,10)])
# 0.0, 0.773942685266709, 0.6419824398474936, 0.7216386725244686, 0.9436163482132262, 0.20523391106234978, 0.973987943507624, 0.977340664101108, -0.8703441784249286, -0.6951268688314561]

expr_func = sympy.lambdify(x,expr)
an = np.arange(0,4)

print(expr_func(an))
# [0.         0.77394269 0.64198244 0.72163867]