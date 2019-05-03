####  Isinstance

## isinstance(object,classinfo)

class A:
    pass

class B(A):
    pass

class C:
    pass

b = B()
print(isinstance(b,A))          # True
print(isinstance(b,B))          # True
print(isinstance(b,C))          # False
print(isinstance(b,(A,B,C)))    # True