#### Init

## __init__(self[, ...])

class Rectangle:
    def __init__(self,x,y):
        self.x = x
        self.y = y
    def get_peri(self):
        return (self.x + self.y) * 2
    def get_area(self):
        return self.x * self.y

rec = Rectangle(3,4)
print(rec.get_peri())       # 14
print(rec.get_area())       # 12