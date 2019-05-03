#### Issubclass

## issubclass(class classinfo)

class A:
    pass

class B(A):
    pass

class C:
    pass

print(issubclass(A,A))      # True
print(issubclass(B,B))      # True
print(issubclass(C,C))      # True

print(issubclass(B,A))      # True
print(issubclass(A,B))      # False
print(issubclass(C,B))      # False
print(issubclass(C,A))      # False

print(issubclass(A,object)) # True
print(issubclass(B,object)) # True
print(issubclass(C,object)) # True


