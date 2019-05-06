#### 03 Symbolic Computing ####
### 06 Equation ###

#%% Equation

import numpy as np 
import sympy
from sympy import I, pi, oo

x = sympy.Symbol("x")
y = sympy.Symbol("y")
a = sympy.Symbol("a")
b = sympy.Symbol("b")
c = sympy.Symbol("c")

# Example:
expr = x**2+2*x-3
expr                    # x**2 + 2*x - 3
sympy.solve(expr)       # [-3, 1]

expr = a*x**2+b*x+c
expr                    # a*x**2 + b*x + c
sympy.solve(expr,x)     # [(-b + sqrt(-4*a*c + b**2))/(2*a), -(b + sqrt(-4*a*c + b**2))/(2*a)]

expr = sympy.sin(x)-sympy.cos(x)
sympy.solve(expr,x)     # [-3*pi/4, pi/4]

expr = sympy.exp(x)+2*x
sympy.solve(expr,x)     # [-LambertW(1/2)]

expr = x**2+1
sympy.solve(expr,x)     # [-I, I]

expr = x**5-x**2+1
sympy.solve(expr,x)     # [CRootOf(x**5 - x**2 + 1, 0),
                        #  CRootOf(x**5 - x**2 + 1, 1),
                        #  CRootOf(x**5 - x**2 + 1, 2),
                        #  CRootOf(x**5 - x**2 + 1, 3),
                        #  CRootOf(x**5 - x**2 + 1, 4)]

eq1 = x+2*y-1
eq2 = x-y+1
sympy.solve([eq1, eq2], [x, y], dict=True)
                        # [{x: -1/3, y: 2/3}]

eq1 = x**2-y
eq2 = x-y+1
sympy.solve([eq1, eq2], [x, y], dict=True)
                        # [{x: 1/2 + sqrt(5)/2, y: sqrt(5)/2 + 3/2},
                        #  {x: -sqrt(5)/2 + 1/2, y: -sqrt(5)/2 + 3/2}]