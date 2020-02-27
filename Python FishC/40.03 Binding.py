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
print(Bind.__dict__)            # {'__module__': '__main__', 'set_XY': <function Bind.set_XY at 0x000001D49B1152F0>, 'print_XY': <function Bind.print_XY at 0x000001D49B115378>, '__dict__': <attribute '__dict__' of 'Bind' objects>, '__weakref__': <attribute '__weakref__' of 'Bind' objects>, '__doc__': None}

exam.set_XY(4,5)
print(exam.__dict__)            # {'x': 4, 'y': 5}
print(Bind.__dict__)            # {'__module__': '__main__', 'set_XY': <function Bind.set_XY at 0x000001D49B1152F0>, 'print_XY': <function Bind.print_XY at 0x000001D49B115378>, '__dict__': <attribute '__dict__' of 'Bind' objects>, '__weakref__': <attribute '__weakref__' of 'Bind' objects>, '__doc__': None}

del Bind
exam.print_XY()                 # 4 5
