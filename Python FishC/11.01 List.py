#### List

## A list

member = ['Alice','Bob','Celia','David','Ella']

## A list for number

number = [1,2,3,4,5,6.7]

## Mix list

number = ['Alice',1.23,4,[5,6,7]]

## Empty list

empty = []

## Append

member.append('Hina')
print(len(member))                  # 6

## Extend

member.extend(['Ivan','Jack'])
print(member)                       # ['Alice', 'Bob', 'Celia', 'David', 'Ella', 'Hina', 'Ivan', 'Jack']

## Insert

member.insert(0,'Team')
print(member)                       # ['Team', 'Alice', 'Bob', 'Celia', 'David', 'Ella', 'Hina', 'Ivan', 'Jack']

## Index

print(member[1])                    # Alice

## Remove

member.remove('Jack')
print(member)
# ['Team', 'Alice', 'Bob', 'Celia', 'David', 'Ella', 'Hina', 'Ivan']

## Del

del member[7]
print(member)                       # ['Team', 'Alice', 'Bob', 'Celia', 'David', 'Ella', 'Hina']

## Pop

name = member.pop()
print(member)                       # ['Team', 'Alice', 'Bob', 'Celia', 'David', 'Ella']
print(name)                         # Hina

## Slice

print(member[1:3])                  # ['Alice', 'Bob']
print(member[:3])                   # ['Team', 'Alice', 'Bob']
print(member[2:])                   # ['Bob', 'Celia', 'David', 'Ella']
print(member[:])                    # ['Team', 'Alice', 'Bob', 'Celia', 'David', 'Ella']

## Operator

list1 = [123]
list2 = [234]
print(list2 > list1)                # True

list1 = [1,4]
list2 = [2,3]
print(list2 > list1)                # True
print(list2 < list1)                # False

list3 = [1,3]
list4 = list1 + list2
print(list4)                        # [1, 4, 2, 3]
print(list3 * 3)                    # [1, 3, 1, 3, 1, 3]

print(1 in list1)                   # True
print(1 not in list1)               # False

list5 = [1,2,3,[4,5,6]]
print(4 in list5)                   # False
print(4 in list5[3])                # True
print(list5[3][2])                  # 6

## BIF for List
'''
dir(list)
'''

## Count

list6 = [1,2,3,2,3,1,3,1,2,[1,2,3]]
c = list6.count(1)
print(c)                            # 3

## Index

print(list6.index(1))               # 0
print(list6.index(1,1,8))           # 5

## Reverse

print(list6.reverse())

### Sort

list7 = [4,0,1,7,2,6]
print(list7.sort())
print(list7.sort(reverse=True))