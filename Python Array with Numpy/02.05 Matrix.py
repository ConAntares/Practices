#### 02 Introduction ####
### 05 Matrix and Vector Operations ###


#%% Summary of NumPy Functions for Matrix Operations

"""
#   np.dot 
# Matrix multiplication (dot product) between two given arrays representing vectors, arrays, or tensors.
#   np.inner 
# Scalar multiplication (inner product) between two arrays representing vectors.
#   np.cross 
# The cross product between two arrays that represent vectors.
#   np.tensordot 
# Dot product along specified axes of multidimensional arrays.
#   np.outer 
# Outer product (tensor product of vectors) between two arrays representing vectors.
#   np.kron 
# Kronecker product (tensor product of matrices) between arrays representing matrices and higher-dimensional arrays.
#   np.einsum 
# Evaluates Einstein's summation convention for multidimensional arrays.
"""

import numpy as np

A = np.arange(0,6).reshape(2,3)
B = np.arange(0,6).reshape(3,2)
print('A =\n',A)
print('B =\n',B)
print('A dot B =\n',np.dot(A,B))
print('B dot A =\n',np.dot(B,A))
print('B dot A =\n',B.dot(A))

C = np.random.rand(2,2)
D = np.random.rand(2,2)
print('C =\n',C)
print('D =\n',D)

Cm = np.matrix(C)
Dm = np.matrix(D)
E = C * D
Em = Cm * Dm
print('E = C * D =\n', E)
print('Em = Cm * Dm =\n', Em)
print('The inverse matrix of Dm =\n',Dm.I)

F = np.arange(0,4).reshape(1,4)
G = np.arange(0,4).reshape(4,1)
Fm = np.asmatrix(F)
Gm = np.asmatrix(G)
print(F)
print(Fm)
print(G)
print(Gm)

Hm = Fm * Gm * Gm.I
print("Matrix of H =\n",Hm)
print("The dot product of Vector F and Vector G =\n",   np.dot(F,G))
print("The dot product of Vector F and Vector F.T =\n", np.dot(F,F.T))
print("The inner product of Vector F and itself =\n",   np.inner(F,F))
print("The outer product of Vector F and itself =\n",   np.outer(F,F))
print("The outer product of Vector F and itself =\n",   np.outer(F,F))

M = np.arange(0,9).reshape(3,3)
N = np.arange(1,5).reshape(2,2)
print('M =\n',M)
print('N =\n',N)
print("The Kronecker product of Vector M and N =\n",    np.kron(M,N))
print("The Kronecker product of Vector N and M =\n",    np.kron(N,M))

#%% Evaluates Einstein's summation convention for multidimensional arrays

import numpy as np

x = np.array([1,2,3,4])
y = np.array([5,6,7,8])
e = np.einsum("n,n",x,y)

print(e)                    # e = x[1]*y[1] + x[2]*y[2] + x[3]*y[3] + ...