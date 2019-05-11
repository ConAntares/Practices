#### Scalar with TensorFlow in Python

import tensorflow as tf

c1 = tf.constant(5,   name="x")
c2 = tf.constant(6.0, name="y")
c3 = tf.constant(7.0, tf.float64, name="z")

print("c1 (x):",c1) # c1 (x): Tensor("x:0", shape=(), dtype=int32)
print("c2 (y):",c2) # c2 (y): Tensor("y:0", shape=(), dtype=float32)
print("c3 (z):",c3) # c3 (z): Tensor("z:0", shape=(), dtype=float64)