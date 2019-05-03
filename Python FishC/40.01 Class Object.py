#### Class Object

class C:
    count = 0

a = C()
b = C()
c = C()
print(c.count)      # 0

c.count += 10
print(c.count)      # 10
print(a.count)      # 0


