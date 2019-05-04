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