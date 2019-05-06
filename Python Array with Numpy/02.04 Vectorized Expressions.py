#### 02 Introduction ####
### 04 Vectorized Expression ###


#%% Arithmetic Operations

"""
The purpose of storing numerical data in arrays is to be able to process the data with concise vectorized expressions that represent batch operations that are applied to all elements in the arrays. 
Efficient use of vectorized expressions eliminates the need of many explicit for loops. 
This results in less verbose code, better maintainability, and higher-performing code. 
NumPy implements functions and vectorized operations corresponding to most fundamental mathematical functions and operators. 
Many of these functions and operations act on arrays on an elementwise basis, 
and binary operations require all arrays in an expression to be of compatible size. 
The meaning of compatible size is normally that the variables in an expression represent either scalars or arrays of the same size and shape. 
More generally, a binary operation involving two arrays is well defined if the arrays can be broadcasted into the same shape and size. 

Visualization of broadcasting of row and column vectors into the shape of a matrix. 
The highlighted elements represent true elements of the arrays, 
while the light gray shaded elements describe the broadcasting of the elements of the array of smaller size:
"""

## Case 1:
"""
    11  12  13      1   2   2       12  13  16
    21  22  23  +               =   22  24  26
    31  32  33                      32  34  36
"""

## Case 2:
"""
    11  12  13      1               12  13  14
    21  22  23  +   2           =   23  24  25
    31  32  33      3               34  35  36
"""

## Operators for elementwise arithmetic operation on NumPy arrays

"""
Example: x += y means x = x + y
Operator    Operation
+, +=       Addition
-, -=       Subtraction
*, *=       Multiplication
/, /=       Division
//, //=     Integer division
**, **=     Exponentiation
"""

import numpy as np
import time

start_time = time.time()
x = np.array([[1,2],
              [3,4]])
y = np.array([[5,6],
              [7,8]])

print("x=\n",x)
print("y=\n",y)
print("x+y=\n",x+y)
print("x-y=\n",x-y)
print("2x=\n",x*2)
print("x^2=\n",x**2)
print("y/2=\n",y/2)
print("y/2=\n",y/3)
print("x*y=\n",x*y)
print("Type of x:",(x).dtype)
print("Type of x^2:",(x**2).dtype)
print("Type of y/3:",(y/3).dtype)
end_time = time.time()
print(end_time-start_time,"seconds")

#%% Elementwise Functions and Mathematical Operations in NumPy

## Elementwise Functions
# Selection of NumPy functions for elementwise elementary mathematical functions:
"""
np.cos, np.sin, np.tan:
    Trigonometric functions.
np.arccos, np.arcsin, np.arctan:
    Inverse trigonometric functions.
np.cosh, np.sinh, np.tanh:
    Hyperbolic trigonometric functions.
np.sqrt:
    Square root.
np.exp:
    Exponential.
np.log, np.log2, np.log10:
    Logarithms of base: e, 2, and 10, respectively.
"""

## Elementwise Mathematical Operations in NumPy
"""
np.add:
    Addition of two NumPy arrays.
np.subtract:
    Subtraction of two NumPy arrays.
np.multiply:
    Multiplication of two NumPy arrays.
np.divide:
    Division of two NumPy arrays.
np.power:
    Raise first input argument to the power of the second input argument.
np.remainder:
    The remainder of division.
np.reciprocal:
    The reciprocal (inverse) of each element.
np.sign, np.abs:
    The sign and the absolute value.
np.floor, np.ceil, np.rint:
    Convert to integer value.
np.round:
    Round to a given number of decimals.
np.real, np.imag, np.conj:
    The real part, imaginary part, and the complex conjugate of the elements in the input arrays.
"""

## Elementwise Functions and mathematical operations:

import numpy as np

x = np.linspace(-1,1,11)
print(x)
y = np.sin(np.pi*x)
print(y)
z = np.round(y,decimals=4)    # Round an array to the given number of decimals.
print(z)
a = np.add(np.sin(x)**2, np.cos(x)**2)
print(a)
b = np.sin(x)**2 + np.cos(x)**2
print(b) 
c = np.power(np.sin(x),4)
print(c)
d = np.sin(x)**4
print(d)
# Result: a = b

