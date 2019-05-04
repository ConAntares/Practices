#### Type

print(type(len))        # <class 'builtin_function_or_method'>

print(type(dir))        # <class 'builtin_function_or_method'>

print(type(int))        # <class 'type'>

print(type(list))       # <class 'type'>

class C:
    pass
print(type(C))          # <class 'type'>

a = int("123")
b = int("456")
print(a, b)             # 123 456
print(a + b)            # 579

# Magic Methods
"""
__add__(self,other)                 : +
__sub__(self,other)                 : -
__mul__(self,other)                 : *
__truediv__(self,other)             : /
__floordiv__(self,other)            : //
__mod__(self,other)                 : %
__divmod__(self,other)              : (self//other, self%other) 
__pow__(self,other[,module])        : **
__lshift__(self,other)              : <<
__rshift__(self,other)              : >>
__rand__(self,other)                : &
__or__(self,other)                  : |
__xor__(self,other)                 : ^
"""

class New_int(int):
    def __add__(self,other):
        return int.__mul__(self,other)
    def __mul__(self,other):
        return int.__add__(self,other)

a = New_int(3)
b = New_int(5)
print(a + b)                        # 15
print(a * b)                        # 8

class Try_int(int):
    def __add__(self,other):
        return int(self) * int(other)
    def __mul__(self,other):
        return int(self) + int(other)

a = Try_int(4)
b = Try_int(6)
print(a + b)                        # 24
print(a * b)                        # 10
