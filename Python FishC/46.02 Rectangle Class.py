#### Rectangle Class

class Rectangle:
    def __init__(self, width = 0, height = 0):
        self.width = width
        self.height = height

    def __setattr__(self,name,value):
        if name == "square":
            self.width = value
            self.height = value
        else:
            super().__setattr__(name,value) # or self.__dict__[name] = value

    def getArea(self):
        return self.width * self.height

r1 = Rectangle(4,5)
re = r1.getArea()
print(re)                   # 20
r1.square = 10
print(r1.height, r1.width)  # 10 10
