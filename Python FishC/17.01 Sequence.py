### Sequence

# list()

# tuple()

# str()

# len()

# max()

# min()

# sum()

# sorted()

number = [1,-6,4,-3,2,-1,9,-5]
s = sorted(number)
print(s)                        # [-6, -5, -3, -1, 1, 2, 4, 9]

# reversed()

r = reversed(s)
print(r)                        # <list_reverseiterator object at 0x0000022A290A0EF0>
lr = list(r)
print(lr)                       # [9, 4, 2, 1, -1, -3, -5, -6]

# enumerate()

e = enumerate(number)
le = list(e)
print(le)                       # [(0, 1), (1, -6), (2, 4), (3, -3), (4, 2), (5, -1), (6, 9), (7, -5)]

# zip()

a = [1,2,3,4,5,6,7,8]
b = [4,5,6,7,8]
z = zip(a,b)
lz = list(z)
print(lz)                       # [(1, 4), (2, 5), (3, 6), (4, 7), (5, 8)]