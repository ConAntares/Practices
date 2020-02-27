#### Set

num1 = {}
print(type(num1))
    # <class 'dict'>

num2 = {1,2,3,4,5,1,2}
print(num2)
    # {1, 2, 3, 4, 5}

set1 = set([1,2,3,4,5,1,2])
print(set1)
    # {1, 2, 3, 4, 5}
print(type(set1))
    # <class 'set'>

temp = [1,6,4,3,6,2,1,9,5]
se   = set(temp)
re   = list(set(temp))
print(re)
    # [1, 2, 3, 4, 5, 6, 9]
print(se)
    # {1, 2, 3, 4, 5, 6, 9}

re.append(8)
print(re)
    # [1, 2, 3, 4, 5, 6, 9, 8]
re.insert(0,10)
print(re)
    # [10,1, 2, 3, 4, 5, 6, 9, 8]
re.pop(0)
print(re)
    # [1, 2, 3, 4, 5, 6, 9, 8]

se.add(8)
print(se)
    # {1, 2, 3, 4, 5, 6, 8, 9}
se.remove(8)
print(se)
    # {1, 2, 3, 4, 5, 6, 9}
se.pop()
print(se)
    # {2, 3, 4, 5, 6, 9}

D = {'a':'A','b':'B','c':'C','d':'D'}
print(D)
    # {'a': 'A', 'b': 'B', 'c': 'C', 'd': 'D'}
del D['d']
print(D)
    # {'a': 'A', 'b': 'B', 'c': 'C'}
D.pop('c')
print(D)
    # {'a': 'A', 'b': 'B'}
D['e'] = 'E'
print(D)
    # {'a': 'A', 'b': 'B', 'e': 'E'}

## Frozen Set
fs = frozenset([0,5,1,2])