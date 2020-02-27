#### Property

"""
__getattr__(self,name)
__getattribute__(self,name)
__setattr__(self,name,value)
__delattr__(self,name)
"""

class C:
    def __getattribute__(self,name):
        print("getattribute")
        return super().__getattribute__(name)
    def __getattr__(self,name):
        print("getattr")
    def __setattr__(self,name,value):
        print("setattr")
        super().__setattr__(name,value)
    def __delattr__(self,name):
        print("delattr")
        super().__delattr__(name)

c = C()
c.x
    # getattribute
    # getattr
c.x = 1
    # setattr
c.x
    # getattribute
del c.x
    # delattr