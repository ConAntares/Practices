#### Getattr

## getattr(object, name[, default])

class C:
    def __init__(self,x = 0):
        self.x = x

c = C()
re = getattr(c,'x')
print(re)               # 0
re = getattr(c,'y',"The property you are accessing does not exist.")
print(re)               # The property you are accessing does not exist.
