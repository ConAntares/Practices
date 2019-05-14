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

