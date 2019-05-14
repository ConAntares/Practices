#### Tensor with TensorFlow in Python

import numpy as np
import tensorflow as tf

tfs = tf.InteractiveSession()

## Create Tensor
"""
tf.convert_to_tensor(value, dtype=None, name=None, preferrred_dtype=None)
"""

# 0-Dimension Tensor
T0 = tf.convert_to_tensor(5.0, dtype=tf.float64)
re = tfs.run(T0)
print(T0)                       # Tensor("Const:0", shape=(), dtype=float64)
print(re)                       # 5.0

# 1-Dimension Tensor
A1 = np.array([1.0,2.0,3.0,4.0,])
print(A1.shape)                 # (4,)
print(A1.dtype)                 # float64
T1 = tf.convert_to_tensor(A1, dtype=tf.float64)
re = tfs.run(T1)
print(T1)                       # Tensor("Const_1:0", shape=(4,), dtype=float64)
print(T1[0])                    # Tensor("strided_slice:0", shape=(), dtype=float64)
print(T1[1])                    # Tensor("strided_slice_1:0", shape=(), dtype=float64)
print(re)                       # [1. 2. 3. 4.]

# 2-Dimensions Tensor
A2 = np.array([[0.0, 0.1, 0.2, 0.3, 0.4],
               [1.8, 1.6, 1.4, 1.2, 1.0],
               [2.1, 2.3, 2.5, 2.7, 2.9]])
print(A2.shape)                 # (3, 5)
print(A2.dtype)                 # float64
T2 = tf.convert_to_tensor(A2, dtype=tf.float64)
re = tfs.run(T2)
print(T2)                       # Tensor("Const_2:0", shape=(3, 5), dtype=float64)
print(T2[0,0])                  # Tensor("strided_slice_2:0", shape=(), dtype=float64)
print(T2[0,1])                  # Tensor("strided_slice_3:0", shape=(), dtype=float64)
print(T2[1,0])                  # Tensor("strided_slice_4:0", shape=(), dtype=float64)
print(T2[1,1])                  # Tensor("strided_slice_5:0", shape=(), dtype=float64)
print(re)                       
    # [[0.  0.1 0.2 0.3 0.4]
    #  [1.8 1.6 1.4 1.2 1. ]
    #  [2.1 2.3 2.5 2.7 2.9]]

# 3-Dimensions Tensor
A3 = np.array([[[3.14,1.59,2.65,3.58],[2.71,8.28,1.82,8.45],[0.61,8.03,3.98,8.74]],
               [[1.00,1.01,1.02,1.03],[6.62,6.07,0.15,0.81],[1.05,4.57,1.80,0.13]]])
print(A3.shape)                 # (2, 3, 4)
print(A3.dtype)                 # float64
T3 = tf.convert_to_tensor(A3, dtype=tf.float64)
re = tfs.run(T3)
print(T3)                       # Tensor("Const_3:0", shape=(2, 3, 4), dtype=float64)
print(T3[0,0,0])                # Tensor("strided_slice_6:0", shape=(), dtype=float64)
print(T3[0,0,1])                # Tensor("strided_slice_7:0", shape=(), dtype=float64)
print(T3[0,1,0])                # Tensor("strided_slice_8:0", shape=(), dtype=float64)
print(T3[0,1,1])                # Tensor("strided_slice_9:0", shape=(), dtype=float64)
print(T3[1,0,0])                # Tensor("strided_slice_10:0", shape=(), dtype=float64)
print(T3[1,0,1])                # Tensor("strided_slice_11:0", shape=(), dtype=float64)
print(T3[1,1,0])                # Tensor("strided_slice_12:0", shape=(), dtype=float64)
print(T3[1,1,1])                # Tensor("strided_slice_13:0", shape=(), dtype=float64)
print(re)
    # [[[3.14 1.59 2.65 3.58]
    #   [2.71 8.28 1.82 8.45]
    #   [0.61 8.03 3.98 8.74]]
    #  [[1.   1.01 1.02 1.03]
    #   [6.62 6.07 0.15 0.81]
    #   [1.05 4.57 1.8  0.13]]]