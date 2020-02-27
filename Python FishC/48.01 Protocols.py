#### Protocols

## A Immutable Protocol Needs Magic Methods:
"""
__len__()__
__getitem__()
"""

## A Changeable  Protocol Needs Magic Methods:
"""
__len__()
__getitem__()
__setitem__()
__delitem__()
"""

# A Immutable List
class CountList():
    def __init__(self, *args):
        self.values = [x for x in args]
        self.count  = {}.fromkeys(range(len(self.values)),0)
    def __len__(self):
        return len(self.values)
    def __getitem__(self, key):
        self.count[key] += 1
        return self.values[key]

c1 = CountList(1,3,5,7,9)
c1[3]
c2 = CountList(0,2,4,6,8)
print(c1.count)
    # {0: 0, 1: 0, 2: 0, 3: 1, 4: 0}