#%% Vector:

"""
Occasionally it is necessary to define new functions that operate on NumPy arrays on an element-by-element basis. 
A good way to implement such functions is to express it in terms of already existing NumPy operators and expressions, 
but in cases when this is not possible, the np.vectorize function can be a convenient tool. 
This function takes a non-vectorized function and returns a vectorized function.
For example, consider the following implementation of the Heaviside step function, 
which works for scalar input:
"""

import numpy as np

def heaviside(x):
    return 1 if x > 0 else 0

print(heaviside(-1))
print(heaviside(0))
print(heaviside(15))

x = np.array([-2,-1,0,1,2])
y = np.arange(-2,2,1)
z = np.linspace(-2,2,5)
# np.vectorize the scalar heaviside function can be converted into a vectorized function that works with NumPy arrays as input:

array_heaviside = np.vectorize(heaviside)

print(x)
print(array_heaviside(x))
print(y)
print(array_heaviside(y))
print(z)
print(array_heaviside(z))

#%% Aggregate Function;

"""
# NumPy provides another set of functions for calculating aggregates for NumPy arrays, 
# which take an array as input and by default return a scalar as output. 
# For example, statistics such as averages, standard deviations,
# and variances of the values in the input array, 
# and functions for calculating the sum and the product of elements in an array, 
# are all aggregate functions.
"""

import numpy as np

data = np.random.normal(size=(2,2))

print("np.random.normal(size=(2,2)) =\n",data)
print("np.mean(data) =\n",np.mean(data))
print("data.mean =\n",data.mean())

#%% NumPy Functions for Calculating Aggregates of NumPy Arrays

"""
np.mean:
    The average of all values in the array.
np.std:
    Standard deviation.
np.var:
    Variance.
np.sum:
    Sum of all elements.
np.prod:
    Product of all elements.
np.cumsum:
    Cumulative sum of all elements.
np.comprod:
    Cumulative product of all elements.
np.min, np.max:
    The minimum or maximum value in an array.
np.argmin, np.argmax:
    The index of the minimun or maximun value in an array.
np.all:
    Return True if all elements in the argument array are nonzero.
"""

## An example:

import numpy as np

data = np.random.normal(size=(2,3,4))

print("",data)
print("",data.sum(axis=0).shape)       # compression along the axis(0) 
print("",data.sum(axis=0))
print("",data.sum(axis=(0,1)).shape)   # compression along the axis(0) and axis(1)
print("",data.sum(axis=(0,1)))
print("",data.sum(axis=(0,2)).shape)   # compression along the axis(0) and axis(2)
print("",data.sum(axis=(0,2)))
print("",data.sum(axis=(0,1,2)).shape) # compression along the axis(0), axis(1) and axis(2)
print("",data.sum(axis=(0,1,2)))

data  = np.arange(1,10).reshape(3,3)

print(data)
print(data.sum())
print(data.sum(axis=0))
print(data.sum(axis=1))

#%% Boolean Arrays and Conditional Expressions

import numpy as np

a = np.array([1,2,3,4,5])
b = np.array([5,4,3,2,1])

print(a<=b)
print(np.all(a<b))
print(np.any(a<b))

if np.all(a < b):
    print("All elements in a are smaller than their corresponding element in b")
elif np.any(a < b):
    print("Some elements in a are smaller than their corresponding element in b")
else:
    print("All elements in b are smaller than their corresponding element in a")

x = np.array([-2,-1,0,1,2])

print(x)
print(x>0)
print(1*(x>0))                      # true means 1 and false means 0.
print(x*(x>0)) 


def pulse(x,position,height,width):
    return height * (x>=position) * (x<=(position+width))

x = np.linspace(-5,5,11)
print(x)

y1 = pulse(x,position=-2,height=1,width=5)*1.0
print(y1)

y2 = pulse(x,position=1,height=1,width=5)*1.0
print(y1)

