#### String

str1 = 'Hello, World!'
print(str1[:5])             # Hello
print(str1[0])              # H

sc = str1[:7]+'Python '+str1[7:]
print(sc)                   # Hello, Python World!

str2 = 'abcd, efg!'
print(str2.capitalize())    # Abcd, efg!

str2 = 'ABCD, efg!'
print(str2.casefold())      # abcd, efg!
print(str2.upper())         # ABCD, EFG!

str3 = str2.translate(str.maketrans('g','h'))
print(str3)                 # ABCD, efh!

# Please read Python document to get more string operators.
# https://docs.python.org/