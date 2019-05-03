#### Assignment and Copy

a = {   1: "Category 1",
        2: "Category 2",
        3: "Category 3",
        4: "Category 4",
        5: "Category 5",    }

# Copy

b = a.copy
print(b)
    # <built-in method copy of dict object at 0x0000022D13478750>

# Assignment

c = a
print(c)
    # {1: 'Category 1', 2: 'Category 2', 3: 'Category 3', 4: 'Category 4', 5: 'Category 5'}

print(id(a))
    # 1713683924816
print(id(b))
    # 1892672207824
print(id(c))
    # 1892669556560

print(a.pop(2))
    # Category 2
print(a.popitem())
    # (5, 'Category 5')

a.setdefault(6)
print(a)
    # {1: 'Category 1', 3: 'Category 3', 4: 'Category 4', 6: None}

a[6] = "Category 6"
print(a)
    # {1: 'Category 1', 3: 'Category 3', 4: 'Category 4', 6: 'Category 6'}

a.setdefault(7, "Category 7")
print(a)
    # {1: 'Category 1', 3: 'Category 3', 4: 'Category 4', 6: 'Category 6', 7: 'Category 7'}

b = {8: "Category 8", 9: "Category 9"}
a.update(b)
print(a)
    # {1: 'Category 1', 3: 'Category 3', 4: 'Category 4', 6: 'Category 6', 7: 'Category 7', 8: 'Category 8', 9: 'Category 9'}