def pulse_p(x,position,height,width):
    return height * np.logical_and(x>=position, x<=(position+width))

y1_p = pulse_p(x,position=-2,height=1,width=5)*1.0
print(y1_p)

y2_p = pulse_p(x,position=1,height=1,width=5)*1.0
print(y1_p)

"""
There are also functions for other logical operations,
such as NOT, OR, and XOR, and functions for selectively picking values from different arrays depending on a given condition np.where,
list of conditions np.select, and an array of indices np.choose.
"""

#%% NumPy functions for conditional and logical expressions"

"""
np.where:
    Choose values from two arrays depending on the value of a condition array.
np.choose:
    Choose values from a list arrays depending on the value of a given index array.
np.select:
    Choose values from a list arrays depending on a list of conditions.
np.nonzero:
    Return an array with indices of nonzero elements.
np.logical_and:
    Perform and elementwise AND operation.
np.logical_or:
    Elementwise OR operations.
np.logical_xor:
    Elementwise XOR operations.
np.logical_not:
    Elementwise NOT operation (inverting).
"""

import numpy as np 

x = np.linspace(-4,4,9)

print(x)
print("np.where",np.where(x<0,x,x))
print("np.where",np.where(x>0,x,x))
print("np.where",np.where(x<0,x**2,x**3))
print("np.where",np.where(x>0,x**2,x**3))
print(x)
print("np.select:",np.select([x<-1,x<2,x<3,x>=3],[x**2,x**3,x**4,0]))
print(x)
print("np.choose:",np.choose([0,1,2,0,1,2,0,1,2],[x**2,x**3,x**4]))
print(x)
print(abs(x)>2)
print((abs(x)>2)*1.0)
print("np.zero:",np.nonzero(abs(x)>2))
print("x[np.zero]:",x[np.nonzero(abs(x)>2)])
print("x[abs(x)>2]:",x[abs(x)>2])

#%% Set Operations

## Numpy functions for operating on sets
"""
np.unique
    Create a new array with unique elements, where each value only appears once.
np.in1d
    Test for the existence of an array of elements in another array.
np.intersect1d
    Return an array with elements that are contained in two given arrays.
np.setdiff1d
    Return an array with elements that are contained in one but not the other, of two given arrays.
np.union1d
    Return an array with elements that are contained in either, or both, of two given arrays.

testing if the values in a NumPy array are included in a set can be done using the np.in1d function, 
which tests for the existence of each element of its first argument in the array passed as second argument.
"""

import numpy as np 

a = np.unique([1,2,3,3])
b = np.unique([2,3,4,4,5,6,5])

print(a)                    # [1,2,3]
print(b)

print(np.in1d(1,a))
print(np.in1d(1,b))
print(np.in1d(a,a))
print(np.in1d(a,b))
print(np.all([0,0]))
print(np.all([1,0]))
print(np.all([1,1]))
print(np.all(np.in1d(a,b)))

print("a=",a)
print("b=",b)

print("a ∪ b =",np.union1d(a,b))
print("a ∩ b =",np.intersect1d(a,b))

print("a \\ b =",np.setdiff1d(a, b))
print("b \\ a =",np.setdiff1d(b, a))

#%% Operation on Arrays

# Summary of NumPy functions for arrray operation:
"""
#   np.transpose, np.ndarray.transpose, np.ndarray.T:
# The transpose (reverse axes) of an array.
#   np.fliplr, np.flipud 
# Reverse the elements in each row / column.
#   np.rot90 
# Rotate the elements along the first two axes by 90 degrees.
#   np.sort, np.ndarray.sort
# Sort the element of an array along a given specified axis 
# (whichdefault to the last axis of the array). 
# The np.ndarray method sort performs the sorting in place, modifying the input array.
"""

a = np.arange(12).reshape(4,3)
print(a)
b = np.linspace(1,12,12).reshape(4,3)
print(b)
c = np.transpose(a)
print(c)
print(c.shape)
print(c.T.shape)
d = np.random.randn(1, 2, 3, 4, 5)
print(d.shape)
print(d.T.shape)
