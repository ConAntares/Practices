#### 03 Symbolic Computing ####
### 03 Manipulating Expressions ###

#%% Simplification

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")

expr = 2*(x**2-x)-x*(x+1)
print(expr)                     # 2*x**2 - x*(x + 1) - 2*x
print(expr.simplify())          # x*(x - 3)
print(sympy.simplify(expr))     # x*(x - 3)

expr = 2 * sympy.cos(x) * sympy.sin(x)
print(expr)                     # 2*sin(x)*cos(x)
print(expr.simplify())          # sin(2*x)
print(sympy.simplify(expr))     # sin(2*x)

expr = sympy.exp(x) * sympy.exp(y)
print(expr)                     # exp(x)*exp(y)
print(expr.simplify())          # exp(x + y)
print(sympy.simplify(expr))     # exp(x + y)
sympy.simplify(expr)

#%% Expand

## Summary of selected SymPy Functions for Simplifying Expression
"""
sympy.simplify
    Attempt various methods and approaches to obtain a simpler form of a given expression.
sympy.trigsimp
    Attempt to simplify an expression using trigonometric identities.
sympy.powsimp
    Attempt to simplify an expression using laws of powers.
sympy.compsimp
    Simplify combinatorial expressions.
sympy.ratsimp
    Simplify an expression by writing on a common denominator.
"""

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")
b = sympy.Symbol("a",positive=True)
a = sympy.Symbol("b",positive=True)

expr = (x + 1) * (x + 2)
print(sympy.expand(expr))                           # x**2 + 3*x + 2

expr = sympy.sin(x + y)
print(expr)                                         # sin(x + y)
print(sympy.trigsimp(expr))                         # sin(x + y)
print(expr.expand(trig=True))                       # sin(x)*cos(y) + sin(y)*cos(x)

expr = sympy.log(a*b)
print(expr)                                         # log(a*b)
print(expr.expand(log=True))                        # log(a) + log(b)
print(sympy.expand(expr,log=True))                  # log(a) + log(b)

# Complex=True for separating real and imaginary parts of an expression:
expr = sympy.exp(sympy.I*a + b)
print(expr)                                         # exp(a + I*b)
print(expr.expand(complex=True))                    # I*exp(a)*sin(b) + exp(a)*cos(b)
print(sympy.expand(expr,complex=True))              # I*exp(a)*sin(b) + exp(a)*cos(b)

expr = (a*b)**x
print(expr)                                         # (a*b)**x
print(expr.expand(power_bas=True))                  # a**x*b**x
print(sympy.expand(expr, power_base=True))          # a**x*b**x

expr = sympy.exp(a-b)*x
print(expr)                                         # x*exp(-a + b)
print(expr.expand(power_exp=True))                  # x*exp(-a)*exp(b)
print(sympy.expand(expr,power_exp=True))            # x*exp(-a)*exp(b)

"""
Calling the sympy.expand function with these keyword arguments set to 
True is equivalent to calling the more specific functions 
sympy.expand_mul, sympy.expand_trig, sympy.expand_log, sympy.expand_complex, sympy.expand_power_base, 
and sympy.expand_power_exp, respectively, but an advantage of the sympy.expand function is 
that several types of expansions can be performed in a single function call.
"""

#%% Factor, Collect, and Combine

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
b = sympy.Symbol("a",positive=True)
a = sympy.Symbol("b",positive=True)

f = x**2-1
print(sympy.factor(f))                      # (x - 1)*(x + 1)
f = x*sympy.cos(y) + sympy.sin(y)*x
print(sympy.factor(f))                      # x*(sin(y) + cos(y))

f = sympy.log(a) - sympy.log(b)
print(sympy.logcombine(f))                  # log(b/a)

f = x + y + x * y * z
print(f.collect(x))                         # x*(y*z + 1) + y
print(f.collect(y))                         # x + y*(x*z + 1)

f = sympy.cos(x + y) + sympy.sin(x - y)
print()
print(f.expand(trig=True).collect([sympy.cos(x)]))
# (-sin(y) + cos(y))*cos(x) - sin(x)*sin(y) + sin(x)*cos(y)
print(f.expand(trig=True).collect([sympy.cos(x),sympy.sin(x),sympy.sin(y),sympy.cos(y)]))
# (-sin(y) + cos(y))*sin(x) + (-sin(y) + cos(y))*cos(x)
print(f.expand(trig=True).collect([sympy.cos(x),sympy.sin(x)]).collect(sympy.cos(y)-sympy.sin(y)))
# (sin(x) + cos(x))*(-sin(y) + cos(y))

## Apart, Together, and Cancel
f = 1/(x**2+3*x+2),x
print(sympy.apart(f))               # (-1/(x + 2) + 1/(x + 1), x)
f = 1/(y*x+y) + 1/(1+x)
print(sympy.together(f))            # (y + 1)/(y*(x + 1))
f = y/(y*2+y)
print(sympy.cancel(f))              # 1/3
f = y/(y*x+y)
print(sympy.cancel(f))              # 1/(x + 1)
f = y/(y*2*x+y)
print(sympy.cancel(f))              # 1/(2*x + 1)

#%% Substitutions

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x = sympy.Symbol("x")
y = sympy.Symbol("y")
z = sympy.Symbol("z")
b = sympy.Symbol("a",positive=True)
a = sympy.Symbol("b",positive=True)

f = (x+y+z)
print(f.subs(x,y))                                          # 2*y + z
print(f.subs({x:y}))                                        # 2*y + z
print(f.subs({x:y,z:2*y}))                                  # 4*y
f = sympy.sin(x*sympy.exp(x))
print(f.subs(x,y))                                          # sin(y*exp(y))
f = sympy.sin(x*z)
print(f.subs({z:sympy.exp(y),x: y,sympy.sin: sympy.cos}))   # cos(y*exp(y))

f = expr = x * y + z**2 *x
values = {x:1.25, y:0.4, z:3.2}
print(f.subs(values))                                       # 13.3000000000000