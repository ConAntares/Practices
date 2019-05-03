#### Setattr

## setattr(object,name,value)

class C:
    def __init__(self,x=0):
        self.x = x

c = C()
st = setattr(c,'y',"FishC")
re = hasattr(c,'y')
print(re)           # True