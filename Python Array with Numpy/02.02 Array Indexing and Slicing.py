#### 02 Introduction ####
### 02 Array Indexing and Slicing ###

## Indexing and Slicing
"""
Elements and subarrays of NumPy arrays are accessed using the standard square bracket notation that is also used with for example Python lists.
Within the square bracket, a variety of different index formats are used for different types of element selection.
In general, the expression within the bracket is a tuple,
where each item in the tuple is a specification of which elements to select from each axis (dimension) of the array.
"""

## One-dimensional Arrays
"""
Along a single axis, integers are used to select single elements, 
and so-called slices are used to select ranges and sequences of elements. 
Positive integers are used to index elements from the beginning of the array(index starts at 0), 
and negative integers are used to index elements from the end of the array, 
where the last element is indexed with -1, the second-to-last element with -2, and so on.

Slices are specified using the: notation that is also used for Python lists. 
In this notation, a range of elements can be selected using an expressions like m:n, 
which selects elements starting with m and ending with n−1 (note that the nth element is not included). 
The slice m:n can also be written more explicitly as m:n:1, 
where the number 1 specifies that every element between m and n should be selected. 
To select every second element between m and n, use m:n:2, and to select every p element, use m:n:p, and so on. 
If p is negative, elements are returned in reversed order starting from m to n+1,
which implies that m has be larger than n in this case. 
"""

## Examples of Array Indexing and Slicing Expression:
"""
Expression      Description
a[ m]           Select element at index m, where m is an integer, with counting from 0. 
a[-m]           Select the m th element from the end of list, where m is an integer.
                The last element in the list is addressed as -1.
a[m:n]          Select element with index starting at m and ending at n-1, where both m and n are integer.
a[:], a[0:-1]   Select all elements in the given axis.
a[m:],a[m:01]   Select elements starting with index m and going up to the last.
a[:n]           Select elements starting with index 0 and going to index n-1.
a[m:n:p]        Select elements with index m through n(exclusive), with increment p.
a[::-1]         Select all the elements, in reverse order.
"""

#%% Create a sequence of integers

import numpy as np

a = np.arange(0,11,1)       # Contains a sequence of integers between 0 and 10.

print ("a =",a)
print ("The first element a[0] is",a[0])
print ("The last element a[-1] is",a[-1])
print ("The 5th number, at index 4 is",a[4])
print ("The second to the last: ",a[1:-1])
print ("The second to the last with increment 2:",a[1:-1:2])
print ("The first five element",a[:5])
print ("The last five elements",a[-5:])
print ("The reversed array with slice -1", a[::-1])
print ("The reversed array with slice -2", a[::-2])