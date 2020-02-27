#### Ternary Operator

x = 3
y = 4

# Traditional Method
if x <= y:
    small = x
elif x > y:
    small = y

# Using Ternary Operator
small = x if x <= y else y

print(small)