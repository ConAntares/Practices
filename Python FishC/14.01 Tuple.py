#### Tuple

tuple1 = (1,2,3,4,5,6,7,8)
print(tuple1)                   # (1, 2, 3, 4, 5, 6, 7, 8)
print(tuple1[3])                # 4
print(tuple1[:])                # (1, 2, 3, 4, 5, 6, 7, 8)
print(tuple1[3:5])              # (4, 5)

## Single Tuple

ts = (1,)
print(ts)                       # (1,)
print(type(ts))                 # <class 'tuple'>

## Empty Tuple

te = ()

## Operator

print(4*(1,2))                  # (1, 2, 1, 2, 1, 2, 1, 2)

## Update Tuple

temp = ('a','e','j','k')
temp = temp[:2] + ('g',) + temp[2:]
print(temp)                     # ('a', 'e', 'g', 'j', 'k')

