#### Generator


## List

a = [i for i in range(100) if (i % 2)]
b = [i for i in range(100) if (i % 2 == 1)]
print(a)
print(b)
print(a==b)
    # True

## Dict

b = {i:i % 2 == 0 for i in range(10)}
print(b)
    # {0: True, 1: False, 2: True, 3: False, 4: True, 5: False, 6: True, 7: False, 8: True, 9: False}


