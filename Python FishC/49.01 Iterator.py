#### Iterator

## Iteration
for i in "0123":
    print(i)

links = {"a":"Hello, World!", "b":"Hello, Programming!", "c":"Hello, Python!"}
for each in links:
    print("%s -> %s" % (each, links[each]))

## Iterator BIF
"""
iter()
next()
"""

st = "Hello, World!"
it = iter(st)
print(next(it))
print(next(it))
print(next(it))
print(next(it))
print(next(it))

st = "Hello, World!"
it = iter(st)
while True:
    try:
        each = next(it)
    except StopIteration:
        break
    print(each)

## Iterator Magic Methods
"""
__iter__()
__next__()
"""

upLim = 10

class Fibs:
    def __init__(self):
        self.a = 0
        self.b = 1
        self.n = upLim
    def __iter__(self):
        return self
    def __next__(self):
        self.i = self.a
        self.a = self.b
        self.b = self.i + self.b
        if self.a > self.n:
            raise StopIteration
        return self.a

fibs = Fibs()
for each in fibs:
    print(each)

