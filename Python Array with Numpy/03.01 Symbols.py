#### 03 Symbolic Computing ####
### 01 Symbols ###

#%% About Sympy

import sympy
from sympy import I, pi, oo
sympy.init_printing()  

# Configures SymPy printing system to display nicely formatted renditions of mathematical expressions, as we will see examples of later in this chapter.

x = sympy.Symbol("x")
y = sympy.Symbol("y", real=True)
z = sympy.Symbol("z", imaginary=True)

print(x.is_real)                    # None
print(y.is_real)                    # True

"""
# The is_real returns True if the symbol is known to be real, 
# False if the symbol is known to not be real, 
# and None if it is not known if the symbol is real or not.
"""

#%% Keyword for Symbol Objects

## Selected Assumptions and their Corresponding Keyword for Symbol Objects
"""
Assumption Keyword Arguments      Attributes          Description
real                              is_real             Specify that a symbol represents a real number.
imaginary                         is_imaginary        Specify that a symbol represents a imaginary number.
positive                          is_positive         Specify that a symbol is positive.
negative                          is_negative         Specify that a symbol is negative.
integer                           is_integer          The symbol represents an integer.
odd                               is_odd              The symbol represents an odd integer.
even                              is_even             The symbol represents an even integer.
prime                             is_prime            The symbol is a prime number, and is therefore also an integer.
finite                            is_finite           The symbol represents a quantity that is finite.
infinite                          is_infinite         The symbol represents a quantity that is infinite.
For a complete list see the docstring for sympy.Symbol
"""

import sympy
from sympy import I, pi, oo
sympy.init_printing()   

x = sympy.Symbol("x")
y = sympy.Symbol("y", positive=True)
print(sympy.sqrt(x**2))                 # sqrt(x**2)
print(sympy.sqrt(y**2))                 # y

n1 = sympy.Symbol("n")
n2 = sympy.Symbol("n",integer=True)
n3 = sympy.Symbol("n",odd=True)
print(sympy.cos(n1*sympy.pi))                 # cos(pi*n)
print(sympy.cos(n2*sympy.pi))                 # (-1)**n
print(sympy.cos(n3*sympy.pi))                 # -1

a, b, c = sympy.symbols("a, b, c", negative=True)
d, e, f = sympy.symbols("d, e, f", negative=True)

#%% Numbers

## Constants and Special Symbols
"""
Mathematical Symbol   SymPy Symbol        Description
π                     sympy.pi            Ratio of the circumference to the diameter of a circle.
e                     sympy.E             The base of the natural logarithm e = exp(1)
γ                     sympy.EulerGamma    Euler's constant
∞                     sympy.I             Infinity
"""

import sympy
from sympy import I, pi, oo
sympy.init_printing()

i = sympy.Integer(19)
print("i =",i)                                  # 19
print(type(i))                                  # <class 'sympy.core.numbers.Integer'>
print(i.is_Integer, i.is_real, i.is_odd)        # True True True

f = sympy.Float(1.234)                          
print("f =",f)                                  # 1.23400000000000
print(type(f))                                  # <class 'sympy.core.numbers.Float'>
print(f.is_Integer, f.is_real, f.is_odd)        # (False, True, False)
print("i + f =", i+f)                           # 20.2340000000000

# Take a wide range of inputs and derives a SymPy compatible expression, and eliminate the need for specifying explicitly what types of objects are to be created:
a, b = sympy.sympify(1), sympy.sympify(2.3)
print("a = ",a,", b = ",b)                      # a =  1, b =  2.30000000000000
print(type(a), type(b))                         # <class 'sympy.core.numbers.One'> <class 'sympy.core.numbers.Float'>
print("a + b =", a+b)                           # 3.30000000000000

#%% Integer

import sympy
from sympy import I, pi, oo
sympy.init_printing()

n = sympy.Symbol("n", integer=True)
print(n.is_integer, n.is_Integer, n.is_positive, n.is_Symbol)   # True False None True
i = sympy.Integer(19)
print(i.is_integer, i.is_Integer, i.is_positive, i.is_Symbol)   # True True True False
print(i**50)
print(sympy.factorial(4))

#%% Float
# The SymPy Float object can represent the real number without the limitations of floating-point numbers:

import sympy
from sympy import I, pi, oo
sympy.init_printing()

print("%.25f" % 0.3)            # create a string represention with 24 decimals: 0.2999999999999999888977698
print(sympy.Float(0.3,25))      # 0.2999999999999999888977698
print(sympy.Float("0.3",25))    # 0.3

#%% Rational

import sympy
from sympy import I, pi, oo
sympy.init_printing()

print(sympy.Rational(11,13))
r1 = sympy.Rational(2,3)
r2 = sympy.Rational(4,5)
print((2/3)*(4/5))
print(r1 * r2)
print((2/3)/(4/5))
print(r1 / r2)

#%% Functions

import sympy
from sympy import I, pi, oo
sympy.init_printing()

x, y, z  = sympy.symbols("x, y, z")
f = sympy.Function("f")
print(type(f))
print(f(x))                             # f(x)
g = sympy.Function("g")(x, y, z)
print(g)                                # g(x,y,z)
print(g.free_symbols)                   # {z, x, y}

print(sympy.sin)                        # sin
print(sympy.pi)                         # pi
print(sympy.sin(x))                     # sin(x)
print(sympy.sin(pi * 1.5))              # -1

n = sympy.Symbol("n",integer=True)
print(sympy.sin(pi * n))                # 0

h = sympy.Lambda(x,x**2)
print(h)                                # Lambda(x, x**2)
print(5)                                # 25
print(h(1+x))                           # (1+x)**2
