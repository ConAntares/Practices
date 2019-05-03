#### Dictionary

import numpy as np

brand = ["Lining","Nike","Adidas","FishC"]
slogan = ["Anything is possible.","Just do it.","Impossible is nothing.","Programming changes the world."]

print(brand[3]+":",slogan[3])
    # FishC: Programming changes the world.

print(brand[3]+":",slogan[brand.index("FishC")])
    # FishC: Programming changes the world.

## Dict

dict1 = {   "Lining":"Anything is possible.",
            "Nike":"Just do it.",
            "Adidas":"Impossible is nothing.",
            "FishC":"Programming changes the world."    }

print(brand[3]+":",dict1["FishC"])
    # FishC: Programming changes the world.

dict2 = {   1:"One",
            2:"Two",
            3:"Three"   }

print(dict2[3])
    # Three

dict_empty = {}  # Empty dic

## Function dic()

"""
help(dic)
"""

dict3 = dict((("C",67),("F",70),("h",104),("i",105),("s",115)))

print(dict3)
    # {'C': 67, 'F': 70, 'h': 104, 'i': 105, 's': 115}

print(dict3["F"])
    # 70

dict4 = dict(   Lining="Anything is possible.",
                Nike="Just do it.",
                Adidas="Impossible is nothing.",
                FishC="Programming changes the world."  )

print(dict4)
    # {'Lining': 'Anything is possible.', 'Nike': 'Just do it.', 'Adidas': 'Impossible is nothing.', 'FishC': 'Programming changes the world.'}

print(dict4["Nike"])
    # Just do it.

print(dict4["FishC"])
    # Programming changes the world.

dict4["FishC"] ="Let programming changes the world."

print(dict4["FishC"])
    # Let programming changes the world.

dict4["Puma"] ="Where finishing is just the beginning."

print(dict4["Puma"])
    # Where finishing is just the beginning.

## Function fromkeys()

dict1 = {}
f1 = dict1.fromkeys((1,2,3))

print(f1)
    # {1: None, 2: None, 3: None}

f2 = dict1.fromkeys((1,2,3),"Positive Integer")

print(f2)
    # {1: 'Positive Integer', 2: 'Positive Integer', 3: 'Positive Integer'}

## Function keys()

dict1 = dict1.fromkeys(np.arange(6),"Nice")

print(dict1)
    # {0: 'Nice', 1: 'Nice', 2: 'Nice', 3: 'Nice', 4: 'Nice', 5: 'Nice'}

for each_key in dict1.keys():
    print(each_key)
    # 0
    # 1
    # 2
    # 3
    # 4
    # 5

## Function values()

for each_value in dict1.values():
    print(each_value)
    # Nice
    # Nice
    # Nice
    # Nice
    # Nice
    # Nice

## Function items()

for each_item in dict1.items():
    print(each_item)
    # (0, 'Nice')
    # (1, 'Nice')
    # (2, 'Nice')
    # (3, 'Nice')
    # (4, 'Nice')
    # (5, 'Nice')

## Function get()

re = dict1.get(6)
print(re)
    # None

re = dict1.get(7,-1)
print(re)
    # -1

print(5 in dict1)
    # True

print(6 in dict1)
    # False

## Function clear()

print(dict1)
    # {0: 'Nice', 1: 'Nice', 2: 'Nice', 3: 'Nice', 4: 'Nice', 5: 'Nice'}

dict1.clear()
print(dict1)
    # {}