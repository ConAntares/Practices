#### Property

## property(fget = None, fset = None, fdel = None, doc = None)

class C:
    def __init__(self,size=10):
        self.size = size
    def get_size(self):
        return self.size
    def set_size(self,value):
        self.size = value
    def del_size(self):
        del self.size
    x = property(get_size, set_size, del_size)

c = C()
re = c.get_size()
print(re)               # 10
print(c.x)              # 10

c.x = 16
re = c.get_size()
print(re)               # 16
print(c.x)              # 16

del c.x
re = getattr(c,'x',"The property you are accessing does not exist.")
print(re)               # The property you are accessing does not exist.

