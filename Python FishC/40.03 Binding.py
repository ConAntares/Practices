#### Binding

"""
self
"""

class Bind:
    def set_XY(self, x, y):
        self.x = x
        self.y = y
    def print_XY(self):
        print(self.x, self.y)

exam = Bind()
print(exam.__dict__)            # {}
print(Bind.__dict__)            # {'__module__': '__main__', 'set_bind': <function Bind.set_bind at 0x0000017E89B552F0>, 'print_bind': <function Bind.print_bind at 0x0000017E89B55378>, '__dict__': <attribute '__dict__' of 'Bind' objects>, '__weakref__': <attribute '__weakref__' of 'Bind' objects>, '__doc__': None}
exam.set_XY(4,5)
print(exam.__dict__)            # {'x': 4, 'y': 5}