#### Delattr

## delattr(object,name)

class C:
    def __init__(self,x=0):
        self.x = x

c = C()
setattr(c,'y',"FishC")
delattr(c,'y')
re = getattr(c,'y',"The property you are accessing does not exist.")
print(re)               # The property you are accessing does not exist.