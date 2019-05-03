#### Hasattr

## hasattr(object,name)

class C:
    def __init__(self,x=0):
        self.x = x

c = C()
re = hasattr(c,'x')
print(re)               # True