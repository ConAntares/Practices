#### Everything Starts Here

import tensorflow as tf

tfs = tf.InteractiveSession()

hello = tf.constant("Hello, World!")

print(tfs.run(hello))
    # 'Hello, World!'