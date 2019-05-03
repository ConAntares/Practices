#### Time

import time

c = time.time()
a = time.clock()

print("Hello, World!")    # Hello, World!

b = time.clock()
d = time.time()

print("Time Interval:",b-a)
print("Clock Interval:",d-c)