#### 03 Symbolic Computing ####
### 07 Linear Algebra ###

#%% Symbolic Linear Algebra

import numpy as np 
import sympy
from sympy import I, pi, oo

# Vector:
v1 = sympy.Matrix([1,2])
v1                      # Matrix([[1],
                        #         [2]])
v2 = sympy.Matrix([[1,2]])
v2                      # Matrix([[1, 2]])

# Matrix
m1 = sympy.Matrix([[1, 2], [3, 4]])
m1                      # Matrix([[1, 2],
                        #         [3, 4]])

m2 = sympy.Matrix(3,4,lambda m,n:10*m+n)
m2                      # Matrix([[ 0,  1,  2,  3],
                        #         [10, 11, 12, 13],
                        #         [20, 21, 22, 23]])

a,b,c,d = sympy.symbols("a,b,c,d")
M = sympy.Matrix([[a, b], [c, d]])
M                       # Matrix([[a, b],
                        #         [c, d]])

## Matrix Computation
M*M                     # Matrix([[a**2 + b*c,  a*b + b*d],
                        #         [ a*c + c*d, b*c + d**2]])

## Selected functions and methods for operating on SymPy matrices
"""
#   Function        Method Description
    transpose / T   Compute the transpose of a matrix.
    adjoint / H     Compute the adjoint of a matrix.
    trace           Compute the trace (sum of diagonal elements) of a matrix.
    det             Compute the determinant of a matrix.
    inv             Compute the inverse of a matrix.
    LUdecomposition Compute the LU decomposition of a matrix
    LUsolve         Solve a linear system of equations on the form Mx=b, for the unknown vector x, using LU factorization.
    QRdecomposition Compute the QR decomposition of a matrix.
    QRsolve         Solve a linear system of equations on the form Mx=b, for the unknown vector x, using QR factorization.
    diagonalize     Diagonalize a matrix M, such that it can be written on the form D=P^(-1)MP, where D is diagonal.
    norm            Compute the norm of a matrix.
    nullspace       Compute a set of vectors that spans the null space of a matrix
    rank            Compute the rank of a matrix.
    singular_values Compute the singular values of a matrix
    solve           Solve a linear system of equations on the form Mx=b.
"""