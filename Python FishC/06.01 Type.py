#### Type

# String
H = "Hello"
print(type(H))          # <class 'str'>

n = 'a'
print(type(n))          # <class 'str'>

# Integer
N = 10
print(type(N))          # <class 'int'>

# Float
m = 1.234
print(type(m))          # <class 'float'>

# Bool
print(True == 1)        # True
print(False == 0)       # True
print(type(True))       # <class 'bool'>

# Scientific Notation
s = 10e12
print(type(s))          # <class 'float'>

"""
Convert Type

<class 'int'>:      int()
<class 'float'>:    float()
<class 'string'>:   str()
"""

o = '520'
t = int(o)
print(t)                # 520
o = 1.9
t = int(o)
print(t)                # 1
o = 1
t = float(o)
print(t)                # 1.0
o = 1.0
t = str(1e23)
print(t)                # 1e+23

a = 1.23
d = isinstance(a,float)
print(d)                # True
d = isinstance(a,int)
print(d)                # False