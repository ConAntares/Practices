#### 02 Introduction ####
### 03 Reshaping and Resizing ###

"""
When working with data in array form, it is often useful to rearrange arrays and alter the way they are interpreted. 
For example, an N*N matrix array could be rearranged into a vector of length N^2, 
or a set of one-dimensional arrays could be concatenated together, or stacked next to each other to form a matrix. 
NumPy provides a rich set of functions of this type of manipulation. 
See this Table for a summary of a selection of these functions.
"""

## data[a:b,c:d]
"""
The matrix from (a,c) to (b-1,d-1)
data[[a,b],[c,d]]
The elements: (a,c) and (b,d)
"""

## data
"""
    [0,0]   [0,1]   [0,2]   [0,3]
    [1,0]   [1,1]   [1,2]   [1,3]
    [2,0]   [2,1]   [2,2]   [2,3]
    [3,0]   [3,1]   [3,2]   [3,3]
"""

## data[0]
"""
    [0,0]   [0,1]   [0,2]   [0,3]



"""

## data[1,:]
"""

    [1,0]   [1,1]   [1,2]   [1,3]


"""

## data[:,1]
"""
            [0,1]
            [1,1]
            [2,1]
            [3,1]
"""

## data[0:2,0:2]
"""
    [0,0]   [0,1]
    [1,0]   [1,1]


"""

## data[0:2,2:4]
"""
                    [0,2]   [0,3]
                    [1,2]   [1,3]


"""

## data[::2,::2]
"""
    [0,0]           [0,2]

    [2,0]           [2,2]

"""

## data[1::2,1::2]
"""

            [1,1]           [1,3]

            [3,1]           [3,3]
"""

## data[:,[0,3]]
"""
    [0,0]                   [0,3]
    [1,0]                   [1,3]
    [2,0]                   [2,3]
    [3,0]                   [3,3]
"""

## data[[1,3],[0,3]]
"""

    [1,0]

                            [3,3]
"""

## data
"""
    [0,0]   [0,1]   [0,2]   [0,3]
    [1,0]   [1,1]   [1,2]   [1,3]
    [2,0]   [2,1]   [2,2]   [2,3]
    [3,0]   [3,1]   [3,2]   [3,3]
"""

## data[:,np.array[[False,True,True,False]]]
"""
            [0,1]   [0,2]
            [1,1]   [1,2]
            [2,1]   [2,2]
            [3,1]   [3,2]
"""

## data[1:3,np.array[[False,True,True,False]]]
"""
    [0,0]   [0,1]   [0,2]   [0,3]
    [1,0]   [1,1]   [1,2]   [1,3]
    [2,0]   [2,1]   [2,2]   [2,3]
    [3,0]   [3,1]   [3,2]   [3,3]
"""

## Summary of NumPy functions for manipulating the dimensions and the shape of arrays
"""
np.reshape, np.ndarray.reshape:
    Reshape an N-Dimensional array. The total number of elements must remain the same.
np.ndarray.flatten:
    Create a copy of an N-Dimensional array and reinterpret it as a One-Dimensional array, that is all dimensions are collapsed into one.
np.ravel, np.ndarray,ravel:
    Create a view (if possible, otherwise a copy) of an N-dimensional array in which it is interpreted as a One-Dimensional array.
np.squeeze:
    Remove axes with length 1.
np.expand_dims, np.newaxis:
    Adds a new axis (dimension) of length 1 to an array, where np.newaxis is used with array indexing.
np.transpose, np.ndarray.transpose, np.ndarray.T:
    Transpose the array. The transpose operation corresponds to reversing (or more generally, permuting) the axes of the array.
np.vstack:
    Stack a list of arrays vertically (along axis 0): For example, given a list of row vectors, append the rows to form a matrix.
np.hstack:
    Stack a list of arrays horizontally (along axis 1): For example, given a list of column vectors, append the columns to form a matrix.
np.dstack:
    Stack arrays depth-wise (along axis 2).
np.concatenate:
    Create a new array by appending arrays after each other, along a given axis.
np.resize:
    Resize an array. Creates a new copy of the original array, with the requested size. 
    If necessary, the original array will repeated to fill up the new array.
np.append:
    Append an element to an array. Creates a new copy of the array.
np.insert:
    Insert a new element at a given position. Creates a new copy of the array.
np.delete:
    Delete an element at a given position. Creates a new copy of the array.
"""

"""
Reshaping an array does not require modifying the underlying array data; 
it only changes in how the data is interpreted, by redefining the array’s strides attribute. 
An example of this type of operation is a 2*2 array (matrix) that is reinterpreted as a 1*4 array (vector). 
In NumPy, the function np.reshape, or the ndarray class method reshape, can be used to reconfigure how the underlying data is interpreted. 
"""

#%% Example 1

import numpy as np

α = np.array([[1,2],
              [3,4]])
Reshape = np.reshape(α,(1,4))

print("α =\n",α)
print("Reshape =\n",Reshape)
print("Reshape(1,4) =\n",α.reshape(1,4))                # Generate 1*4 array
print("Reshape(2,2) =\n",α.reshape(2,2))                # Generate 2*2 array
print("Reshape(4,1) =\n",α.reshape(4,1))                # Generate 4*1 array
print("Reshape(4,4,1) =\n",α.reshape(4,1,1))            # Generate 4*1*1 array
print("Reshape(2,2,1) =\n",α.reshape(2,2,1))            # Generate 2*2*1 array
print("Reshape(2,1,2) =\n",α.reshape(2,1,2))            # Generate 2*1*2 array
print("Reshape(1,2,2) =\n",α.reshape(1,2,2))            # Generate 1*2*2 array
print("Reshape(1,1,4) =\n",α.reshape(1,1,4))            # Generate 1*1*4 array

#%% Example 2

import numpy as np

α = np.array([[1,2],
              [3,4]])
Flatten = np.ndarray.flatten(α)

print("α =\n",α)
print("Reshape(4) =\n",α.reshape(4))
print("Flatten(α) =\n",Flatten)

#%% Example 3

import numpy as np

β = np.arange(0,5)
print("β =\n",β)

column = β[:,np.newaxis]
print("β[:,np.newaxis] =\n",column)

row = β[np.newaxis,:]
print("β[np.newaxis,:] =\n",row)

#%% Example 4

import numpy as np

β = np.arange(0,5)
γ = np.arange(1,6)
#vstack = np.vstack((β,β,β))

print("β =\n",β)
print("γ =\n",γ)
print("vstack((β,β,β))) =\n",np.vstack((β,β,β)))
print("vstack((γ,γ,γ)) =\n",np.vstack((γ,γ,γ)))
print("hstack((β,β,β)) =\n",np.hstack((β,β,β)))
print("hstack((γ,γ,γ)) =\n",np.hstack((γ,γ,γ)))
print("vstack((row,row,row)) =\n",np.vstack((row,row,row)))
print("hstack((column,column,column)) =\n",np.hstack((column,column,column)))