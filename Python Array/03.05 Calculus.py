#### 03 Symbolic Computing ####
### 05 Calculus ###

#%% Derivatives

import numpy as np 
import sympy
from sympy import I, pi, oo

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")

# The Function with single independent variable:

f = sympy.Function("f")(x)
# df/dx:
sympy.diff(f,x)                         # Derivative(f(x), x)
# d^2f/dx^2:
sympy.diff(f,x,2)                       # Derivative(f(x), (x, 2))
# d^3f/dx^3:
sympy.diff(f,x,3)                       # Derivative(f(x), (x, 3))

# The Function with two independent variables:

g = sympy.Function("g")(x,y)
g.diff(x,y)                             # equivalent to sympy.diff(g,x,y)
                                        # Derivative(g(x, y), x, y)
sympy.diff(g,x,y)                       # Derivative(g(x, y), x, y)
# ∂^5g/(∂x^3∂y^2)
g.diff(x,3,y,2)                         # Derivative(g(x, y), (x, 3), (y, 2))

# Example:
expr = x**4+x**3+x**2+x+1
expr                                    # x**4 + x**3 + x**2 + x + 1
expr.diff(x)                            # 4*x**3 + 3*x**2 + 2*x + 1
expr.diff(x,2)                          # 2*(6*x**2 + 3*x + 1)
sympy.diff(expr,x)                      # 4*x**3 + 3*x**2 + 2*x + 1
sympy.diff(expr,x,2)                    # 2*(6*x**2 + 3*x + 1)

expr = (x+1)**3*y**2*(z-1)
expr                                    # y**2*(x + 1)**3*(z - 1)
expr.diff(x,y,z)                        # 6*y*(x + 1)**2
sympy.diff(expr,x,y,z)                  # 6*y*(x + 1)**2

expr = sympy.exp(sympy.cos(x))
expr                                    # exp(cos(x))
expr.diff(x)                            # -exp(cos(x))*sin(x)
sympy.diff(expr,x)                      # -exp(cos(x))*sin(x)

#%% Integrals
import numpy as np 
import sympy
from sympy import I, pi, oo

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
a = sympy.Symbol("a")
b = sympy.Symbol("b")
f = sympy.Function("f")(x)

# Indefinite integral:
sympy.integrate(f,x)                    # Integral(f(x), x)
sympy.integrate(g,x,y)                  # Integral(f(x), x)

# Definite integral (a → b):
sympy.integrate(f,(x,a,b))              # Integral(f(x), (x, a, b))
sympy.integrate(g,(x,a,b),(y,a,b))      # Integral(f(x), (x, a, b))

# Example:
expr = sympy.sin(x)
expr                                    # sin(x)
sympy.integrate(expr)                   # equivalent to expr.integrate(x)
                                        # -cos(x)
sympy.integrate(expr,(x,a,b))           # cos(a)-cos(b)

expr = sympy.exp(-x**2)
expr                                    # exp(-x**2)
sympy.integrate(expr)                   # sqrt(pi)*erf(x)/2
sympy.integrate(expr,x)                 # sqrt(pi)*erf(x)/2
sympy.integrate(expr,(x,0,sympy.oo))    # sqrt(pi)/2

expr = sympy.sin(x*sympy.exp(y))
expr                                    # sin(x*exp(y))
sympy.integrate(expr, x)                # -exp(-y)*cos(x*exp(y))

expr = (x+y)**2
expr                                    # (x + y)**2
sympy.integrate(expr,x)                 # x**3/3 + x**2*y + x*y**2
sympy.integrate(expr,y)                 # x**2*y + x*y**2 + y**3/3
e_inx = sympy.integrate(expr,x)
e_iny = sympy.integrate(expr,y)
sympy.integrate(e_inx,y)                # x**3*y/3 + x**2*y**2/2 + x*y**3/3
sympy.integrate(e_iny,x)                # x**3*y/3 + x**2*y**2/2 + x*y**3/3
sympy.integrate(expr,x,y)               # x**3*y/3 + x**2*y**2/2 + x*y**3/3
sympy.integrate(expr,y,x)               # x**3*y/3 + x**2*y**2/2 + x*y**3/3
sympy.integrate(expr,(x,0,1),(y,0,1))   # 7/6

#%% Series

import numpy as np 
import sympy
from sympy import I, pi, oo

x = sympy.Symbol("x")
f = sympy.Function("f")(x)
sympy.series(f, x)                      # f(0) + x*Subs(Derivative(f(_x), _x), (_x,), (0,)) + x**2*Subs(Derivative(f(_x), (_x, 2)), (_x,), (0,))/2 + x**3*Subs(Derivative(f(_x), (_x, 3)), (_x,), (0,))/6 + x**4*Subs(Derivative(f(_x), (_x, 4)), (_x,), (0,))/24 + x**5*Subs(Derivative(f(_x), (_x, 5)), (_x,), (0,))/120 + O(x**6)

# Example:
sympy.cos(x).series()                   # 1 - x**2/2 + x**4/24 + O(x**6)
sympy.sin(x).series()                   # x - x**3/6 + x**5/120 + O(x**6)
sympy.exp(x).series()                   # 1 + x + x**2/2 + x**3/6 + x**4/24 + x**5/120 + O(x**6)
(1/(1+x)).series()                      # 1 - x + x**2 - x**3 + x**4 - x**5 + O(x**6)

#%% Limits

import numpy as np 
import sympy
from sympy import I, pi, oo

x = sympy.symbols("x")
y = sympy.symbols("y")
h = sympy.symbols("h")
f = sympy.Function("f")

# limit(x→y){f}
sympy.limit(f,x,y)         # sin(y)/y

# Example:
# limit(x→y){sin(x)/x}
sympy.limit(sympy.sin(x)/x,x,y)         # sin(y)/y
sympy.limit(sympy.sin(x)/x,x,0)         # 1
sympy.limit(sympy.sin(x)/x,x,sympy.oo)  # 0 (The reality is none)

expr = (x**2-3*x)/(2*x-2)
p = sympy.limit(expr/x, x, sympy.oo)
q = sympy.limit(expr-p*x, x, sympy.oo)
p,q                                     # (1/2, -1)

#%% Sums and Products

import numpy as np 
import sympy
import math
from sympy import I, pi, oo

n = sympy.symbols("n", integer=True)

# Sums:
S = sympy.Sum(1/(n**2),(n,1,oo))
S                                       # Sum(n**(-2), (n, 1, oo))
S.doit()                                # pi**2/6

# Products:
X = sympy.Product(n,(n,1,16))
X                                       # Product(n, (n, 1, 512))
X.doit()                                # 20922789888000